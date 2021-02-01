import yaml
import os
import subprocess
import sys


inpfile = sys.argv[1]
print("reading {}".format(inpfile))
with open(inpfile) as file:
  machine_list = yaml.load(file, Loader=yaml.FullLoader)
  machine_name = machine_list['machine']
  account = machine_list['account']
  queue = machine_list['queue']
  cpn = machine_list['corespernode']
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
          cmdstring = "git clone -b ESMF_8_0_2branch git@github.com:esmf-org/esmf {}_{}_{}_{}".format(comp,ver,key,build_type)
          status= subprocess.check_output(cmdstring,shell=True).strip().decode('utf-8')
          subdir="{}_{}_{}_{}".format(comp,ver,key,build_type)
          os.chdir(subdir)
          filename = 'build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
          t_filename = 'test-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
          fb = open(filename, "w")
          ft = open(t_filename, "w")
          fb.write("#!/bin/sh\n")
          fb.write("#SBATCH -o {}_%j.o\n".format(filename))
          fb.write("#SBATCH -e {}_%j.e\n".format(filename))
          fb.write("#SBATCH --account={}\n".format(account))
          fb.write("#SBATCH --partition={}\n".format(machine_name))
          fb.write("#SBATCH --qos={}\n".format(queue))
          fb.write("#SBATCH --nodes=1\n")
          fb.write("#SBATCH --ntasks-per-node={}\n".format(cpn))
          fb.write("#SBATCH --time=1:00:00\n")
          fb.write("#SBATCH --exclusive\n")

          ft.write("#!/bin/sh\n")
          ft.write("#SBATCH -o {}_%j.o\n".format(t_filename))
          ft.write("#SBATCH -e {}_%j.e\n".format(t_filename))
          ft.write("#SBATCH --account={}\n".format(account))
          ft.write("#SBATCH --partition={}\n".format(machine_name))
          ft.write("#SBATCH --qos={}\n".format(queue))
          ft.write("#SBATCH --nodes=1\n")
          ft.write("#SBATCH --ntasks-per-node={}\n".format(cpn))
          ft.write("#SBATCH --time=2:00:00\n")
          ft.write("#SBATCH --exclusive\n")
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
            modulecmd = "module load {} {} netcdf/{}\nmodule list\n".format(machine_list[comp]['versions'][ver]['module'],mpiver,machine_list[comp]['versions'][ver]['netcdf'])
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
