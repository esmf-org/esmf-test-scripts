import os
from scheduler import scheduler

class NoScheduler(scheduler):
  def __init__(self,scheduler_type):
    self.type = scheduler_type

  def submitJob(self,test,subdir,mpiver,branch):
    test.runcmd("chmod +x {}".format(test.b_filename))
    jobnum = 12345
    test.runcmd("./{} {}".format(test.b_filename,jobnum))
    monitor_cmd_build = \
                   "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch,test.dryrun)
    test.runcmd("{}".format(monitor_cmd_build))
    jobnum = 12346
    test.runcmd("chmod +x {}".format(test.t_filename))
    test.runcmd("./{} {}".format(test.t_filename,jobnum))
    monitor_cmd_test = \
                   "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch,test.dryrun)
    test.runcmd("{}".format(monitor_cmd_test))
    test.createGetResScripts(monitor_cmd_build,monitor_cmd_test)

  def createHeaders(self,test):
    for headerType in ["build","test"]:
      if(headerType == "build"):
        file_out = test.fb
        jobid = 12345
      else:
        file_out = test.ft
        jobid = 12346
      file_out.write("#!{} -l\n".format(test.bash))
      file_out.write("export JOBID={}\n".format(jobid))

  def checkqueue(self,jobid):
    return True
