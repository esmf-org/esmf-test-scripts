import os
import re
import subprocess
import sys
from scheduler import scheduler

class pbs(scheduler):
  def __init__(self, scheduler_type, pbs_node_specifier, pbs_job_checker):
    """
    Args:
    - scheduler_type: should be "pbs"
    - pbs_node_specifier: method of specifying node request ("default" or "nodes_ppn")
    - pbs_job_checker: method of checking whether a job is complete ("default" or "tracejob")
        tracejob is useful for machines that don't support qstat -H. However, the parsing of
        tracejob output is likely to be more fragile than parsing qstat -H, so this should be
        used with caution.
    """
    self.type = scheduler_type
    self._pbs_node_specifier = pbs_node_specifier
    self._pbs_job_checker = pbs_job_checker

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

      if self._pbs_node_specifier == "nodes_ppn":
        file_out.write("#PBS -l nodes=1:ppn={}\n".format(test.cpn))
      elif self._pbs_node_specifier == "default":
        file_out.write("#PBS -l select=1:ncpus={}:mpiprocs={}\n".format(test.cpn,test.cpn))
      else:
        sys.exit("unsupported pbs_node_specifier: {}".format(self._pbs_node_specifier))

      file_out.write("JOBID=\"`echo $PBS_JOBID | cut -d. -f1`\"\n\n")
      file_out.write("cd {}\n".format(os.getcwd()))

  def submitJob(self,test,subdir,mpiver,branch):
    # add ssh back to the head node for archiving of results to batch scripts
#   test.runcmd("echo \"ssh {} {}/getres-build.sh\" >> {}".format(test.headnodename,os.getcwd(),test.b_filename))
#   test.runcmd("echo \"ssh {} {}/getres-test.sh\" >> {}".format(test.headnodename,os.getcwd(),test.t_filename))
    batch_build = "qsub {}".format(test.b_filename)
    print(batch_build)
    if(test.dryrun == True):
      jobnum = 1234
    else:
      jobnum= subprocess.check_output(batch_build,shell=True).strip().decode('utf-8').split(".")[0]
    print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build,jobnum))
    monitor_cmd_build = \
                   "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {} --pbs-node-specifier {} --pbs-job-checker {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch,test.dryrun,self._pbs_node_specifier,self._pbs_job_checker)
    if(test.dryrun == True):
      print(monitor_cmd_build)
    else:
      proc = subprocess.Popen(monitor_cmd_build, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
    # submit the second job to be dependent on the first
#   getrescmd = "ssh {} {}/getres-test.sh".format(test.headnodename,os.getcwd())
#   os.system("echo {} >> {}".format(getrescmd,test.t_filename))
    batch_test = "qsub -W depend=afterok:{} {}".format(jobnum,test.t_filename)
    print("Submitting test_batch with command: {}".format(batch_test))
    if(test.dryrun == True):
      jobnum = 1234
    else:
      jobnum= subprocess.check_output(batch_test,shell=True).strip().decode('utf-8').split(".")[0]
    monitor_cmd_test = \
                   "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {} --pbs-node-specifier {} --pbs-job-checker {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch,test.dryrun,self._pbs_node_specifier,self._pbs_job_checker)
    if(test.dryrun == True):
      print(monitor_cmd_test)
    else:
      proc = subprocess.Popen(monitor_cmd_test, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)
    

  def checkqueue(self,jobid):
    if self._pbs_job_checker == "tracejob":
      return self._checkqueue_tracejob(jobid)
    elif self._pbs_job_checker == "default":
      return self._checkqueue_default(jobid)
    else:
      sys.exit("unsupported pbs_job_checker: {}".format(self._pbs_job_checker))

  def _checkqueue_default(self,jobid):
    if(int(jobid) < 0):
      return True
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

  def _checkqueue_tracejob(self,jobid):
    if int(jobid) < 0:
      return True

    # -w 9999 tells tracejob to assume we have a terminal of width 9999 characters;
    # this should be enough to ensure that each entry appears on a single line, rather
    # than being split across multiple lines (which can otherwise happen for a narrow
    # terminal window)
    queue_query = "tracejob -q -w 9999 {} | tail -n 1".format(jobid)
    try:
      result = (
        subprocess.check_output(queue_query, shell=True).strip().decode("utf-8")
      )
      finished_re = r"S\s+dequeuing"
      if re.search(finished_re, result):
        return True
      else:
        return False
    except:
      result = "done"
      return True
    return False
