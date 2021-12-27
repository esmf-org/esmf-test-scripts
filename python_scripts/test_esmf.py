import re
import argparse
import collections
import logging
import os
import pathlib
import subprocess
import shutil


try:
    from yaml import CDumper as Dumper
    from yaml import CLoader as Loader
except ImportError:
    from yaml import Loader, Dumper

import yaml

from noscheduler import NoScheduler
from pbs import pbs
from slurm import slurm


class ESMFTest:
  def __init__(self, yaml_file, artifacts_root, workdir, dryrun):
    self.yaml_file=yaml_file
    self.artifacts_root=artifacts_root
    self.workdir=workdir
    if(dryrun == "True"):
      self.dryrun = True
    else:
      self.dryrun = False
    print("setting dryrun to {}".format(self.dryrun))
    self.mypath=pathlib.Path(__file__).parent.absolute()
    print("path is {}".format(self.mypath))
    print("calling readyaml")
    self.readYAML()
    if(self.reclone == True):
      print("recloning")
      os.system("rm -rf {}".format(self.artifacts_root))
      os.system("git clone https://github.com/esmf-org/esmf-test-artifacts.git")
      os.chdir("esmf-test-artifacts")
      os.system("git checkout -b {}".format(self.machine_name))
      os.chdir("..")
    if(self.scheduler_type == "slurm"):
      self.scheduler=slurm("slurm")
    elif(self.scheduler_type == "None"):
      self.scheduler=NoScheduler("None")
    elif(self.scheduler_type == "pbs"):
      self.scheduler=pbs("pbs")
    print(self.yaml_file, self.artifacts_root, self.workdir)
    self.createJobCardsAndSubmit()

  def readYAML(self):
    config_path = os.path.dirname(self.yaml_file)
    global_file = os.path.join(config_path,"global.yaml")
    print("HEY!!!! {}".format(global_file))
    with open(global_file) as file:
      self.global_list = yaml.load(file, Loader=yaml.SafeLoader)
      if("reclone-artifacts" in self.global_list):
        self.reclone = self.global_list['reclone-artifacts']
      else:
        self.reclone = False
      print("set reclone to {}".format(self.reclone))
    with open(self.yaml_file) as file:
      self.machine_list = yaml.load(file, Loader=yaml.SafeLoader)
      self.machine_name = self.machine_list['machine']
      print("machine name is {}".format(self.machine_name))
      if("git-https" in self.machine_list):
        self.https = True
      else: 
        self.https = False
      if("bash" in self.machine_list):
        self.bash = self.machine_list['bash']
      else: 
        self.bash = "/bin/bash"
      if("account" in self.machine_list):
        self.account = self.machine_list['account']
      else: 
        self.account = "None"
      if("partition" in self.machine_list):
        self.partition = self.machine_list['partition']
      else: 
        self.partition = "None"
      if("queue" in self.machine_list):
        self.queue = self.machine_list['queue']
      else: 
        self.queue = "None"
      if("headnodename" in self.machine_list):
        self.headnodename = self.machine_list["headnodename"]
      else:
        self.headnodename = os.uname()[1]
#     if("branch" in self.machine_list):
#       self.branch = self.machine_list['branch']
#     else: 
#       self.branch = "develop"
      if("nuopcbranch" in self.machine_list):
        self.nuopcbranch = self.machine_list['nuopcbranch']
      else: 
        self.nuopcbranch = "develop"
      self.cpn = self.machine_list['corespernode']
      self.scheduler_type = self.machine_list['scheduler']
      self.build_types = ['O','g']
#     self.build_types = ['O']
      self.script_dir=os.getcwd()
      if("cluster" in self.machine_list):
        self.cluster=self.machine_list['cluster']
      else:
        self.cluster="None"
      if("constraint" in self.machine_list):
        self.constraint=self.machine_list['constraint']
      else:
        self.constraint="None"

      # Now traverse the tree
      for build_type in self.build_types:
        for comp in self.machine_list['compiler']:
  
         for ver in self.machine_list[comp]['versions']:
          mpidict = self.machine_list[comp]['versions'][ver]['mpi']
          mpitypes= mpidict.keys()
          print(self.machine_list[comp]['versions'][ver])
#         for key in mpitypes:
#           subdir="{}_{}_{}_{}".format(comp,ver,key,build_type)
#           print("{}".format(subdir))

  def runcmd(self,cmd):
    if(self.dryrun == True):
       print("would have executed {}".format(cmd))
    else:
       print("running {}\n".format(cmd))
       os.system(cmd)

  def updateRepo(self,subdir,branch,nuopcbranch):
     os.system("rm -rf {}".format(subdir))
     if(not(os.path.isdir(subdir))):
       if(self.https == True):
         cmdstring = "git clone -b {} https://github.com/esmf-org/esmf {}".format(branch,subdir)
         nuopcclone = "git clone -b {} https://github.com/esmf-org/nuopc-app-prototypes".format(nuopcbranch)
       else:
         cmdstring = "git clone -b {} git@github.com:esmf-org/esmf {}".format(branch,subdir)
         nuopcclone = "git clone -b {} git@github.com:esmf-org/nuopc-app-prototypes".format(nuopcbranch)
       if(self.dryrun == True):
         print("would have executed {}".format(cmdstring))
         print("would have executed {}".format(nuopcclone))
         print("would have cd'd to {}".format(subdir))
         os.system("mkdir {}".format(subdir))
         os.chdir(subdir)
       else:
         status= subprocess.check_output(cmdstring,shell=True).strip().decode('utf-8')
         os.chdir(subdir)
         self.runcmd("rm -rf obj mod lib examples test *.o *.e *bat.o* *bat.e*")
         self.runcmd("git checkout {}".format(branch))
         self.runcmd("git pull origin {}".format(branch))
         status= subprocess.check_output(nuopcclone,shell=True).strip().decode('utf-8')
         print("status from nuopc clone command {} was {}".format(nuopcclone,status))
     
  def createScripts(self,build_type,comp,ver,mpidict,mpitypes,key,branch):
    mpiflavor = mpidict[key]
    if("pythontest" in mpiflavor):
      headerList = ["build","test","python"]
    else:
      headerList = ["build","test"]
    for headerType in headerList: 
      if(headerType == "build"):
        file_out = self.fb
      elif(headerType == "test"):
        file_out = self.ft
      else:
        pythonscript = open("runpython.sh", "w")
        file_out = pythonscript
        file_out.write("#!{} -l\n".format(self.bash))
        file_out.write("cd {}\n".format(os.getcwd()))
        file_out.write("export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n\n")
        file_out.write("cd {}/src/addon/ESMPy\n".format(os.getcwd()))
      if("unloadmodule" in self.machine_list[comp]):
        file_out.write("\nmodule unload {}\n".format(self.machine_list[comp]['unloadmodule']))
      if("modulepath" in self.machine_list):
        modulepath = self.machine_list['modulepath']
        file_out.write("\nmodule use {}\n".format(self.machine_list['modulepath']))
      if("extramodule" in self.machine_list[comp]):
        file_out.write("\nmodule load {}\n".format(self.machine_list[comp]['extramodule']))

      if(mpiflavor['module'] == "None"):
        mpiflavor['module'] = ""
        cmdstring = "export ESMF_MPIRUN={}/src/Infrastructure/stubs/mpiuni/mpirun\n".format(os.getcwd())
        file_out.write(cmdstring)


def get_args():
    parser = argparse.ArgumentParser(
        description="Archive collector for ESMF testing framework"
    )
    parser.add_argument(
        "-w",
        "--workdir",
        help="directory where builds will be mad #",
        required=False,
        default=os.getcwd(),
    )
    parser.add_argument(
        "-y",
        "--yaml",
        help="Yaml file defining builds and testing parameters",
        # required=True,
    )
    parser.add_argument(
        "-a",
        "--artifacts",
        help="directory where artifacts will be placed",
        # required=True,
    )
    parser.add_argument(
        "-d",
        "--dryrun",
        help="directory where artifacts will be placed",
        required=False,
        default=False,
    )

    return vars(parser.parse_args())


def absolute_path(relative_path):
    return os.path.join(ABS_PATH, relative_path)


def _default_lookup(needle, haystack, default_value=""):
    return haystack[needle] if needle in haystack else default_value


def write_python_headers():
    pythonscript = open("runpython.sh", "w")
    file_out = pythonscript
    file_out.write("#!{} -l\n".format(self.bash))
    file_out.write("cd {}\n".format(os.getcwd()))
    file_out.write("export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n\n")
    file_out.write("cd {}/src/addon/ESMPy\n".format(os.getcwd()))
    return file_out


def check_unload_module(test, file_out, compiler_list):
    if test:
        file_out.write("\nmodule unload {}\n".format(compiler_list["unloadmodule"]))
    return


def check_module_path(test, file_out, machine_list):
    if test:
        file_out.write("\nmodule use {}\n".format(machine_list["modulepath"]))
    return


def check_extra_module(test, file_out, compiler_list):
    if test:
        file_out.write("\nmodule load {}\n".format(compiler_list["extramodule"]))
    return


def check_pythontest(test, file_out, head_node_name):
    if not test:
        return
    cmdstring = "\ncd ../src/addon/ESMPy\n"
    file_out.write(cmdstring)
    cmdstring = "\nexport PATH=$PATH:$HOME/.local/bin\n".format(os.getcwd())
    file_out.write(cmdstring)
    cmdstring = "python3 setup.py build 2>&1 | tee python_build.log\n".format(
        head_node_name
    )
    file_out.write(cmdstring)
    cmdstring = "ssh {} {}/runpython.sh 2>&1 | tee python_build.log\n".format(
        head_node_name, os.getcwd()
    )
    file_out.write(cmdstring)
    cmdstring = "python3 setup.py test 2>&1 | tee python_test.log\n".format(
        head_node_name
    )
    file_out.write(cmdstring)
    cmdstring = (
        "python3 setup.py test_examples 2>&1 | tee python_examples.log\n".format(
            head_node_name
        )
    )
    file_out.write(cmdstring)
    cmdstring = (
        "python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log\n".format(
            head_node_name
        )
    )
    file_out.write(cmdstring)
    return


def write_file_defaults(file_out, comp, key, build_type):
    cmdstring = "export ESMF_DIR={}\n".format(os.getcwd())
    file_out.write(cmdstring)

    cmdstring = "export ESMF_COMPILER={}\n".format(comp)
    file_out.write(cmdstring)

    cmdstring = "export ESMF_COMM={}\n".format(key)
    file_out.write(cmdstring)

    cmdstring = "export ESMF_BOPT='{}'\n".format(build_type)
    file_out.write(cmdstring)

    cmdstring = "export ESMF_TESTEXHAUSTIVE='ON'\n"
    file_out.write(cmdstring)

    cmdstring = "export ESMF_TESTWITHTHREADS='ON'\n"
    file_out.write(cmdstring)


def write_header_type(header_type, file_out, mpi_flavor):
    if header_type == "build":
        cmdstring = "make -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn)
        file_out.write(cmdstring)
    elif header_type == "test":
        cmdstring = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \n"
        file_out.write(cmdstring)

        cmdstring = "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n"
        file_out.write(cmdstring)
        if mpi_flavor["module"] != "None":
            cmdstring = "chmod +x runpython.sh\ncd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
            file_out.write(cmdstring)
    else:
        cmdstring = "python3 setup.py test_examples_dryrun\npython3 setup.py test_regrid_from_file_dryrun\npython3 setup.py test_regrid_from_file_dryrun\n"

        file_out.write(cmdstring)


def create_scripts(self, build_type, comp, ver, mpidict, key, machine_list):
    mpi_flavor = mpidict[key]
    header_list = ["build", "test"]
    if "pythontest" in mpi_flavor:
        header_list.append("python")
    for header_type in header_list:
        if header_type == "build":
            file_out = self.fb
        elif header_type == "test":
            file_out = self.ft
        else:
            file_out = write_python_headers
        check_unload_module(
            "unloadmodule" in machine_list[comp], file_out, machine_list[comp]
        )
        check_module_path("modulepath" in machine_list, file_out, machine_list)
        check_extra_module(
            "extramodule" in machine_list[comp], file_out, machine_list[comp]
        )

        if mpi_flavor["module"] == "None":
            mpi_flavor["module"] = ""
            cmdstring = (
                "export ESMF_MPIRUN={}/src/Infrastructure/stubs/mpiuni/mpirun\n".format(
                    os.getcwd()
                )
            )
            file_out.write(cmdstring)

        if "mpi_env_vars" in mpidict[key]:
            for mpi_var in mpidict[key]["mpi_env_vars"]:
                file_out.write(
                    "export {}\n".format(mpidict[key]["mpi_env_vars"][mpi_var])
                )

        if machine_list[comp]["versions"][ver]["netcdf"] == "None":
            modulecmd = "module load {} {} \n\n".format(
                machine_list[comp]["versions"][ver]["compiler"],
                mpi_flavor["module"],
            )
            esmfnetcdf = "\n"
            file_out.write(modulecmd)
        else:
            modulecmd = "module load {} {} {}\n".format(
                machine_list[comp]["versions"][ver]["compiler"],
                mpi_flavor["module"],
                machine_list[comp]["versions"][ver]["netcdf"],
            )
            esmfnetcdf = "export ESMF_NETCDF=nc-config\n\n"
            file_out.write(modulecmd)

        if "hdf5" in machine_list[comp]["versions"][ver]:
            modulecmd = "module load {} \n".format(
                machine_list[comp]["versions"][ver]["hdf5"]
            )
            file_out.write(modulecmd)
        if "netcdf-fortran" in machine_list[comp]["versions"][ver]:
            modulecmd = "module load {} \n".format(
                machine_list[comp]["versions"][ver]["netcdf-fortran"]
            )
            file_out.write(modulecmd)

        if header_type == "build":
            file_out.write("module list >& module-build.log\n\n")
        elif header_type == "test":
            file_out.write("module list >& module-test.log\n\n")

        file_out.write("set -x\n")
        file_out.write(esmfnetcdf)

        if "extra_env_vars" in machine_list[comp]["versions"][ver]:
            for var in machine_list[comp]["versions"][ver]["extra_env_vars"]:
                file_out.write(
                    "export {}\n".format(
                        machine_list[comp]["versions"][ver]["extra_env_vars"][var]
                    )
                )

        if "extra_commands" in machine_list[comp]["versions"][ver]:
            for cmd in machine_list[comp]["versions"][ver]["extra_commands"]:
                file_out.write(
                    "{}\n".format(
                        machine_list[comp]["versions"][ver]["extra_commands"][cmd]
                    )
                )

        write_file_defaults(file_out, comp, key, build_type)
        write_header_type(header_type, file_out, mpi_flavor)
        check_pythontest(
            ("pythontest" in mpi_flavor) and (header_type == "test"),
            file_out,
            self.headNodeName,
        )

        file_out.close()
        mpimodule = mpi_flavor["module"]
        if mpimodule == "":
            self.mpiver = "None"
        else:
            self.mpiver = mpi_flavor["module"].split("/")[-1]


def create_job_card(build_types, machine_list):
    compilers = (compiler for compiler in machine_list["compiler"])
    for build_type in build_types:
        for compiler in compilers:
            versions = (version for version in machine_list[compiler]["versions"])
            for version in versions:
                # print("{}".format(machine_list[compiler]["versions"][version]["mpi"]))
                mpi_dict = machine_list[compiler]["versions"][version]["mpi"]
                mpi_types = mpi_dict.keys()
                # print(machine_list[compiler]["versions"][version])
                for key in mpi_types:
                    build_time = _default_lookup("build_time", mpi_types, "1:00:00")
                    test_time = _default_lookup("test", mpi_types, "1:00:00")
                    for branch in machine_list["branch"]:
                        nuopcbranch = _default_lookup(
                            "nuopcbranch", machine_list, branch
                        )

                        subdir = "{}_{}_{}_{}_{}".format(
                            compiler, version, key, build_type, branch
                        )
                        subdir = re.sub(
                            "/", "_", subdir
                        )  # Some branches have a slash, so replace that with underscore

                        cmdstring = "git clone -b {} https://github.com/esmf-org/esmf {}".format(
                            branch, subdir
                        )
                        nuopcclone = "git clone -b {} https://github.com/esmf-org/nuopc-app-prototypes".format(
                            nuopcbranch
                        )

                        update_repo(subdir, branch, None)  # nupocbranch=None
                        b_filename = "build-{}_{}_{}_{}.bat".format(
                            compiler, version, key, build_type
                        )
                        t_filename = "test-{}_{}_{}_{}.bat".format(
                            compiler, version, key, build_type
                        )
                        fb = open(b_filename, "w")
                        ft = open(t_filename, "w")
                        scheduler.createHeaders()
                        create_scripts(
                            build_type,
                            compiler,
                            version,
                            mpi_dict,
                            mpi_types,
                            key,
                            branch,
                        )
                        scheduler.submitJob(subdir, mpiver, branch)
                        os.chdir("..")


def runcmd(cmd):
    return subprocess.run(cmd.split(), stdout=subprocess.PIPE, check=True)


def remove_path(path):
    shutil.rmtree(path)


def update_repo(subdir, branch, nuopcbranch):
    os.system("rm -rf {}".format(subdir))
    cmdstring = f"git clone -b {branch} https://github.com/esmf-org/esmf {subdir}"
    nuopcclone = (
        f"git clone -b {nuopcbranch} https://github.com/esmf-org/nuopc-app-prototypes"
    )

    if not (os.path.isdir(subdir)):
        os.system(f"mkdir {subdir}")
        os.chdir(subdir)

    status = subprocess.check_output(cmdstring, shell=True).strip().decode("utf-8")
    print(status)
    os.chdir(subdir)
    runcmd("rm -rf obj mod lib examples test *.o *.e *bat.o* *bat.e*")
    runcmd("git checkout {}".format(branch))
    runcmd("git pull origin {}".format(branch))
    status = subprocess.check_output(nuopcclone, shell=True).strip().decode("utf-8")
    print(status)
    # print("status from nuopc clone command {} was {}".format(nuopcclone, status))
    return False


if __name__ == "__main__":
    ABS_PATH = pathlib.Path(__file__).parent.absolute()
    DEFAULT_BRANCH = "develop"
    DEFAULT_CONFIG_PATH = "../config"
    DEFAULT_GLOBAL_CONFIG_FILE_PATH = "global.yaml"
    DEFAULT_BUILD_TYPES = ["O", "g"]

    args = get_args()

    global_config = fetch_config(absolute_path("../config/global.yaml"))
    local_config = fetch_config(absolute_path("../config/cheyenne.yaml"))
    global_config.update(local_config)
    print(global_config)

    if global_config["reclone_artificats"] is True:
        reclone_repos(global_config)  # need to test return value

    scheduler = get_scheduler(global_config)
