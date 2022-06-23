#!/usr/bin/env python3

import yaml
import os
import pathlib
import argparse
import logging
from machine import Machine
from matrix import Matrix
from cmd import CMD

logging.basicConfig(format='%(levelname)s: %(message)s', level=logging.DEBUG)


class ESMFTest:

    def __init__(self, test_root, machine_name, yaml_file, dry_run, no_submit, no_artifacts, filter):

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
        self.reclone = False
        self.bopts = ["O", "g"]

        self.cmd = CMD(dry_run)

        # load machine configuration from YAML
        with open(self.yaml_file) as file:
            _yaml = yaml.load(file, Loader=yaml.SafeLoader)
            self.machine = Machine(_yaml["machine"])
            if self.machine.name != machine_name:
                raise Exception("Machine name in YAML must match machine name passed as command line argument.")
                return
            self.matrix = Matrix(_yaml["matrix"], bopts=self.bopts)
            self.branch = _yaml["branch"]
            self.nuopc_branch = _yaml.get("nuopc_branch", None)

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

        self.filter = filter
        if filter is not None:
            logging.debug(f"Filter applied to test matrix: {filter}")

        self.no_artifacts = no_artifacts
        if no_artifacts:
            logging.debug("Test artifacts will NOT be copied or pushed")

    def check(self):
        """
        Run some local checks to make sure configuration is working.
        """
        logging.info("Running checks")
        self.cmd.chdir(f"{self.test_root}")
        self.cmd.runcmd(f"mkdir -p .check")
        self.cmd.chdir(".check")

        logging.info("Check: Can I clone artifacts repo?")
        self.clone_repo(self.repos["artifacts"], localname="esmf-test-artifacts")

        self.cmd.chdir("esmf-test-artifacts")
        o = self.cmd.runcmd("git status")
        if "Your branch is up to date" in o:
            logging.info("...PASS")
        self.cmd.chdir("..")

        logging.info("Check: Can I clone ESMF repo?")
        self.clone_repo(self.repos["esmf"], localname="esmf")
        self.cmd.chdir("esmf")
        o = self.cmd.runcmd("git status")
        if "Your branch is up to date" in o:
            logging.info("...PASS")
        self.cmd.chdir("..")

        self.cmd.chdir("..")
        self.cmd.runcmd("rm -rf .check")
        logging.info("Checks complete")

    def reclone_artifacts(self):
        url = self.repos["artifacts"]
        logging.info(f"Deleting and re-cloning artifacts repository: {url}")
        self.cmd.clone_repo(url, localname="esmf-test-artifacts")
        self.cmd.chdir("esmf-test-artifacts")

        branch_list = self.cmd.runcmd('git branch -a')
        logging.debug(f"Remote branches:\n{branch_list}")

        if f"remotes/origin/{self.machine.name}" in branch_list:
            logging.info(f"Tracking existing remote branch {self.machine.name}")
            self.cmd.runcmd(f"git checkout -b {self.machine.name} -t origin/{self.machine.name}")
        else:
            logging.info(f"Remote branch {self.machine.name} not found.  Creating new branch.")
            self.cmd.runcmd(f"git checkout -b {self.machine.name}")
            self.cmd.runcmd(f"git push --set-upstream origin {self.machine.name}")
        self.cmd.chdir("..")

    def createScripts(self, config):

        #    headerList = ["build", "test", "python"]

        headerList = ["build", "test"]
        for headerType in headerList:
            if headerType == "build":
                file_out = self.fb
            elif headerType == "test":
                file_out = self.ft
            else:
                raise Exception("Unknown header type")
            # else:
            #    pythonscript = open("runpython.sh", "w")
            #    file_out = pythonscript
            #    file_out.write("#!{} -l\n".format(self.bash))
            #    file_out.write("cd {}\n".format(os.getcwd()))
            #    file_out.write("export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n\n")
            #    file_out.write("cd {}/src/addon/ESMPy\n".format(os.getcwd()))

            if "unload_module" in config:
                file_out.write("\nmodule unload {}\n".format(config['unload_module']))
            if "modulepath" in self.yaml:
                modulepath = self.yaml['modulepath']
                file_out.write("\nmodule use {}\n".format(modulepath))
            if "extra_module" in config:
                file_out.write("\nmodule load {}\n".format(config['extra_module']))

            if config['mpi_module'] == "None":
                # mpiflavor['module'] = ""
                cmdstring = "export ESMF_MPIRUN={}/src/Infrastructure/stubs/mpiuni/mpirun\n".format(os.getcwd())
                file_out.write(cmdstring)

            if "mpi_env_vars" in config:
                for mpi_var in config["mpi_env_vars"]:
                    file_out.write("export {}\n".format(config['mpi_env_vars'][mpi_var]))

            if config["netcdf_module"] == "None":
                modulecmd = "module load {} {} \n\n".format(config["compiler_module"], config['mpi_module'])
                esmfnetcdf = "\n"
                file_out.write(modulecmd)
            else:
                modulecmd = "module load {} {} {}\n".format(config["compiler_module"],
                                                            config['mpi_module'], config["netcdf_module"])

                esmfnetcdf = "export ESMF_NETCDF=nc-config\n\n"
                file_out.write(modulecmd)

            if "hdf5_module" in config:
                modulecmd = "module load {} \n".format(config["hdf5_module"])
                file_out.write(modulecmd)
            if "netcdf-fortran_module" in config:
                modulecmd = "module load {} \n".format(config['netcdf-fortran_module'])
                file_out.write(modulecmd)

            if headerType == "build":
                file_out.write("module list >& module-build.log\n\n")
            elif headerType == "test":
                file_out.write("module list >& module-test.log\n\n")

            file_out.write("set -x\n")
            file_out.write(esmfnetcdf)

            if "extra_env_vars" in config:
                for var in config["extra_env_vars"]:
                    file_out.write("export {}\n".format(config["extra_env_vars"][var]))

            if "extra_commands" in config:
                for cmd in config["extra_commands"]:
                    file_out.write("{}\n".format(config['extra_commands'][cmd]))

            cmdstring = "export ESMF_DIR={}\n".format(os.getcwd())
            file_out.write(cmdstring)

            cmdstring = "export ESMF_COMPILER={}\n".format(config["compiler"])
            file_out.write(cmdstring)

            cmdstring = "export ESMF_COMM={}\n".format(config["mpi"])
            file_out.write(cmdstring)

            cmdstring = "export ESMF_BOPT='{}'\n".format(config["bopt"])
            file_out.write(cmdstring)

            cmdstring = "export ESMF_TESTEXHAUSTIVE='ON'\n"
            file_out.write(cmdstring)

            cmdstring = "export ESMF_TESTWITHTHREADS='ON'\n"
            file_out.write(cmdstring)

            if headerType == "build":
                cmdstring = "make -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn)
                file_out.write(cmdstring)
            elif headerType == "test":
                cmdstring = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \n"
                file_out.write(cmdstring)
                #       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))
                cmdstring = "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n"
                file_out.write(cmdstring)
                if config["mpi_module"] != "None":
                    # chmod +x runpython.sh\n
                    cmdstring = "cd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
                    file_out.write(cmdstring)
            #         file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))
            # else:
            #    cmdstring = "python3 setup.py test_examples_dryrun\npython3 setup.py test_regrid_from_file_dryrun\n"
            #    file_out.write(cmdstring)
            #       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))

            # if (("pythontest" in mpiflavor) and (headerType == "test")):
            #    cmdstring = "\ncd ../src/addon/ESMPy\n"
            #    file_out.write(cmdstring)
            #    cmdstring = "\nexport PATH=$PATH:$HOME/.local/bin\n".format(os.getcwd())
            #    file_out.write(cmdstring)
            #    cmdstring = "python3 setup.py build 2>&1 | tee python_build.log\n".format(self.headnodename)
            #    file_out.write(cmdstring)
            #    cmdstring = "ssh {} {}/runpython.sh 2>&1 | tee python_build.log\n".format(self.headnodename,
            #                                                                              os.getcwd())
            #    file_out.write(cmdstring)
            #    cmdstring = "python3 setup.py test 2>&1 | tee python_test.log\n".format(self.headnodename)
            #    file_out.write(cmdstring)
            #    cmdstring = "python3 setup.py test_examples 2>&1 | tee python_examples.log\n".format(self.headnodename)
            #    file_out.write(cmdstring)
            #    cmdstring = "python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log\n".format(
            #        self.headnodename)
            #    file_out.write(cmdstring)
            file_out.close()

    def createGetResScripts(self, monitor_cmd_build, monitor_cmd_test):
        # write these out no matter what, so we can run them manually, if necessary
        get_res_file = open("getres-build.sh", "w")
        get_res_file.write("#!{} -l\n".format(self.bash))
        get_res_file.write("{} >& build-res.log &\n".format(monitor_cmd_build))
        get_res_file.close()
        self.cmd.runcmd("chmod +x getres-build.sh")

        get_res_file = open("getres-test.sh", "w")
        get_res_file.write("#!{} -l\n".format(self.bash))
        get_res_file.write("{} >& test-res.log &\n".format(monitor_cmd_test))
        get_res_file.close()
        self.cmd.runcmd("chmod +x getres-test.sh")

    def start(self):

        if self.reclone:
            self.reclone_artifacts()

        for e in self.matrix.environments:
            for branch_index, esmf_branch in enumerate(self.branch):
                # TODO: deal with filtering
                if self.nuopc_branch is not None:
                    nuopc_branch = self.nuopc_branch[branch_index]
                else:
                    nuopc_branch = esmf_branch
                case = e.generate_case(self.test_root, self.repos, esmf_branch, nuopc_branch, self.machine.scheduler)
                case.set_up(self.cmd)


def go(args):
    """
    Entry point to run the test system.
    """
    test = ESMFTest(args["root"], args["machine"], args["yaml"],
                    args["dry_run"], args["no_submit"], args["no_artifacts"], args["filter"])

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
    parser.add_argument('--show-machine', help='Print out machine attributes and exit',
                        required=False,
                        action='store_true')
    parser.add_argument('--show-matrix', help='Print out the test matrix (set of configurations) and exit',
                        required=False,
                        action='store_true')
    parser.add_argument('--no-submit', help="Create test directories and batch scripts but do not submit any jobs",
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

    go(args)
