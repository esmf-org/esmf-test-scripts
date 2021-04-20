import os
import subprocess
from scheduler import scheduler

class pbs(scheduler):
  def __init__(self,scheduler_type):
     self.type = scheduler_type


  def createHeaders(self,test):
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
      file_out.write("JOBID=\"`echo $PBS_JOBID | cut -d. -f1`\"\n\n")
      file_out.write("cd {}\n".format(os.getcwd()))

  def submitJob(self,test,subdir,mpiver,branch):
    batch_build = "qsub {}".format(test.b_filename)
    print(batch_build)
    jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split(".")[0]
    print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build,jobnum))
    monitor_cmd_build = \
        "python3 {}/python_scripts/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    print(monitor_cmd_build)
    # submit the second job to be dependent on the first
    batch_test = "qsub -W depend=afterok:{} {}".format(jobnum,test.t_filename)
    print("Submitting test_batch with command: {}".format(batch_test))
    jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split(".")[0]
    monitor_cmd_test = \
        "python3 {}/python_scripts/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)
