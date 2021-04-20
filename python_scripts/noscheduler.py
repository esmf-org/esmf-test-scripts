import os
from scheduler import scheduler

class NoScheduler(scheduler):
  def __init__(self,scheduler_type):
    self.type = scheduler_type

  def submitJob(self,test,subdir,mpiver,branch):
    os.system("chmod +x {}".format(test.b_filename))
    jobnum = 12345
    os.system("./{} {}".format(test.b_filename,jobnum))
    monitor_cmd_build = \
                   "python3 {}/python_scripts/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    jobnum = 12346
    os.system("{}".format(monitor_cmd_build))
    os.system("chmod +x {}".format(test.t_filename))
    os.system("./{} {}".format(test.t_filename,jobnum))
    monitor_cmd_test = \
                   "python3 {}/python_scripts/get-results.py {} {} {} {} {} {} {} {}".format(test.mypath,jobnum,subdir,test.machine_name,self.type,test.script_dir,test.artifacts_root,mpiver,branch)
    os.system("{}".format(monitor_cmd_test))
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
