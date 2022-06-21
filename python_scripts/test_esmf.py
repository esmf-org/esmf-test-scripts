#!/usr/bin/env python3

import yaml
import os
import re
import time
import subprocess
import sys
import pathlib
import argparse
import logging
from scheduler import scheduler
from noscheduler import NoScheduler
from pbs import pbs
from slurm import slurm

logging.basicConfig(format='%(levelname)s: %(message)s', level=logging.DEBUG)

class ESMFTest:

  def __init__(self, test_root, yaml_file, dryrun, check, configs):

    if not os.path.isdir(test_root):
      logging.error(f"Directory not found: {test_root}\nTesting root should be an existing directory.")      
      return   
    self.test_root = os.path.abspath(test_root)

    if not os.path.isfile(yaml_file):
      logging.error(f"YAML file not found: {yaml_file}")
      return
    self.yaml_file = os.path.abspath(yaml_file)

    self.artifacts_root = os.path.abspath(os.path.join(self.test_root, "esmf-test-artifacts"))
    
    logging.debug(f"Test root: {self.test_root}")
    logging.debug(f"Config file: {self.yaml_file}")
    logging.debug(f"Artifacts root: {self.artifacts_root}")

    self.dryrun = dryrun
    self.mypath = pathlib.Path(__file__).parent.absolute()
    logging.debug(f"Script path is {self.mypath}")
   
    self.readYAML()

    if configs:
      self.print_configs()
      return
    
    if self.https:
      self.url_artifacts = "https://github.com/rsdunlapiv/esmf-test-artifacts.git"
      self.url_esmf = "https://github.com/esmf-org/esmf"
      self.url_nuopc = "https://github.com/esmf-org/nuopc-app-prototypes"
    else:
      self.url_artifacts = "git@github.com:rsdunlapiv/esmf-test-artifacts.git"
      self.url_esmf = "git@github.com:esmf-org/esmf"
      self.url_nuopc = "git@github.com:esmf-org/nuopc-app-prototypes"
           
    if check:
      self.check()
      return

    if self.reclone:
      self.reclone_artifacts(self.url_artifacts)

    if self.scheduler_type == "slurm":
      self.scheduler = slurm("slurm")
    elif self.scheduler_type == "None":
      self.scheduler = NoScheduler("None")
    elif self.scheduler_type == "pbs":
      self.scheduler = pbs(scheduler_type = "pbs",
                           pbs_node_specifier = self.pbs_node_specifier,
                           pbs_job_checker = self.pbs_job_checker)
    
    return
    self.createJobCardsAndSubmit()

  def check(self):
    """
    Run some local checks to make sure configuration is working.
    """
    logging.info("Running checks")
    self.chdir(f"{self.test_root}")
    self.runcmd(f"mkdir -p .check")
    self.chdir(".check")

    logging.info("Check: Can I clone artifacts repo?")
    self.clone_repo(self.url_artifacts, localname="esmf-test-artifacts")
    self.chdir("esmf-test-artifacts")
    o = self.runcmd("git status")
    if "Your branch is up to date" in o:
      logging.info("...PASS")
    self.chdir("..")
    
    logging.info("Check: Can I clone ESMF repo?")
    self.clone_repo(self.url_esmf, localname="esmf")
    self.chdir("esmf")
    o = self.runcmd("git status")
    if "Your branch is up to date" in o:
      logging.info("...PASS")
    self.chdir("..")
        
    self.chdir("..")
    self.runcmd("rm -rf .check")
    logging.info("Checks complete")
    
    
  def clone_repo(self, url, branch=None, localname=""):
    """
    Clone a repository into the current working directory.
      url - repo to clone
      branch - initial branch to checkout
      localname - subdirectory used 
    """
    self.runcmd(f"rm -rf {localname}")
    if branch is not None:
      self.runcmd(f"git clone -b {branch} {url} {localname}")  
      self.chdir(f"{localname}")                  
      self.runcmd(f"git checkout {branch}")
      self.runcmd(f"git pull origin {branch}")
      self.chdir("..")  
    else:
      self.runcmd(f"git clone {url} {localname}")    

  def reclone_artifacts(self, url):
    logging.info(f"Deleting and re-cloning artifacts repository: {url}")
    self.clone_repo(url, localname=ARTIFACTS_REPO_LOCAL_NAME)
    self.chdir(ARTIFACTS_REPO_LOCAL_NAME)
    
    branchlist = self.runcmd('git branch -a')
    logging.debug(f"Remote branches:\n{branchlist}")
    
    if f"remotes/origin/{self.machine_name}" in branchlist:
      logging.info(f"Tracking existing remote branch {self.machine_name}")
      self.runcmd(f"git checkout -b {self.machine_name} -t origin/{self.machine_name}")
    else:
      logging.info(f"Remote branch {self.machine_name} not found.  Creating new branch.")
      self.runcmd(f"git checkout -b {self.machine_name}")
      self.runcmd(f"git push --set-upstream origin {self.machine_name}")                  
    self.chdir("..")
    
    
  def runcmd(self, cmd):
    logging.debug(f"CMD: {cmd}")
    out = ""
    if not self.dryrun:
      out = subprocess.check_output(cmd, shell=True).strip().decode("utf-8")
    else:
      print(cmd)
    return out

  def chdir(self, toDir):
    logging.debug(f"CHDIR: {toDir}")
    if not self.dryrun:
      os.chdir(toDir)

  def readYAML(self):
    config_path = os.path.dirname(self.yaml_file)
    global_file = os.path.join(config_path,"global.yaml")
    with open(global_file) as file:
      self.global_list = yaml.load(file, Loader=yaml.SafeLoader)
      if("reclone-artifacts" in self.global_list):
        self.reclone = self.global_list['reclone-artifacts']
      else:
        self.reclone = False      
    with open(self.yaml_file) as file:
      self.machine_list = yaml.load(file, Loader=yaml.SafeLoader)
      self.machine_name = self.machine_list['machine']
      #print("machine name is {}".format(self.machine_name))
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
      if("nuopcbranch" in self.machine_list):
        self.nuopcbranch = self.machine_list['nuopcbranch']
      else: 
        self.nuopcbranch = "develop"
      self.cpn = self.machine_list['corespernode']
      self.scheduler_type = self.machine_list['scheduler']
      if("pbs_node_specifier" in self.machine_list):
        self.pbs_node_specifier = self.machine_list['pbs_node_specifier']
      else:
        self.pbs_node_specifier = "default"
      if("pbs_job_checker" in self.machine_list):
        self.pbs_job_checker = self.machine_list['pbs_job_checker']
      else:
        self.pbs_job_checker = "default"
      self.build_types = ['O','g']
      #self.build_types = ['O']
      self.script_dir = os.getcwd()
      if("cluster" in self.machine_list):
        self.cluster=self.machine_list['cluster']
      else:
        self.cluster="None"
      if("constraint" in self.machine_list):
        self.constraint=self.machine_list['constraint']
      else:
        self.constraint="None"

       
  def createScripts(self,build_type,comp,ver,mpidict,mpitypes,key,branch):
    mpiflavor = mpidict[key]
    if(mpiflavor is not None and "pythontest" in mpiflavor):
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

      if("mpi_env_vars" in mpidict[key]):
        for mpi_var in mpidict[key]['mpi_env_vars']:
          file_out.write("export {}\n".format(mpidict[key]['mpi_env_vars'][mpi_var]))

      if(self.machine_list[comp]['versions'][ver]['netcdf'] == "None" ):
        modulecmd = "module load {} {} \n\n".format(self.machine_list[comp]['versions'][ver]['compiler'],mpiflavor['module'])
        esmfnetcdf = "\n"
        file_out.write(modulecmd)
      else:
        modulecmd = "module load {} {} {}\n".format(self.machine_list[comp]['versions'][ver]['compiler'],mpiflavor['module'],self.machine_list[comp]['versions'][ver]['netcdf'])
        esmfnetcdf = "export ESMF_NETCDF=nc-config\n\n"
        file_out.write(modulecmd)

      if("hdf5" in self.machine_list[comp]['versions'][ver]):
        modulecmd = "module load {} \n".format(self.machine_list[comp]['versions'][ver]['hdf5'])
        file_out.write(modulecmd)
      if("netcdf-fortran" in self.machine_list[comp]['versions'][ver]):
        modulecmd = "module load {} \n".format(self.machine_list[comp]['versions'][ver]['netcdf-fortran'])
        file_out.write(modulecmd)

      if(headerType == "build"):
        file_out.write("module list >& module-build.log\n\n")
      elif(headerType == "test"):
        file_out.write("module list >& module-test.log\n\n")

      file_out.write("set -x\n") 
      file_out.write(esmfnetcdf)

      if('extra_env_vars' in self.machine_list[comp]['versions'][ver]):
          for var in self.machine_list[comp]['versions'][ver]['extra_env_vars']:
            file_out.write("export {}\n".format(self.machine_list[comp]['versions'][ver]['extra_env_vars'][var]))

      if('extra_commands' in self.machine_list[comp]['versions'][ver]):
          for cmd in self.machine_list[comp]['versions'][ver]['extra_commands']:
            file_out.write("{}\n".format(self.machine_list[comp]['versions'][ver]['extra_commands'][cmd]))

      cmdstring = "export ESMF_DIR={}\n".format(os.getcwd())
      file_out.write(cmdstring)

      cmdstring = "export ESMF_COMPILER={}\n".format(comp)
      file_out.write(cmdstring)

      cmdstring="export ESMF_COMM={}\n".format(key)
      file_out.write(cmdstring)

      cmdstring="export ESMF_BOPT='{}'\n".format(build_type)
      file_out.write(cmdstring)

      cmdstring="export ESMF_TESTEXHAUSTIVE='ON'\n"
      file_out.write(cmdstring)

      cmdstring="export ESMF_TESTWITHTHREADS='ON'\n"
      file_out.write(cmdstring)

      if(headerType == "build"):

        cmdstring = "make -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn)
        file_out.write(cmdstring)
      elif(headerType == "test"):
        cmdstring = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \n"
        file_out.write(cmdstring)
#       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))
        cmdstring = "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n"
        file_out.write(cmdstring)
        if(mpiflavor['module'] != "None"):
          cmdstring = "chmod +x runpython.sh\ncd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
          file_out.write(cmdstring)
#         file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))
      else:
        cmdstring = "python3 setup.py test_examples_dryrun\npython3 setup.py test_regrid_from_file_dryrun\n"
        file_out.write(cmdstring)
#       file_out.write("ssh {} {}/{}/getres-int.sh\n".format(self.headnodename,self.script_dir,os.getcwd()))


      if(("pythontest" in mpiflavor) and (headerType == "test")):

           cmdstring = "\ncd ../src/addon/ESMPy\n"
           file_out.write(cmdstring)
           cmdstring = "\nexport PATH=$PATH:$HOME/.local/bin\n".format(os.getcwd())
           file_out.write(cmdstring)
           cmdstring = "python3 setup.py build 2>&1 | tee python_build.log\n".format(self.headnodename)
           file_out.write(cmdstring)
           cmdstring = "ssh {} {}/runpython.sh 2>&1 | tee python_build.log\n".format(self.headnodename,os.getcwd())
           file_out.write(cmdstring)
           cmdstring = "python3 setup.py test 2>&1 | tee python_test.log\n".format(self.headnodename)
           file_out.write(cmdstring)
           cmdstring = "python3 setup.py test_examples 2>&1 | tee python_examples.log\n".format(self.headnodename)
           file_out.write(cmdstring)
           cmdstring = "python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log\n".format(self.headnodename)
           file_out.write(cmdstring)
      file_out.close()
      mpimodule = mpiflavor['module']
      if(mpimodule == ""):
        self.mpiver = "None"
      else:
        self.mpiver = mpiflavor['module'].split('/')[-1]

  def createGetResScripts(self,monitor_cmd_build,monitor_cmd_test):
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

  def print_configs(self):
    print(f"Configurations in {self.yaml_file}:")
    config_num = 1
    compilers = self.machine_list['configs']
    for compiler in compilers:
      versions = compilers[compiler]['versions']
      for version in versions:
        mpis = versions[version]['mpi']
        netcdf = versions[version]['netcdf']
        for mpi in mpis:
          for build_type in self.build_types:
            print(f"  [{config_num}] {compiler} {version} / {mpi} / {netcdf} / {build_type}")
            config_num += 1

  def createJobCardsAndSubmit(self):
      for build_type in self.build_types:
        for comp in self.machine_list['compiler']:
         for ver in self.machine_list[comp]['versions']:
            mpidict = self.machine_list[comp]['versions'][ver]['mpi']
            mpitypes = mpidict.keys()
            for key in mpitypes:
              if('build_time' in self.machine_list[comp]):
                self.build_time = self.machine_list[comp]['build_time']
              else:
                self.build_time = "1:00:00"
              if('test_time' in self.machine_list[comp]):
                self.test_time = self.machine_list[comp]['test_time']
              else:
                self.test_time = "1:00:00"
              for branch in self.machine_list['branch']:
                if("nuopcbranch" in self.machine_list):
                  nuopcbranch = self.machine_list['nuopcbranch']
                else: 
                  nuopcbranch = branch
                subdir="{}_{}_{}_{}_{}".format(comp,ver,key,build_type,branch)
                subdir = re.sub("/","_",subdir) #Some branches have a slash, so replace that with underscore

                xif self.https:
                  esmfurl = "https://github.com/esmf-org/esmf"
                  nuopcurl = "https://github.com/esmf-org/nuopc-app-prototypes"
                else:
                  esmfurl = "git@github.com:esmf-org/esmf"
                  nuopcurl = "git@github.com:esmf-org/nuopc-app-prototypes"
                  
                self.clone_repo(esmfurl, branch, subdir)
                self.chdir(subdir)
                self.clone_repo(nuopcurl, nuopcbranch, "nuopc-app-prototypes")

                self.b_filename = 'build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
                self.t_filename = 'test-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
                self.fb = open(self.b_filename, "w")
                self.ft = open(self.t_filename, "w")
                self.scheduler.createHeaders(self)
                self.createScripts(build_type,comp,ver,mpidict,mpitypes,key,branch)
                #self.scheduler.submitJob(self,subdir,self.mpiver,branch)
                self.chdir("..")

    
if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='A tool to facilitate automated and manual testing of ESMF')
  parser.add_argument('-r','--root', help='Test system root directory', required=True)
  parser.add_argument('-y','--yaml', help='YAML file defining builds and testing parameters', required=True)
  parser.add_argument('-d','--dryrun', help='Show commands without actually running them', required=False, action='store_true')
  parser.add_argument('-c','--check', help='Run some checks', required=False, action='store_true')
  parser.add_argument('-o','--configs', help='Print list of test configurations', required=False, action='store_true')
  
  args = vars(parser.parse_args())

  #try:
  test = ESMFTest(args['root'], args['yaml'], args['dryrun'], args['check'], args['configs'])
  #except Exception as e:
  #  print(f"Error invoking test script:\n{e}")
    
