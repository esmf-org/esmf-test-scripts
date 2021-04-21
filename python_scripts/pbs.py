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
    # add ssh back to the head node for archiving of results to batch scripts
    test.runcmd("echo \"ssh {} {}/getres-build.sh\" >> {}".format(test.headnodename,os.getcwd(),test.b_filename))
    test.runcmd("echo \"ssh {} {}/getres-test.sh\" >> {}".format(test.headnodename,os.getcwd(),test.t_filename))
    batch_build = "qsub {}".format(test.b_filename)
    print(batch_build)
    if(test.dryrun == True):
      jobnum = 1234
    else:
      jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split(".")[0]
    print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build,jobnum))
    monitor_cmd_build = \
                   "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch,test.dryrun)
    # submit the second job to be dependent on the first
    getrescmd = "ssh {} {}/getres-test.sh".format(test.headnodename,os.getcwd())
    os.system("echo {} >> {}".format(getrescmd,test.t_filename))
    batch_test = "qsub -W depend=afterok:{} {}".format(jobnum,test.t_filename)
    print("Submitting test_batch with command: {}".format(batch_test))
    if(test.dryrun == True):
      jobnum = 1234
    else:
      jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split(".")[0]
    monitor_cmd_test = \
                   "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch,test.dryrun)
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)
    

  def checkqueue(self,jobid):
    queue_query = "qstat -H {} | tail -n 1 | awk -F ' +' '{{print $10}}'".format(jobid)
    try:
      result= subprocess.check_output(queue_query,shell=True).strip().decode('utf-8')
      if(result == "F"): #could check for R and Q to see if it is running or waiting
        return True
      else:
        return False
    except:
      result="done"
      return True
    return False

