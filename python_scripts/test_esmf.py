#!/usr/bin/env python3
from datetime import datetime
import subprocess
import threading
import yaml
import os
import pathlib
import argparse
import logging
import time
from machine import Machine
from matrix import Matrix
from case import Case
import cmd


class ESMFTest:

    def __init__(self, test_root, machine_name, yaml_file, branch, no_submit, no_artifacts, filter, only_resubmit, throttle):

        self.scripts_root = pathlib.Path(__file__).parent.absolute()
        logging.debug(f"Scripts path: {self.scripts_root}")

        if yaml_file is not None:
            self.yaml_file = os.path.abspath(yaml_file)
        else:
            self.yaml_file = os.path.join(self.scripts_root.parent, f"config/{machine_name}.yaml")

        if not os.path.isfile(self.yaml_file):
            raise RuntimeError(f"YAML file not found: {self.yaml_file}")
        logging.debug(f"Config file: {self.yaml_file}")

        if not os.path.isdir(test_root):
            raise RuntimeError(f"Directory not found: {test_root}\nTesting root should be an existing directory.")

        self.test_root = os.path.abspath(test_root)
        logging.debug(f"Test root: {self.test_root}")

        self.artifacts_root = os.path.abspath(os.path.join(self.test_root, "esmf-test-artifacts"))
        logging.debug(f"Artifacts root: {self.artifacts_root}")

        self.no_submit = no_submit
        self.only_resubmit = only_resubmit
        self.reclone = False
        self.retries = 3   # how many times to retry setting up a test case
        self.throttle = 999
        if throttle is not None:
            self.throttle = int(throttle)
            logging.debug(f"Throttling max number of active cases to: {self.throttle}")

        # load machine configuration from YAML
        with open(self.yaml_file) as file:
            _yaml = yaml.load(file, Loader=yaml.SafeLoader)
            self.machine = Machine(_yaml["machine"])
            if self.machine.name != machine_name:
                raise RuntimeError("Machine name in YAML must match machine name passed as command line argument.")
                return
            self.matrix = Matrix(_yaml["matrix"], module_path=self.machine.module_path)
            if "test" not in _yaml:
                raise RuntimeError("YAML must have a 'test' section.")
            self.esmf_branch = _yaml["test"]["esmf_branch"]
            self.nuopc_branch = _yaml["test"].get("nuopc_branch", None)
            self.yaml_filter = _yaml["test"].get("filter", None)

        if branch is not None:
            self.esmf_branch = [b.strip() for b in branch.split(",")]
            logging.debug(f"Using branches from command line: {self.esmf_branch}")

        # load global settings sfrom YAML
        global_file = os.path.join(self.scripts_root.parent, "config/global.yaml")
        with open(global_file) as file:
            _yaml = yaml.load(file, Loader=yaml.SafeLoader)
            if "reclone-artifacts" in _yaml:
                self.reclone = _yaml['reclone-artifacts']
            self.repos = {}
            _repos = _yaml["repos"]
            if self.machine.git_https:
                self.repos["artifacts"] = _repos["artifacts"]["https"]
                self.repos["esmf"] = _repos["esmf"]["https"]
                self.repos["nuopc"] = _repos["nuopc"]["https"]
            else:
                self.repos["artifacts"] = _repos["artifacts"]["git"]
                self.repos["esmf"] = _repos["esmf"]["git"]
                self.repos["nuopc"] = _repos["nuopc"]["git"]

        self.filter = None
        if filter is not None:
            logging.debug(f"Filter applied to test matrix: {filter}")
            self.filter = []
            try:
                for _n in filter.split(","):
                    self.filter.append(int(_n.strip()))
            except ValueError:
                raise RuntimeError("Invalid format for --filter argument.")
                return

        self.no_artifacts = no_artifacts
        if no_artifacts:
            logging.debug("Test artifacts will NOT be copied or pushed")

    def check(self):
        """
        Run some local checks to make sure configuration is working.
        """
        logging.info("Running checks")
        cmd.chdir(f"{self.test_root}")
        cmd.runcmd(f"mkdir -p .check")
        cmd.chdir(".check")

        logging.info("Check: Can I clone artifacts repo?")
        cmd.clone_repo(self.repos["artifacts"], local_name="esmf-test-artifacts")

        cmd.chdir("esmf-test-artifacts")
        o = cmd.runcmd("git status")
        if "Your branch is up to date" in o:
            logging.info("...PASS")

        logging.info("Check:  Can I push to artifacts repo?")
        cmd.runcmd(f"echo '{datetime.now().strftime('%b %d %Y %H:%M:%S')}' > .ignore")
        cmd.runcmd("git add .ignore")
        cmd.runcmd("git commit .ignore -m 'this commit used only for testing'")
        o = cmd.runcmd("git push", stderr=True)
        if "main -> main" in o:
            logging.info(f"...PASS")

        cmd.chdir("..")

        logging.info("Check: Can I clone ESMF repo?")
        cmd.clone_repo(self.repos["esmf"], branch="develop", local_name="esmf")
        cmd.chdir("esmf")
        o = cmd.runcmd("git status")
        if "Your branch is up to date" in o:
            logging.info("...PASS")
        cmd.chdir("..")

        logging.info("Check:  Can I submit a job to the batch system?")
        _batch_file = os.path.join(self.test_root, "batch_test.bat")
        with open(_batch_file, "w") as _file:
            _file.write(self.machine.scheduler.create_headers(script_file=_batch_file, timeout="10:00"))
            _file.write("\n")
            _file.write(f"cd {self.test_root}\n")
            _file.write(f"echo 'please ignore me - just a test'\n")
        _jobid = self.machine.scheduler.submit_job(_batch_file)
        if int(_jobid) >= 0:
            logging.info("...PASS")

        cmd.chdir("..")
        cmd.runcmd("rm -rf .check")
        logging.info("Checks complete")

    def reclone_artifacts(self):
        url = self.repos["artifacts"]
        logging.info(f"Deleting and re-cloning artifacts repository: {url}")
        cmd.chdir(self.test_root)
        cmd.clone_repo(url, local_name="esmf-test-artifacts")
        cmd.chdir("esmf-test-artifacts")
        cmd.runcmd(f'git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"')
        cmd.runcmd(f"git fetch origin")

        branch_list = cmd.runcmd('git branch -a')
        logging.debug(f"Remote branches:\n{branch_list}")

        if f"remotes/origin/{self.machine.name}" in branch_list:
            logging.info(f"Tracking existing remote branch {self.machine.name}")
            cmd.runcmd(f"git checkout -b {self.machine.name} -t origin/{self.machine.name}")
        else:
            logging.info(f"Remote branch {self.machine.name} not found.  Creating new branch.")
            cmd.runcmd(f"git checkout -b {self.machine.name}")
            cmd.runcmd(f"git push --set-upstream origin {self.machine.name}")
        cmd.chdir("..")

    def start(self):
        if self.reclone:
            self.reclone_artifacts()

        if not self.no_artifacts and not os.path.isdir(self.artifacts_root):
            raise RuntimeError(f"No test artifacts repo found at {self.artifacts_root}.")

        lock = threading.Lock()
        active_cases = []

        # will be run in a thread to monitor and remove completed test cases
        def _remove_completed_cases():
            logging.debug(f"Start thread to monitor completed cases")
            while True:
                lock.acquire(blocking=True)
                for _case in active_cases:
                    if _case.finished():
                        logging.debug(f"Removing completed case: {_case.label()}")
                        active_cases.remove(_case)
                lock.release()
                time.sleep(60)

        # add a case to the active list of cases, if we are under the throttle limit
        def _submit_case(_case: Case):
            while True:
                lock.acquire(blocking=True)
                if len(active_cases) < self.throttle:
                    _case.submit(no_artifacts=self.no_artifacts)
                    logging.info(f"Submitted case: {_case.label()}")
                    active_cases.append(_case)
                    lock.release()
                    break
                else:
                    lock.release()
                    time.sleep(10)

        case_list = []
        for _e_index, _e in enumerate(self.matrix.combinations, start=1):
            for _branch_index, _esmf_branch in enumerate(self.esmf_branch):

                # apply filter from command line --filter option
                if self.filter is not None:
                    if _e_index not in self.filter:
                        logging.debug(
                            f"Skipping test combination [{_e_index}] due to command line filter: {_e.label()}")
                        continue

                # apply filter from YAML file
                if self.yaml_filter is not None:
                    execCompiler=True
                    if "compiler" in self.yaml_filter:
                        execCompiler=False
                        if _e.compiler in self.yaml_filter["compiler"]:
                            logging.debug(f"Executing test combination [{_e_index}] due to YAML compiler filter: {_e.label()}")
                            execCompiler=True
                    execVersion=True
                    if "version" in self.yaml_filter:
                        execVersion=False
                        if _e.compiler_version in self.yaml_filter["version"]:
                            logging.debug(f"Executing test combination [{_e_index}] due to YAML version filter: {_e.label()}")
                            execVersion=True
                    execMPI=True
                    if "mpi" in self.yaml_filter:
                        execMPI=False
                        if _e.mpi in self.yaml_filter["mpi"]:
                            logging.debug(f"Executing test combination [{_e_index}] due to YAML mpi filter: {_e.label()}")
                            execMPI=True
                    if not (execCompiler and execVersion and execMPI):
                        continue

                if self.nuopc_branch is not None:
                    _nuopc_branch = self.nuopc_branch[_branch_index]
                else:
                    # Previously, this was defaulted to _esmf_branch, but in most cases
                    # a separate nuopc-app-prototype branch is not required, so we will
                    # default to "develop" and will only change if explicitly listed in the YAML
                    _nuopc_branch = "develop"

                # generate, set up, and submit the test combination
                case = Case(_e, self.scripts_root, self.test_root, self.artifacts_root, self.repos,
                            _esmf_branch, _nuopc_branch, self.machine)

                case_list.append(case)
                if not self.only_resubmit:
                    logging.info(f"Setting up test case: {case.label()}")
                    for i in range(self.retries):
                        try:
                            case.set_up()
                            break
                        except subprocess.CalledProcessError as cpe:
                            logging.error(f"Error setting up case {cpe}.  Retry attempt {i}.")

        if not self.no_submit:
            # start thread to listen for completed cases
            _rthread = threading.Thread(target=_remove_completed_cases, daemon=True)
            _rthread.start()
            for _c in case_list:
                logging.debug(f"Submitting case: {_c.label()}")
                _submit_case(_c)  # may bock
                logging.debug(f"Done submitting case: {_c.label()}")

        if self.machine.wait_to_collect:
            # this machine requires that the parent process waits for result collection processes
            for _c in case_list:
                logging.info(f"Waiting for collect_build_process for case: {_c.label()}")
                _c.collect_build_process.wait()
            for _c in case_list:
                logging.info(f"Waiting for collect_test_process for case: {_c.label()}")
                _c.collect_test_process.wait()

def go(args):
    """
    Entry point to run the test system.
    """
    test = ESMFTest(args["root"], args["machine"], args["yaml"], args["branch"],
                    args["no_submit"], args["no_artifacts"], args["filter"], args["only_resubmit"], args["throttle"])

    if args["check"]:
        test.check()
        return

    if args["show_machine"]:
        test.machine.print()
        return

    if args["list"]:
        test.matrix.print()
        return

    test.start()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='A tool to facilitate automated and manual testing of ESMF')
    parser.add_argument('-r', '--root', help='Root directory to use for testing (scratch space)', required=True)
    parser.add_argument('-m', '--machine',
                        help="Name of this machine. Used to find a config YAML file under ./configs/<machine>.yaml",
                        required=False)
    parser.add_argument('-y', '--yaml', help='Explicit path to YAML config file.  Overrides --machine if present.',
                        required=False)
    parser.add_argument('--check', help='Run some checks', required=False, action='store_true')
    parser.add_argument('--debug', help='Output debug messages', required=False, action='store_true')
    parser.add_argument('--show-machine', help='Print out machine attributes and exit',
                        required=False,
                        action='store_true')
    parser.add_argument('-l', '--list', help='List the test combinations in the YAML for this machine and exit',
                        required=False,
                        action='store_true')
    parser.add_argument('--branch', help="""
                                Ignore branches in the YAML and use these branches instead.
                                Accepts a comma separated list, e.g., --branch develop,feature/X,fork:feature_Z
                                """,
                        required=False)
    parser.add_argument('--no-submit', help="Create test directories and batch scripts but do not submit any jobs",
                        required=False, action='store_true')
    parser.add_argument('--only-resubmit',
                        help="Assume test directories and scripts are already present and only resubmit build/test jobs",
                        required=False, action='store_true')
    parser.add_argument('--no-artifacts', help="Do not copy or push test artifacts.",
                        required=False, action='store_true')
    parser.add_argument('--filter',
                        help="""
                              Limit combinations to test.  Use -l (or --list) to get a list of combinations with indexes.
                              The format is a comma separated list, e.g. --filter 1,5,6,11 will only include combinations
                              1, 5, 6, and 11 in the testing.
                             """,
                        required=False)
    parser.add_argument('--throttle', metavar='N',
                        help="""
                             Limit the number of maximum number of active tests cases submitted to N.
                             This option is provided to limit CPU intensity on login nodes.  The script will block 
                             until all jobs have been submitted.  The default is no throttling (all cases submitted).
                             """,
                        required=False)

    args = vars(parser.parse_args())

    if args["machine"] is None and args["yaml"] is None:
        logging.error("Either --machine or --yaml must be specified")
        exit(1)

    _log_level = logging.INFO
    if args["debug"]:
        _log_level = logging.DEBUG
    logging.basicConfig(format='%(levelname)s: %(message)s', level=_log_level)

    go(args)
