import yaml
import os
import re
import time
import subprocess
import sys
import pathlib
import argparse

class scheduler():
  def __init__(self,scheduler_type,test):
     pass

  def submit(self,subdir):
     pass

  def create_headers(self):
     pass

  def submit_job(self):
     pass

  def checkqueue(self):
     pass

class NoScheduler(scheduler):
  def __init__(self,scheduler_type):
    self.type = scheduler_type

  def submit(self,test,subdir,mpiver,branch):
    print("HEY, in submit")
    os.system("chmod +x {}".format(test.b_filename))
    jobnum = 12345
    os.system("./{} {}".format(test.b_filename,jobnum))
    monitor_cmd_build = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    jobnum = 12346
    os.system("{}".format(monitor_cmd_build))
    os.system("chmod +x {}".format(test.t_filename))
    os.system("./{} {}".format(test.t_filename,jobnum))
    monitor_cmd_test = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    os.system("{}".format(monitor_cmd_test))
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)

  def create_headers(self,test):
    for headerType in ["build","test"]:
      if(headerType == "build"):
        file_out = test.fb
        jobid = 12345
      else:
        file_out = test.ft
        jobid = 12346
      file_out.write("#!{} -l\n".format(test.bash))
      file_out.write("export JOBID={}\n".format(jobid))

class pbs(scheduler):
  def __init__(self,scheduler_type):
     self.type = scheduler_type


  def create_headers(self,test):
    for headerType in ["build","test"]:
      if(headerType == "build"):
        file_out = test.fb
      else:
        file_out = test.ft
      file_out.write("#!/bin/sh -l\n")
      if(headerType == "build"):
        file_out.write("#PBS -N {}\n".format(test.b_filename))
        file_out.write("#PBS -l walltime={}\n".format(test.build_time))
      else:
        file_out.write("#PBS -N {}\n".format(test.t_filename))
      file_out.write("#PBS -l walltime={}\n".format(test.test_time))
      file_out.write("#PBS -q {}\n".format(test.queue))
      file_out.write("#PBS -A {}\n".format(test.account))
      file_out.write("#PBS -l select=1:ncpus={}:mpiprocs={}\n".format(test.cpn,test.cpn))
      file_out.write("cd {}\n".format(os.getcwd()))

  def submit(self,test,subdir,mpiver,branch):
    batch_build = "qsub {}".format(test.b_filename)
    print(batch_build)
    jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split(".")[0]
    print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build,jobnum))
    monitor_cmd_build = \
        "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    print(monitor_cmd_build)
    # submit the second job to be dependent on the first
    batch_test = "qsub -W depend=afterok:{} {}".format(jobnum,test.t_filename)
    print("Submitting test_batch with command: {}".format(batch_test))
    jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split(".")[0]
    monitor_cmd_test = \
        "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)
    
class slurm(scheduler):
  def __init__(self,scheduler_type):
     self.type = scheduler_type

  def create_headers(self,test):
    for headerType in ["build","test"]:
      if(headerType == "build"):
        file_out = test.fb
      else:
        file_out = test.ft
      file_out.write("#!/bin/sh -l\n")
      file_out.write("#SBATCH --account={}\n".format(test.account))
      if(headerType == "build"):
        file_out.write("#SBATCH -o {}_%j.o\n".format(test.b_filename))
        file_out.write("#SBATCH -e {}_%j.e\n".format(test.b_filename))
        file_out.write("#SBATCH --time={}\n".format(test.build_time))
      else:
        file_out.write("#SBATCH -o {}_%j.o\n".format(test.t_filename))
        file_out.write("#SBATCH -e {}_%j.e\n".format(test.t_filename))
        file_out.write("#SBATCH --time={}\n".format(test.test_time))
      if(test.partition != "None"):
        file_out.write("#SBATCH --partition={}\n".format(test.partition))
      if(test.cluster != "None"):
        file_out.write("#SBATCH --cluster={}\n".format(test.cluster))
      file_out.write("#SBATCH --qos={}\n".format(test.queue))
      file_out.write("#SBATCH --nodes=1\n")
      file_out.write("#SBATCH --ntasks-per-node={}\n".format(test.cpn))
      file_out.write("#SBATCH --exclusive\n")

  def submit(self,test,subdir,mpiver,branch):
    batch_build = "sbatch {}".format(test.b_filename)
    jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split()[3]
    monitor_cmd_build = "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    print(monitor_cmd_build)
    proc = subprocess.Popen(monitor_cmd_build, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
    # submit the second job to be dependent on the first
    batch_test = "sbatch --depend=afterok:{} {}".format(jobnum,test.t_filename)
    print("Submitting test_batch with command: {}".format(batch_test))
    jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split()[3]
    monitor_cmd_test = "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    print(monitor_cmd_test)
    proc = subprocess.Popen(monitor_cmd_test, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)
    

class ESMFTest:
  def __init__(self, yaml_file, artifacts_root, workdir, dryrun):
    self.yaml_file=yaml_file
    self.artifacts_root=artifacts_root
    self.workdir=workdir
    self.dryrun = dryrun
    self.mypath=pathlib.Path(__file__).parent.absolute()
    self.branch="develop"
    self.readYAML()
    if(self.scheduler_type == "slurm"):
      self.scheduler=slurm("slurm")
    elif(self.scheduler_type == "None"):
      self.scheduler=NoScheduler("None")
    print(self.yaml_file, self.artifacts_root, self.workdir)
    self.createJobCards()

  def readYAML(self):
    with open(self.yaml_file) as file:
      self.machine_list = yaml.load(file, Loader=yaml.FullLoader)
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
      if("branch" in self.machine_list):
        self.branch = self.machine_list['branch']
      else: 
        self.branch = "develop"
      if("nuopcbranch" in self.machine_list):
        self.nuopcbranch = self.machine_list['nuopcbranch']
      else: 
        self.nuopcbranch = self.branch
      self.cpn = self.machine_list['corespernode']
      self.scheduler_type = self.machine_list['scheduler']
      self.build_types = ['O','g']
      self.script_dir=os.getcwd()
      if("cluster" in self.machine_list):
        self.cluster=self.machine_list['cluster']
      else:
        self.cluster="None"
      # Now traverse the tree
      for build_type in self.build_types:
        for comp in self.machine_list['compiler']:
  
         for ver in self.machine_list[comp]['versions']:
          mpidict = self.machine_list[comp]['versions'][ver]['mpi']
          mpitypes= mpidict.keys()
          print(self.machine_list[comp]['versions'][ver])
          for key in mpitypes:
            subdir="{}_{}_{}_{}".format(comp,ver,key,build_type)
            print("{}".format(subdir))
            if('build_time' in self.machine_list[comp]):
              self.build_time = self.machine_list[comp]['build_time']
            else:
              self.build_time = "1:00:00"
            if('test_time' in self.machine_list[comp]):
              self.test_time = self.machine_list[comp]['test_time']
            else:
              self.test_time = "1:00:00"

  def runcmd(self,cmd):
    if(self.dryrun):
       print("would have executed {}".format(cmd))
    else:
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
       if(self.dryrun):
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
    for headerType in ["build","test","python"]:
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
        file_out.write("cd {}/src/addon/ESMPy".format(os.getcwd()))
      if("unloadmodule" in self.machine_list[comp]):
        file_out.write("\nmodule unload {}\n".format(self.machine_list[comp]['unloadmodule']))
      if("modulepath" in self.machine_list):
        modulepath = self.machine_list['modulepath']
        file_out.write("\nmodule use {}\n".format(self.machine_list['modulepath']))
      if("extramodule" in self.machine_list[comp]):
        file_out.write("\nmodule load {}\n".format(self.machine_list[comp]['extramodule']))

      mpiflavor = mpidict[key]
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

      if(build_type == "build"):
        file_out.write("module list >& module-build.log\n\n")
      elif(build_type == "test"):
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
        cmdstring = "make -j {} clean 2>&1| tee clean_$JOBID.log \nmake -j {} 2>&1| tee build_$JOBID.log\n\n".format(self.cpn,self.cpn)
      elif(headerType == "test"):
        cmdstring = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \nchmod +x runpython.sh\n"
      else:
        cmdstring = "python3 setup.py test_examples_dryrun\npython3 setup.py test_regrid_from_file_dryrun\npython3 setup.py test_regrid_from_file_dryrun\n"
      file_out.write(cmdstring)


      if(("pythontest" in mpiflavor) and (headerType == "test")):
           cmdstring = "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\ncd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
           file_out.write(cmdstring)
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
    print("HEY!! in create get res")
    get_res_file = open("getres-build.sh", "w")
    get_res_file.write("#!{} -l\n".format(self.bash))
    get_res_file.write("{} >& /dev/null &\n".format(monitor_cmd_build))
    get_res_file.close() 
    os.system("chmod +x getres-build.sh")      

    get_res_file = open("getres-test.sh", "w")
    get_res_file.write("#!{} -l\n".format(self.bash))
    get_res_file.write("{} >& /dev/null &\n".format(monitor_cmd_test))
    get_res_file.close()
    os.system("chmod +x getres-test.sh")      

  def createJobCards(self):
      for build_type in self.build_types:
        for comp in self.machine_list['compiler']:
         for ver in self.machine_list[comp]['versions']:
            print("{}".format(self.machine_list[comp]['versions'][ver]['mpi']))
            mpidict = self.machine_list[comp]['versions'][ver]['mpi']
            mpitypes= mpidict.keys()
            print(self.machine_list[comp]['versions'][ver])
            for key in mpitypes:
              for branch in self.machine_list['branch']:
                if("nuopcbranch" in self.machine_list):
                  nuopcbranch = self.machine_list['nuopcbranch']
                else: 
                  nuopcbranch = branch
                subdir="{}_{}_{}_{}_{}".format(comp,ver,key,build_type,branch)
                subdir = re.sub("/","_",subdir) #Some branches have a slash, so replace that with underscore
                if(self.https == True):
                  cmdstring = "git clone -b {} https://github.com/esmf-org/esmf {}".format(branch,subdir)
                  nuopcclone = "git clone -b {} https://github.com/esmf-org/nuopc-app-prototypes".format(nuopcbranch)
                else:
                  cmdstring = "git clone -b {} git@github.com:esmf-org/esmf {}".format(branch,subdir)
                  nuopcclone = "git clone -b {} git@github.com:esmf-org/nuopc-app-prototypes".format(nuopcbranch)
                self.updateRepo(subdir,branch,nuopcbranch)
                self.b_filename = 'build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
                self.t_filename = 'test-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
                self.fb = open(self.b_filename, "w")
                self.ft = open(self.t_filename, "w")
                self.scheduler.create_headers(self)
                print("creating scripts")
                self.createScripts(build_type,comp,ver,mpidict,mpitypes,key,branch)
                self.scheduler.submit(self,subdir,self.mpiver,branch)
                os.chdir("..")

    
if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='ESMF nightly build/test system')
  parser.add_argument('-w','--workdir', help='directory where builds will be mad #', required=False,default=os.getcwd())
  parser.add_argument('-y','--yaml', help='Yaml file defining builds and testing parameters', required=True)
  parser.add_argument('-a','--artifacts', help='directory where artifacts will be placed', required=True)
  parser.add_argument('-d','--dryrun', help='directory where artifacts will be placed', required=False,default=False)
  args = vars(parser.parse_args())
  
  test = ESMFTest(args['yaml'],args['artifacts'],args['workdir'],args['dryrun'])  
    
