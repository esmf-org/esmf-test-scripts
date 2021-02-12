import yaml
import os
import time
import subprocess
import sys
import pathlib


def create_header(file_out,scheduler,filename,time,account,partition,queue,cpn,cluster):
  if(scheduler == "slurm"): 
    file_out.write("#!/bin/sh -l\n")
    file_out.write("#SBATCH -o {}_%j.o\n".format(filename))
    file_out.write("#SBATCH -e {}_%j.e\n".format(filename))
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
  elif(scheduler == "pbs"): 
    file_out.write("#!/bin/sh -l\n")
    file_out.write("#PBS -N {}\n".format(filename))
    file_out.write("#PBS -q {}\n".format(queue))
    file_out.write("#PBS -A {}\n".format(account))
    file_out.write("#PBS -l select=1:ncpus={}:mpiprocs={}\n".format(cpn,cpn))
    file_out.write("#PBS -l walltime={}\n".format(time))
    file_out.write("cd {}\n".format(os.getcwd()))

def main(argv):
  mypath=pathlib.Path(__file__).parent.absolute()
  inpfile = sys.argv[1]
  artifacts_root = sys.argv[2]
  print("reading {}".format(inpfile))
  with open(inpfile) as file:
    machine_list = yaml.load(file, Loader=yaml.FullLoader)
    machine_name = machine_list['machine']
    if("git-https" in machine_list):
      https = True
    else: 
      https = False
    account = machine_list['account']
    if("partition" in machine_list):
      partition = machine_list['partition']
    else: 
      partition = "None"
    account = machine_list['account']
    queue = machine_list['queue']
    cpn = machine_list['corespernode']
    scheduler = machine_list['scheduler']
    build_types = ['O','g']
    script_dir=os.getcwd()
    if("cluster" in machine_list):
      cluster=machine_list['cluster']
    else:
      cluster="None"
    for build_type in build_types:
      for comp in machine_list['compiler']:
  
       for ver in machine_list[comp]['versions']:
          print("HEY {}".format(machine_list[comp]['versions'][ver]['mpi']))
          mpidict = machine_list[comp]['versions'][ver]['mpi']
          mpitypes= mpidict.keys()
          print(machine_list[comp]['versions'][ver])
          for key in mpitypes:
            
            subdir="{}_{}_{}_{}".format(comp,ver,key,build_type)
            if(not(os.path.isdir(subdir))):
               if(https == True):
#                cmdstring = "git clone -b ESMF_8_1_0_beta_snapshot_43 https://github.com/esmf-org/esmf {}".format(subdir)
                 cmdstring = "git clone -b develop https://github.com/esmf-org/esmf {}".format(subdir)
               else:
#                cmdstring = "git clone -b ESMF_8_1_0_beta_snapshot_43 git@github.com:esmf-org/esmf {}".format(subdir)
                 cmdstring = "git clone -b develop git@github.com:esmf-org/esmf {}".format(subdir)
               status= subprocess.check_output(cmdstring,shell=True).strip().decode('utf-8')
            os.chdir(subdir)
            os.system("rm -rf obj mod lib examples test *.e *.o *bat.e* *bat.o*")
            os.system("git checkout develop")
            os.system("git pull origin develop")
            filename = 'build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
            t_filename = 'test-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
            fb = open(filename, "w")
            ft = open(t_filename, "w")

            if('build_time' in machine_list[comp]):
              build_time = machine_list[comp]['build_time']
            else:
              build_time = "1:00:00"
            create_header(fb,scheduler,filename,build_time,account,partition,queue,cpn,cluster)

            if('test_time' in machine_list[comp]):
              test_time = machine_list[comp]['test_time']
            else:
              test_time = "1:00:00"
            create_header(ft,scheduler,t_filename,test_time,account,partition,queue,cpn,cluster)
  
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

            if('extra_env_vars' in machine_list[comp]['versions'][ver]):
                for var in machine_list[comp]['versions'][ver]['extra_env_vars']:
                  fb.write("export {}\n".format(machine_list[comp]['versions'][ver]['extra_env_vars'][var]))
                  ft.write("export {}\n".format(machine_list[comp]['versions'][ver]['extra_env_vars'][var]))

            if('extra_commands' in machine_list[comp]['versions'][ver]):
                for cmd in machine_list[comp]['versions'][ver]['extra_commands']:
                  fb.write("{}\n".format(machine_list[comp]['versions'][ver]['extra_commands'][cmd]))
                  ft.write("{}\n".format(machine_list[comp]['versions'][ver]['extra_commands'][cmd]))

            mpiflavor = mpidict[key]
            if(mpiflavor == "None"):
              mpiflavor = ""
  
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
  
            cmdstring="export ESMF_TEST_EXHAUSTIVE='ON'\n"
            fb.write(cmdstring)
            ft.write(cmdstring)
  
            cmdstring="export ESMF_TEST_WITHTHREADS='ON'\n"
            fb.write(cmdstring)
            ft.write(cmdstring)

            if("mpi_env_vars" in mpidict[key]):
              for mpi_var in mpidict[key]['mpi_env_vars']:
                fb.write("export {}\n".format(mpidict[key]['mpi_env_vars'][mpi_var]))
                ft.write("export {}\n".format(mpidict[key]['mpi_env_vars'][mpi_var]))
            if(machine_list[comp]['versions'][ver]['netcdf'] == "None" ):
              modulecmd = "module load {} {} \nmodule list\n".format(machine_list[comp]['versions'][ver]['compiler'],mpiflavor['module'])
            else:
              modulecmd = "module load {} {} {}\nmodule list\n".format(machine_list[comp]['versions'][ver]['compiler'],mpiflavor['module'],machine_list[comp]['versions'][ver]['netcdf'])
            mpimodule = mpiflavor['module']
            if(mpimodule == "None"):
              mpiver = "None"
            else:
              mpiver = mpiflavor['module'].split('/')[-1]
            fb.write(modulecmd)
            ft.write(modulecmd)
            cmdstring = "make -j {}\n\n".format(cpn)
            fb.write(cmdstring)
            cmdstring = "make all_tests\n\n"
            ft.write(cmdstring)
  
            fb.close()
            ft.close()
            if(scheduler == "slurm"):
              batch_build = "sbatch {}".format(filename)
              print(batch_build)
              jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split()[3]
              monitor_cmd = "python3 {}/get-results.py {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver)
              proc = subprocess.Popen(monitor_cmd, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
              # submit the second job to be dependent on the first
              batch_test = "sbatch --depend=afterok:{} {}".format(jobnum,t_filename)
              print("Submitting test_batch with command: {}".format(batch_test))
              jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split()[3]
              monitor_cmd = "python3 {}/get-results.py {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver)
              proc = subprocess.Popen(monitor_cmd, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
            elif(scheduler == "pbs"):
              batch_build = "qsub {}".format(filename)
              print(batch_build)
              jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split(".")[0]
              monitor_cmd = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver)
              print(monitor_cmd)
              proc = subprocess.Popen(monitor_cmd, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
              print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build,jobnum))
              # submit the second job to be dependent on the first
              batch_test = "qsub -W depend=afterok:{} {}".format(jobnum,t_filename)
              print("Submitting test_batch with command: {}".format(batch_test))
              jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split(".")[0]
              monitor_cmd = \
                   "python3 {}/get-results.py {} {} {} {} {} {} {}".format(mypath,jobnum,subdir,machine_name,scheduler,script_dir,artifacts_root,mpiver)
              print(monitor_cmd)
              proc = subprocess.Popen(monitor_cmd, shell=True)
            os.chdir("..")
  
  
if __name__ == "__main__":
    main(sys.argv[1:])
  
