import yaml
import os
import subprocess
import sys


def create_header(file_out,scheduler,filename,time,account,machine_name,queue,cpn):
  if(scheduler == "slurm"): 
    file_out.write("#!/bin/sh\n")
    file_out.write("#SBATCH -o {}_%j.o\n".format(filename))
    file_out.write("#SBATCH -e {}_%j.e\n".format(filename))
    file_out.write("#SBATCH --account={}\n".format(account))
    file_out.write("#SBATCH --partition={}\n".format(machine_name))
    file_out.write("#SBATCH --qos={}\n".format(queue))
    file_out.write("#SBATCH --nodes=1\n")
    file_out.write("#SBATCH --ntasks-per-node={}\n".format(cpn))
    file_out.write("#SBATCH --time={}\n".format(time))
    file_out.write("#SBATCH --exclusive\n")
  elif(scheduler == "pbs"): 
    file_out.write("#!/bin/sh\n")
    file_out.write("#PBS -o {}_%j.o\n".format(filename))
    file_out.write("#PBS -e {}_%j.e\n".format(filename))
    file_out.write("#PBS -q {}\n".format(queue))
    file_out.write("#PBS -A {}\n".format(account))
    file_out.write("#PBS -l select=1:ncpus={}:mpiprocs={}\n".format(cpn,cpn))
    file_out.write("#PBS -l walltime={}\n".format(time))

def main(argv):
  inpfile = sys.argv[1]
  print("reading {}".format(inpfile))
  with open(inpfile) as file:
    machine_list = yaml.load(file, Loader=yaml.FullLoader)
    machine_name = machine_list['machine']
    account = machine_list['account']
    queue = machine_list['queue']
    cpn = machine_list['corespernode']
    scheduler = machine_list['scheduler']
    print(machine_list['compiler'])
    build_types = ['O','g']
    for build_type in build_types:
      for comp in machine_list['compiler']:
  
       for ver in machine_list[comp]['versions']:
          print(comp, ver, machine_list[comp]['versions'][ver])
          print(comp, ver, machine_list[comp]['versions'][ver]['module'])
          print(comp, ver, machine_list[comp]['versions'][ver]['netcdf'])
          mpidict = machine_list[comp]['versions'][ver]['mpi']
          mpitypes= mpidict.keys()
          for key in mpitypes:
            subdir="{}_{}_{}_{}".format(comp,ver,key,build_type)
            if(not(os.path.isdir(subdir))):
               cmdstring = "git clone -b ESMF_8_0_2branch git@github.com:esmf-org/esmf {}".format(subdir)
               status= subprocess.check_output(cmdstring,shell=True).strip().decode('utf-8')
            os.chdir(subdir)
            filename = 'build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
            t_filename = 'test-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
            fb = open(filename, "w")
            ft = open(t_filename, "w")
            create_header(fb,scheduler,filename,"1:00:00",account,machine_name,queue,cpn)
            create_header(ft,scheduler,t_filename,"2:00:00",account,machine_name,queue,cpn)
  
            if("extramodule" in machine_list[comp]):
              print("HEY module is ",machine_list[comp]['extramodule'])
              fb.write("\nmodule load {}\n".format(machine_list[comp]['extramodule']))

            mpiver = mpidict[key]
  
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
            if(machine_list[comp]['versions'][ver]['netcdf'] == "None" ):
              modulecmd = "module load {} {} \nmodule list\n".format(machine_list[comp]['versions'][ver]['module'],mpiver)
            else:
              modulecmd = "module load {} {} {}\nmodule list\n".format(machine_list[comp]['versions'][ver]['module'],mpiver,machine_list[comp]['versions'][ver]['netcdf'])
            fb.write(modulecmd)
            ft.write(modulecmd)
            cmdstring = "make -j 12\n\n"
            fb.write(cmdstring)
            cmdstring = "make all_tests\n\n"
            ft.write(cmdstring)
  
            fb.close()
            ft.close()
            batch_build = "sbatch {}".format(filename)
            print(batch_build)
            jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split()[3]
            # submit the second job to be dependent on the first
            batch_test = "sbatch --depend=afterok:{} {}".format(jobnum,t_filename)
            print("Submitting test_batch with command: {}".format(batch_test))
            jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split()[3]
            os.chdir("..")
  
  
if __name__ == "__main__":
    main(sys.argv[1:])
  
