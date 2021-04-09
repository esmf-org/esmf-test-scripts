import yaml
import os
import time
import subprocess
import sys
import pathlib


def create_header(file_out,scheduler,filename,time,account,partition,queue,cpn,cluster,bash):
  if(scheduler == "slurm"): 
    file_out.write("#!{} -l\n".format(bash))
    file_out.write("#SBATCH --account={}\n".format(account))
    if(partition != "None"):
      file_out.write("#SBATCH --partition={}\n".format(partition))
    if(cluster != "None"):
      file_out.write("#SBATCH --cluster={}\n".format(cluster))
    file_out.write("#SBATCH --qos={}\n".format(queue))
    file_out.write("#SBATCH --nodes=1\n")
    file_out.write("#SBATCH --ntasks-per-node={}\n".format(cpn))
    file_out.write("#SBATCH --time={}\n".format(time))
    file_out.write("#SBATCH --exclusive\n")
    file_out.write("#SBATCH --output {}_%j.o\n".format(filename))
    file_out.write("export JOBID=$SLURM_JOBID\n")
  elif(scheduler == "pbs"): 
    file_out.write("#!{} -l\n".format(bash))
    file_out.write("#PBS -N {}\n".format(filename))
    file_out.write("#PBS -j oe\n")
    file_out.write("#PBS -q {}\n".format(queue))
    file_out.write("#PBS -A {}\n".format(account))
    file_out.write("#PBS -l select=1:ncpus={}:mpiprocs={}\n".format(cpn,cpn))
    file_out.write("#PBS -l walltime={}\n".format(time))
    file_out.write("JOBID=\"`echo $PBS_JOBID | cut -d. -f1`\"\n\n")
    file_out.write("cd {}\n".format(os.getcwd()))
  elif(scheduler == "None"): 
    file_out.write("#!{} -l\n".format(bash))
    file_out.write("export JOBID=$1\n")

def main(argv):
  mypath=pathlib.Path(__file__).parent.absolute()
  inpfile = sys.argv[1]
  artifacts_root = sys.argv[2]
  print("reading {}".format(inpfile))
  with open(inpfile) as file:
    machine_list = yaml.load(file, Loader=yaml.FullLoader)
    machine_name = machine_list['machine']
    if("bash" in machine_list):
      bash = machine_list['bash']
    else: 
      bash = "/bin/bash"
    if("git-https" in machine_list):
      https = True
    else: 
      https = False
    if("account" in machine_list):
      account = machine_list['account']
    else: 
      account = "None"
    if("partition" in machine_list):
      partition = machine_list['partition']
    else: 
      partition = "None"
    if("queue" in machine_list):
      queue = machine_list['queue']
    else: 
      queue = "None"
    if("headnodename" in machine_list):
      headnodename = machine_list["headnodename"]
    else:
      headnodename = os.uname()[1]
    cpn = machine_list['corespernode']
    scheduler = machine_list['scheduler']
    if("branch" in machine_list):
      branch = machine_list['branch']
    else: 
      branch = "develop"
    if("nuopcbranch" in machine_list):
      nuopcbranch = machine_list['nuopcbranch']
    else: 
      nuopcbranch = branch
    build_types = ['O','g']
#   build_types = ['O']
    script_dir=os.getcwd()
    if("cluster" in machine_list):
      cluster=machine_list['cluster']
    else:
      cluster="None"
    for build_type in build_types:
      for comp in machine_list['compiler']:
  
       for ver in machine_list[comp]['versions']:
          mpidict = machine_list[comp]['versions'][ver]['mpi']
          mpitypes= mpidict.keys()
          print(machine_list[comp]['versions'][ver])
          for key in mpitypes:
            
            subdir="{}_{}_{}_{}".format(comp,ver,key,build_type)
            if(https == True):
              cmdstring = "git clone -b {} https://github.com/esmf-org/esmf {}".format(branch,subdir)
              nuopcclone = "git clone -b {} https://github.com/esmf-org/nuopc-app-prototypes".format(nuopcbranch)
            else:
              cmdstring = "git clone -b {} git@github.com:esmf-org/esmf {}".format(branch,subdir)
              nuopcclone = "git clone -b {} git@github.com:esmf-org/nuopc-app-prototypes".format(nuopcbranch)
            os.system("rm -rf {}".format(subdir))
            if(not(os.path.isdir(subdir))):
              status= subprocess.check_output(cmdstring,shell=True).strip().decode('utf-8')
            os.chdir(subdir)
            os.system("rm -rf *.e *.o *bat.e* *bat.o* *.log DEFAULTINSTALLDIR nuopc-app-prototypes")
            os.system("git remote update; git checkout {}".format(branch))
            os.system("git pull origin {}".format(branch))
            status= subprocess.check_output(nuopcclone,shell=True).strip().decode('utf-8')
            print("status from nuopc clone command {} was {}".format(nuopcclone,status))
            filename = 'build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
            t_filename = 'test-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
            fb = open(filename, "w")
            ft = open(t_filename, "w")

            if('build_time' in machine_list[comp]):
              build_time = machine_list[comp]['build_time']
            else:
              build_time = "1:00:00"
            create_header(fb,scheduler,filename,build_time,account,partition,queue,cpn,cluster,bash)

            if('test_time' in machine_list[comp]):
              test_time = machine_list[comp]['test_time']
            else:
              test_time = "1:00:00"
            create_header(ft,scheduler,t_filename,test_time,account,partition,queue,cpn,cluster,bash)
            if("unloadmodule" in machine_list[comp]):
              fb.write("\nmodule unload {}\n".format(machine_list[comp]['unloadmodule']))
              ft.write("\nmodule unload {}\n".format(machine_list[comp]['unloadmodule']))
            if("modulepath" in machine_list):
              modulepath = machine_list['modulepath']
              fb.write("\nmodule use {}\n".format(machine_list['modulepath']))
              ft.write("\nmodule use {}\n".format(machine_list['modulepath']))
            if("extramodule" in machine_list[comp]):
              fb.write("\nmodule load {}\n".format(machine_list[comp]['extramodule']))
              ft.write("\nmodule load {}\n".format(machine_list[comp]['extramodule']))

            mpiflavor = mpidict[key]
            if(mpiflavor['module'] == "None"):
              mpiflavor['module'] = ""
              cmdstring = "export ESMF_MPIRUN={}/src/Infrastructure/stubs/mpiuni/mpirun\n".format(os.getcwd())
              fb.write(cmdstring)
              ft.write(cmdstring)

            if("mpi_env_vars" in mpidict[key]):
              for mpi_var in mpidict[key]['mpi_env_vars']:
                fb.write("export {}\n".format(mpidict[key]['mpi_env_vars'][mpi_var]))
                ft.write("export {}\n".format(mpidict[key]['mpi_env_vars'][mpi_var]))

            if(machine_list[comp]['versions'][ver]['netcdf'] == "None" ):
              modulecmd = "module load {} {} \n\n".format(machine_list[comp]['versions'][ver]['compiler'],mpiflavor['module'])
              esmfnetcdf = "\n"
              fb.write(modulecmd)
              ft.write(modulecmd)
            else:
              modulecmd = "module load {} {} {}\n".format(machine_list[comp]['versions'][ver]['compiler'],mpiflavor['module'],machine_list[comp]['versions'][ver]['netcdf'])
              esmfnetcdf = "export ESMF_NETCDF=nc-config\n\n"
              fb.write(modulecmd)
              ft.write(modulecmd)

            if("hdf5" in machine_list[comp]['versions'][ver]):
              modulecmd = "module load {} \nmodule list\n".format(machine_list[comp]['versions'][ver]['hdf5'])
              fb.write(modulecmd)
              ft.write(modulecmd)
            if("netcdf-fortran" in machine_list[comp]['versions'][ver]):
              modulecmd = "module load {} \nmodule list\n".format(machine_list[comp]['versions'][ver]['netcdf-fortran'])
              fb.write(modulecmd)
              ft.write(modulecmd)

            modulecmd_b = "module list >& module-build.log\n\n"
            modulecmd_t = "module list >& module-test.log\n\n"
            fb.write(modulecmd_b)
            ft.write(modulecmd_t)

            fb.write("set -x\n") 
            ft.write("set -x\n")

            fb.write(esmfnetcdf)
            ft.write(esmfnetcdf)

#           if("extramodule" in machine_list[comp]):
#             fb.write("\nmodule load {}\n".format(machine_list[comp]['extramodule']))
#             ft.write("\nmodule load {}\n".format(machine_list[comp]['extramodule']))

            if('extra_env_vars' in machine_list[comp]['versions'][ver]):
                for var in machine_list[comp]['versions'][ver]['extra_env_vars']:
                  fb.write("export {}\n".format(machine_list[comp]['versions'][ver]['extra_env_vars'][var]))
                  ft.write("export {}\n".format(machine_list[comp]['versions'][ver]['extra_env_vars'][var]))

            if('extra_commands' in machine_list[comp]['versions'][ver]):
                for cmd in machine_list[comp]['versions'][ver]['extra_commands']:
                  fb.write("{}\n".format(machine_list[comp]['versions'][ver]['extra_commands'][cmd]))
                  ft.write("{}\n".format(machine_list[comp]['versions'][ver]['extra_commands'][cmd]))

            cmdstring = "export ESMF_DIR={}\n".format(os.getcwd())
            fb.write(cmdstring)
            ft.write(cmdstring)
  
            cmdstring = "export ESMF_COMPILER={}\n".format(comp)
            fb.write(cmdstring)
            ft.write(cmdstring)
  
            cmdstring="export ESMF_COMM={}\n".format(key)
            fb.write(cmdstring)
            ft.write(cmdstring)
  
            cmdstring="export ESMF_BOPT='{}'\n".format(build_type)
            fb.write(cmdstring)
            ft.write(cmdstring)
  
            cmdstring="export ESMF_TESTEXHAUSTIVE='ON'\n"
            fb.write(cmdstring)
            ft.write(cmdstring)
  
            cmdstring="export ESMF_TESTWITHTHREADS='ON'\n"
            fb.write(cmdstring)
            ft.write(cmdstring)

            cmdstring = "make -j {} clean 2>&1| tee clean_$JOBID.log \nmake -j {} 2>&1| tee build_$JOBID.log\n\n".format(cpn,cpn)
            fb.write(cmdstring)

            cmdstring = "make info 2>&1| tee info.log \nmake install 2>&1| tee install_$JOBID.log \nmake all_tests 2>&1| tee test_$JOBID.log \n\n"
            ft.write(cmdstring)

            cmdstring = "export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\ncd nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log \n\n"
            ft.write(cmdstring)

            if("pythontest" in mpiflavor):
                 print("HEY!!")
                 cmdstring = "\ncd ../src/addon/ESMPy\n"
                 ft.write(cmdstring)
                 cmdstring = "\nexport PATH=$PATH:$HOME/.local/bin\n".format(os.getcwd())
                 ft.write(cmdstring)
                 cmdstring = "python3 setup.py build 2>&1 | tee python_build.log\n".format(headnodename)
                 ft.write(cmdstring)
                 cmdstring = "ssh {} \"export PATH=$PATH:$HOME/.local/bin;module load python/3.6.8;cd $PWD; python3 setup.py test_examples_dryrun\"\n".format(headnodename)
                 ft.write(cmdstring)
                 cmdstring = "ssh {} \"export PATH=$PATH:$HOME/.local/bin;module load python/3.6.8;cd $PWD; python3 setup.py test_regrid_from_file_dryrun\"\n".format(headnodename)
                 ft.write(cmdstring)
                 cmdstring = "ssh {} \"export PATH=$PATH:$HOME/.local/bin;module load python/3.6.8;cd $PWD; python3 setup.py test_regrid_from_file_dryrun\"\n".format(headnodename)
                 ft.write(cmdstring)
                 cmdstring = "python3 setup.py test 2>&1 | tee python_test.log\n".format(headnodename)
                 ft.write(cmdstring)
                 cmdstring = "python3 setup.py test_examples 2>&1 | tee python_examples.log\n".format(headnodename)
                 ft.write(cmdstring)
                 cmdstring = "python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log\n".format(headnodename)
                 ft.write(cmdstring)

            if(scheduler == "pbs"):
              cmd_build = "ssh {} {}/getres-build.sh\n".format(headnodename,os.getcwd())
              cmd_test = "ssh {} {}/getres-test.sh\n".format(headnodename,os.getcwd())
              fb.write("{}\n".format(cmd_build))
              ft.write("{}\n".format(cmd_test))
            fb.close()
            ft.close()

            mpimodule = mpiflavor['module']
            if(mpimodule == ""):
              mpiver = "None"
            else:
              mpiver = mpiflavor['module'].split('/')[-1]

  
            if(scheduler == "slurm"):
              batch_build = "sbatch {}".format(filename)
              print(batch_build)
              jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split()[3]
              monitor_cmd_build = "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver,branch)
              print(monitor_cmd_build)
              proc = subprocess.Popen(monitor_cmd_build, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
              # submit the second job to be dependent on the first
              batch_test = "sbatch --depend=afterok:{} {}".format(jobnum,t_filename)
              print("Submitting test_batch with command: {}".format(batch_test))
              jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split()[3]
              monitor_cmd_test = "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver,branch)
              print(monitor_cmd_test)
              proc = subprocess.Popen(monitor_cmd_test, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
            elif(scheduler == "pbs"):
              batch_build = "qsub {}".format(filename)
              print(batch_build)
              jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split(".")[0]
              print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build,jobnum))
              monitor_cmd_build = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver,branch)
              print(monitor_cmd_build)
#             proc = subprocess.Popen(monitor_cmd_build, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
              # submit the second job to be dependent on the first
              batch_test = "qsub -W depend=afterok:{} {}".format(jobnum,t_filename)
              print("Submitting test_batch with command: {}".format(batch_test))
              jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split(".")[0]
              monitor_cmd_test = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver,branch)
              print(monitor_cmd_test)
#             proc = subprocess.Popen(monitor_cmd_test, shell=True)
            elif(scheduler == "None"):
              os.system("chmod +x {}".format(filename))
              jobnum = 12345
              os.system("./{} {}".format(filename,jobnum))
              monitor_cmd_build = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver,branch)
              jobnum = 12346
              os.system("{}".format(monitor_cmd_build))
              os.system("chmod +x {}".format(t_filename))
              os.system("./{} {}".format(t_filename,jobnum))
              monitor_cmd_test = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver,branch)
              os.system("{}".format(monitor_cmd_test))

# write these out no matter what, so we can run them manually, if necessary
            get_res_file = open("getres-build.sh", "w")
            get_res_file.write("#!{} -l\n".format(bash))
            get_res_file.write("{} >& /dev/null &\n".format(monitor_cmd_build))
            get_res_file.close() 
            os.system("chmod +x getres-build.sh")      

            get_res_file = open("getres-test.sh", "w")
            get_res_file.write("#!{} -l\n".format(bash))
            get_res_file.write("{} >& /dev/null &\n".format(monitor_cmd_test))
            get_res_file.close()
            os.system("chmod +x getres-test.sh")      
              
            os.chdir("..")
  
  
if __name__ == "__main__":
    main(sys.argv[1:])
  
