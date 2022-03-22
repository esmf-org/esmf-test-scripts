import argparse
import os
import pathlib
import re
import shutil
import subprocess

import yaml

from noscheduler import NoScheduler
from pbs import pbs
from slurm import slurm
import logging

REPO_ESMF_TEST_ARTIFACTS = "https://github.com/esmf-org/esmf-test-artifacts.git"

dir_path = os.path.dirname(os.path.realpath(__file__))
logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s %(name)-12s %(levelname)-8s %(message)s",
    filename=f"{os.path.join(dir_path, 'test_esmf.log')}",
    filemode="w",
)


class ESMFTest:
    scheduler_type: object

    def __init__(self, yaml_file, artifacts_root, workdir, dryrun: bool):
        self.b_filename = None
        self.t_filename = None
        self.fb = None
        self.ft = None
        self.test_time = None
        self.build_time = None
        self.mpi_version = None
        self.constraint = None
        self.cluster = None
        self.script_dir = None
        self.build_types = None
        self.cpn = None
        self.nuopc_branch = None
        self.head_node_name = None
        self.queue = None
        self.partition = None
        self.account = None
        self.bash = None
        self.https = None
        self.machine_name = None
        self.machine_list = None
        self.global_list = None
        self.reclone = None
        self.yaml_file = yaml_file
        self.artifacts_root = artifacts_root
        self.workdir = workdir
        self.dryrun = dryrun

        print("setting dryrun to {}".format(self.dryrun))
        self.mypath = pathlib.Path(__file__).parent.absolute()
        print("path is {}".format(self.mypath))
        print("calling readyaml")
        self.read_yaml()
        if self.reclone:
            print("recloning")
            os.system("rm -rf {}".format(self.artifacts_root))
            os.system("git clone -b {} {}".format(self.machine_name, REPO_ESMF_TEST_ARTIFACTS))
            os.chdir("esmf-test-artifacts")
            os.system("git checkout -b {}".format(self.machine_name))
            os.chdir("..")
        if 'slurm' == self.scheduler_type:
            self.scheduler = slurm("slurm")
        elif 'None' == self.scheduler_type:
            self.scheduler = NoScheduler("None")
        elif "pbs" == self.scheduler_type:
            self.scheduler = pbs("pbs")
        print(self.yaml_file, self.artifacts_root, self.workdir)
        self.create_job_cards_and_submit()

    def read_yaml(self):
        config_path = os.path.dirname(self.yaml_file)
        global_file = os.path.join(config_path, "global.yaml")
        print("HEY!!!! {}".format(global_file))
        with open(global_file) as file:
            self.global_list = yaml.load(file, Loader=yaml.SafeLoader)
            if 'reclone-artifacts' in self.global_list:
                self.reclone = self.global_list['reclone-artifacts']
            else:
                self.reclone = False
            print("set reclone to {}".format(self.reclone))
        with open(self.yaml_file) as file:
            self.machine_list = yaml.load(file, Loader=yaml.SafeLoader)
            self.machine_name = self.machine_list['machine']
            print("machine name is {}".format(self.machine_name))
            if 'git-https' in self.machine_list:
                self.https = True
            else:
                self.https = False
            if "bash" in self.machine_list:
                self.bash = self.machine_list['bash']
            else:
                self.bash = "/bin/bash"
            if "account" in self.machine_list:
                self.account = self.machine_list['account']
            else:
                self.account = "None"
            if "partition" in self.machine_list:
                self.partition = self.machine_list['partition']
            else:
                self.partition = "None"
            if "queue" in self.machine_list:
                self.queue = self.machine_list['queue']
            else:
                self.queue = "None"
            if "head_node_name" in self.machine_list:
                self.head_node_name = self.machine_list["head_node_name"]
            else:
                self.head_node_name = os.uname()[1]
            #     if("branch" in self.machine_list):
            #       self.branch = self.machine_list['branch']
            #     else:
            #       self.branch = "develop"
            if "nuopc_branch" in self.machine_list:
                self.nuopc_branch = self.machine_list['nuopc_branch']
            else:
                self.nuopc_branch = "develop"
            self.cpn = self.machine_list['corespernode']
            self.scheduler_type = self.machine_list['scheduler']
            self.build_types = ['O', 'g']
            #     self.build_types = ['O']
            self.script_dir = os.getcwd()
            if "cluster" in self.machine_list:
                self.cluster = self.machine_list['cluster']
            else:
                self.cluster = "None"
            if "constraint" in self.machine_list:
                self.constraint = self.machine_list['constraint']
            else:
                self.constraint = "None"

            # Now traverse the tree
            for comp in self.machine_list['compiler']:

                for ver in self.machine_list[comp]['versions']:
                    print("machine_list: ", self.machine_list)
                    print("machine_list[comp]: ", self.machine_list[comp])
                    print("machine_list[comp]['versions']: ", self.machine_list[comp]['versions'])
                    print("machine_list[comp]['versions'][ver]: ", self.machine_list[comp]['versions'][ver])
                    print("machine_list[comp]['versions'][ver]['mpi']: ",
                          self.machine_list[comp]['versions'][ver]['mpi'])

                    print(self.machine_list[comp]['versions'][ver])

    def run_command(self, cmd):
        if self.dryrun:
            print("would have executed {}".format(cmd))
        else:
            print("running {}\n".format(cmd))
            os.system(cmd)

    def update_repo(self, subdir, branch, nuopc_branch):
        subdir = pathlib.Path(subdir).absolute()
        print(f"SUBDIR IS {subdir}, {branch}, {nuopc_branch}")
        try:
            shutil.rmtree(subdir)
        except OSError:
            print("another process is actively writing files")
            exit(1)

        cmd_string = f"git clone -b {branch} git@github.com:esmf-org/esmf {subdir}"
        nuopc_clone = f"git clone -b {nuopc_branch} git@github.com:esmf-org/nuopc-app-prototypes"

        if self.dryrun:
            print("would have executed {}".format(cmd_string))
            print("would have executed {}".format(nuopc_clone))
            print("would have cd'd to {}".format(subdir))
            os.mkdir(subdir)
            os.chdir(subdir)

        else:
            print(subprocess.check_output(cmd_string, shell=True))
            os.chdir(subdir)
            print(subprocess.check_output(nuopc_clone, shell=True))
            self.run_command("rm -rf obj mod lib examples test *.o *.e *bat.o* *bat.e*")
            self.run_command(f"git checkout {branch}")
            self.run_command(f"git pull origin {branch}")

    def create_scripts(self, build_type, comp, ver, mpidict, key):
        mpi_flavor = mpidict[key]
        header_list = ["build", "test"]
        if mpi_flavor is not None and "pythontest" in mpi_flavor:
            header_list.append("python")

        for headerType in header_list:
            if headerType == "build":
                file_out = self.fb
            elif headerType == "test":
                file_out = self.ft
            else:
                python_script = open("runpython.sh", "w")
                file_out = python_script
                file_out.write("#!{} -l\n".format(self.bash))
                file_out.write("cd {}\n".format(os.getcwd()))
                file_out.write("export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n\n")
                file_out.write("cd {}/src/addon/ESMPy\n".format(os.getcwd()))
            if "unloadmodule" in self.machine_list[comp]:
                file_out.write("\nmodule unload {}\n".format(self.machine_list[comp]['unloadmodule']))
            if "modulepath" in self.machine_list:
                file_out.write("\nmodule use {}\n".format(self.machine_list['modulepath']))
            if "extramodule" in self.machine_list[comp]:
                file_out.write("\nmodule load {}\n".format(self.machine_list[comp]['extramodule']))

            if mpi_flavor is None or mpi_flavor['module'] in ["None", None]:
                mpi_flavor = {'module': ""}
                cmd_string = "export ESMF_MPIRUN={}/src/Infrastructure/stubs/mpiuni/mpirun\n".format(os.getcwd())
                file_out.write(cmd_string)

            if "mpi_env_vars" in mpi_flavor:
                for mpi_var in mpi_flavor['mpi_env_vars']:
                    file_out.write("export {}\n".format(mpidict[key]['mpi_env_vars'][mpi_var]))

            if self.machine_list[comp]['versions'][ver]['netcdf'] == "None":
                module_cmd = "module load {} {} \n\n".format(self.machine_list[comp]['versions'][ver]['compiler'],
                                                             mpi_flavor['module'])
                esmf_netcdf = "\n"
                file_out.write(module_cmd)
            else:
                module_cmd = "module load {} {} {}\n".format(self.machine_list[comp]['versions'][ver]['compiler'],
                                                             mpi_flavor['module'],
                                                             self.machine_list[comp]['versions'][ver]['netcdf'])
                esmf_netcdf = "export ESMF_NETCDF=nc-config\n\n"
                file_out.write(module_cmd)

            if "hdf5" in self.machine_list[comp]['versions'][ver]:
                module_cmd = "module load {} \n".format(self.machine_list[comp]['versions'][ver]['hdf5'])
                file_out.write(module_cmd)
            if "netcdf-fortran" in self.machine_list[comp]['versions'][ver]:
                module_cmd = "module load {} \n".format(self.machine_list[comp]['versions'][ver]['netcdf-fortran'])
                file_out.write(module_cmd)

            if headerType == "build":
                file_out.write("module list >& module-build.log\n\n")
            elif headerType == "test":
                file_out.write("module list >& module-test.log\n\n")

            file_out.write("set -x\n")
            file_out.write(esmf_netcdf)

            if 'extra_env_vars' in self.machine_list[comp]['versions'][ver]:
                for var in self.machine_list[comp]['versions'][ver]['extra_env_vars']:
                    file_out.write(
                        "export {}\n".format(self.machine_list[comp]['versions'][ver]['extra_env_vars'][var]))

            if 'extra_commands' in self.machine_list[comp]['versions'][ver]:
                for cmd in self.machine_list[comp]['versions'][ver]['extra_commands']:
                    file_out.write("{}\n".format(self.machine_list[comp]['versions'][ver]['extra_commands'][cmd]))

            file_out.write("export ESMF_DIR={}\n".format(os.getcwd()))
            file_out.write("export ESMF_COMPILER={}\n".format(comp))
            file_out.write("export ESMF_COMM={}\n".format(key))
            file_out.write("export ESMF_BOPT='{}'\n".format(build_type))
            file_out.write("export ESMF_TESTEXHAUSTIVE='ON'\n")

            cmd_string = "export ESMF_TESTWITHTHREADS='ON'\n"
            file_out.write(cmd_string)

            if headerType == "build":

                cmd_string = "make -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn)
                file_out.write(cmd_string)
            elif headerType == "test":
                cmd_string = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \n"
                file_out.write(cmd_string)
                #       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.head_node_name,self.script_dir,os.getcwd()))
                cmd_string = "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n"
                file_out.write(cmd_string)
                if mpi_flavor['module'] != "None":
                    cmd_string = "chmod +x runpython.sh\ncd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
                    file_out.write(cmd_string)
            #         file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.head_node_name,self.script_dir,os.getcwd()))
            else:
                cmd_string = "python3 setup.py test_examples_dryrun\npython3 setup.py test_regrid_from_file_dryrun\n"
                file_out.write(cmd_string)
            #       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.head_node_name,self.script_dir,os.getcwd()))

            if ("pythontest" in mpi_flavor) and (headerType == "test"):
                cmd_string = "\ncd ../src/addon/ESMPy\n"
                file_out.write(cmd_string)
                cmd_string = "\nexport PATH=$PATH:$HOME/.local/bin\n".format(os.getcwd())
                file_out.write(cmd_string)
                cmd_string = "python3 setup.py build 2>&1 | tee python_build.log\n".format(self.head_node_name)
                file_out.write(cmd_string)
                cmd_string = "ssh {} {}/runpython.sh 2>&1 | tee python_build.log\n".format(self.head_node_name,
                                                                                           os.getcwd())
                file_out.write(cmd_string)
                cmd_string = "python3 setup.py test 2>&1 | tee python_test.log\n".format(self.head_node_name)
                file_out.write(cmd_string)
                cmd_string = "python3 setup.py test_examples 2>&1 | tee python_examples.log\n".format(
                    self.head_node_name)
                file_out.write(cmd_string)
                cmd_string = "python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log\n".format(
                    self.head_node_name)
                file_out.write(cmd_string)
            file_out.close()
            mpimodule = mpi_flavor['module']
            if mpimodule == "":
                self.mpi_version = "None"
            else:
                self.mpi_version = mpi_flavor['module'].split('/')[-1]

    def create_get_res_scripts(self, monitor_cmd_build, monitor_cmd_test):
        # write these out no matter what, so we can run them manually, if necessary
        get_res_file = open("getres-build.sh", "w")
        get_res_file.write("#!{} -l\n".format(self.bash))
        get_res_file.write("{} >& build-res.log &\n".format(monitor_cmd_build))
        get_res_file.close()
        os.system("chmod +x getres-build.sh")

        get_res_file = open("getres-test.sh", "w")
        get_res_file.write("#!{} -l\n".format(self.bash))
        get_res_file.write("{} >& test-res.log &\n".format(monitor_cmd_test))
        get_res_file.close()
        os.system("chmod +x getres-test.sh")

    def create_job_cards_and_submit(self):
        for build_type in self.build_types:
            for comp in self.machine_list['compiler']:
                for ver in self.machine_list[comp]['versions']:
                    print("{}".format(self.machine_list[comp]['versions'][ver]['mpi']))
                    mpidict = self.machine_list[comp]['versions'][ver]['mpi']
                    mpitypes = mpidict.keys()
                    print(self.machine_list[comp]['versions'][ver])
                    for key in mpitypes:
                        if 'build_time' in self.machine_list[comp]:
                            self.build_time = self.machine_list[comp]['build_time']
                        else:
                            self.build_time = "1:00:00"
                        if 'test_time' in self.machine_list[comp]:
                            self.test_time = self.machine_list[comp]['test_time']
                        else:
                            self.test_time = "1:00:00"
                        for branch in self.machine_list['branch']:
                            if "nuopcbranch" in self.machine_list:
                                nuopcbranch = self.machine_list['nuopcbranch']
                            else:
                                nuopcbranch = "develop"
                            subdir = "{}_{}_{}_{}_{}".format(comp, ver, key, build_type, branch)
                            subdir = re.sub("/", "_",
                                            subdir)  # Some branches have a slash, so replace that with underscore
                            if self.https:
                                pass
                            else:
                                pass
                            self.update_repo(subdir, branch, nuopcbranch)
                            self.b_filename = 'build-{}_{}_{}_{}.bat'.format(comp, ver, key, build_type)
                            self.t_filename = 'test-{}_{}_{}_{}.bat'.format(comp, ver, key, build_type)
                            self.fb = open(self.b_filename, "w")
                            self.ft = open(self.t_filename, "w")
                            self.scheduler.createHeaders(self)
                            self.create_scripts(build_type, comp, ver, mpidict, key)
                            self.scheduler.submitJob(self, subdir, self.mpi_version, branch)
                            os.chdir("..")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Archive collector for ESMF testing framework')
    parser.add_argument('-w', '--workdir', help='directory where builds will be mad #', required=False,
                        default=os.getcwd())
    parser.add_argument('-y', '--yaml', help='Yaml file defining builds and testing parameters', required=True)
    parser.add_argument('-a', '--artifacts', help='directory where artifacts will be placed', required=True)
    parser.add_argument('-d', '--dryrun', help='directory where artifacts will be placed', required=False,
                        default=False)
    args = vars(parser.parse_args())

    test = ESMFTest(args['yaml'], args['artifacts'], args['workdir'], args['dryrun'])
