#!/usr/bin/env python3

import yaml
import os
import pathlib
import argparse
import logging
from machine import Machine
from matrix import Matrix
import cmd


class ESMFTest:

    def __init__(self, test_root, machine_name, yaml_file, dry_run, no_submit, no_artifacts, filter, only_resubmit):

        self.scripts_path = pathlib.Path(__file__).parent.absolute()
        logging.debug(f"Scripts path: {self.scripts_path}")

        if yaml_file is not None:
            self.yaml_file = os.path.abspath(yaml_file)
        else:
            self.yaml_file = os.path.join(self.scripts_path.parent, f"config/{machine_name}.yaml")
        if not os.path.isfile(self.yaml_file):
            logging.error(f"YAML file not found: {self.yaml_file}")
            return
        logging.debug(f"Config file: {self.yaml_file}")

        if not os.path.isdir(test_root):
            logging.error(f"Directory not found: {test_root}\nTesting root should be an existing directory.")
            return
        self.test_root = os.path.abspath(test_root)
        logging.debug(f"Test root: {self.test_root}")

        self.artifacts_root = os.path.abspath(os.path.join(self.test_root, "esmf-test-artifacts"))
        logging.debug(f"Artifacts root: {self.artifacts_root}")

        self.dry_run = dry_run
        self.no_submit = no_submit
        self.only_resubmit = only_resubmit
        self.reclone = False
        self.bopts = ["O", "g"]

        cmd.set_dry_run(dry_run)

        # load machine configuration from YAML
        with open(self.yaml_file) as file:
            _yaml = yaml.load(file, Loader=yaml.SafeLoader)
            self.machine = Machine(_yaml["machine"])
            if self.machine.name != machine_name:
                raise RuntimeError("Machine name in YAML must match machine name passed as command line argument.")
                return
            self.matrix = Matrix(_yaml["matrix"], bopts=self.bopts, module_path=self.machine.module_path)
            if "test" not in _yaml:
                raise RuntimeError("YAML must have a 'test' section.")
            self.esmf_branch = _yaml["test"]["esmf_branch"]
            self.nuopc_branch = _yaml["test"].get("nuopc_branch", None)
            self.yaml_filter = _yaml["test"].get("filter", None)

        # load global settings from YAML
        global_file = os.path.join(self.scripts_path.parent, "config/global.yaml")
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
        self.clone_repo(self.repos["artifacts"], local_name="esmf-test-artifacts")

        cmd.chdir("esmf-test-artifacts")
        o = cmd.runcmd("git status")
        if "Your branch is up to date" in o:
            logging.info("...PASS")
        cmd.chdir("..")

        logging.info("Check: Can I clone ESMF repo?")
        self.clone_repo(self.repos["esmf"], local_name="esmf")
        cmd.chdir("esmf")
        o = self.cmd.runcmd("git status")
        if "Your branch is up to date" in o:
            logging.info("...PASS")
        cmd.chdir("..")

        cmd.chdir("..")
        cmd.runcmd("rm -rf .check")
        logging.info("Checks complete")

    def reclone_artifacts(self):
        url = self.repos["artifacts"]
        logging.info(f"Deleting and re-cloning artifacts repository: {url}")
        cmd.chdir(self.test_root)
        cmd.clone_repo(url, local_name="esmf-test-artifacts")
        cmd.chdir("esmf-test-artifacts")

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

    # def createGetResScripts(self, monitor_cmd_build, monitor_cmd_test):
    #     # write these out no matter what, so we can run them manually, if necessary
    #     get_res_file = open("getres-build.sh", "w")
    #     get_res_file.write("#!{} -l\n".format(self.bash))
    #     get_res_file.write("{} >& build-res.log &\n".format(monitor_cmd_build))
    #     get_res_file.close()
    #     cmd.runcmd("chmod +x getres-build.sh")
    #
    #     get_res_file = open("getres-test.sh", "w")
    #     get_res_file.write("#!{} -l\n".format(self.bash))
    #     get_res_file.write("{} >& test-res.log &\n".format(monitor_cmd_test))
    #     get_res_file.close()
    #     cmd.runcmd("chmod +x getres-test.sh")

    def start(self):
        if self.reclone:
            self.reclone_artifacts()

        for _e_index, _e in enumerate(self.matrix.environments, start=1):
            for _branch_index, _esmf_branch in enumerate(self.esmf_branch):

                # apply filter from command line --filter option
                if self.filter is not None:
                    if _e_index not in self.filter:
                        logging.debug(f"Skipping test environment [{_e_index}] due to command line filter: {_e.label()}")
                        continue

                # apply filter from YAML file
                if self.yaml_filter is not None:
                    if "compiler" in self.yaml_filter:
                        if _e.compiler not in self.yaml_filter["compiler"]:
                            logging.debug(f"Skipping test environment [{_e_index}] due to YAML filter: {_e.label()}")
                            continue

                if self.nuopc_branch is not None:
                    _nuopc_branch = self.nuopc_branch[_branch_index]
                else:
                    _nuopc_branch = _esmf_branch

                # generate, set up, and submit the test combination
                logging.info(f"Setting up test case: [{_e.label()}] / ESMF branch: [{_esmf_branch}]")
                case = _e.generate_case(self.test_root, self.repos, _esmf_branch, _nuopc_branch, self.machine.scheduler)

                if not self.only_resubmit:
                    case.set_up()
                else:
                    logging.info(f"\t---> Resubmitting existing case")
                if not self.no_submit:
                    case.submit(no_artifacts=self.no_artifacts)


def go(args):
    """
    Entry point to run the test system.
    """
    test = ESMFTest(args["root"], args["machine"], args["yaml"],
                    args["dry_run"], args["no_submit"], args["no_artifacts"], args["filter"], args["only_resubmit"])

    if args["check"]:
        test.check()
        return

    if args["show_machine"]:
        test.machine.print()
        return

    if args["show_matrix"]:
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
    parser.add_argument('-d', '--dry-run', help='Show commands without actually running them', required=False,
                        action='store_true')
    parser.add_argument('--check', help='Run some checks', required=False, action='store_true')
    parser.add_argument('--debug', help='Output debug messages', required=False, action='store_true')
    parser.add_argument('--show-machine', help='Print out machine attributes and exit',
                        required=False,
                        action='store_true')
    parser.add_argument('--show-matrix', help='Print out the test matrix (set of configurations) and exit',
                        required=False,
                        action='store_true')
    parser.add_argument('--no-submit', help="Create test directories and batch scripts but do not submit any jobs",
                        required=False, action='store_true')
    parser.add_argument('--only-resubmit', help="Assume test directories and scripts are already present and only resubmit build/test jobs",
                        required=False, action='store_true')
    parser.add_argument('--no-artifacts', help="Do not copy or push test artifacts.",
                        required=False, action='store_true')
    parser.add_argument('--filter',
                        help="""
                              Limit cases to test from the test matrix.  Use --show-matrix to get a list of cases.
                              The format is a comma separated list, e.g. --filter 1,5,6,11 
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
