import os
import subprocess
import sys
import time
import glob
import re
import pathlib

def main(argv):
  i = 0
  root_path = pathlib.Path(__file__).parent.absolute()
  jobid = sys.argv[1]
  directory = sys.argv[2]
  machine = sys.argv[3]
  scheduler = sys.argv[4]
  script_dir = sys.argv[5]
  start_time = time.time()
  seconds = 14400
  while True:
    current_time = time.time()
    elapsed_time = current_time - start_time
    i = i+1
    job_done = checkqueue(jobid,scheduler)
    if(job_done):
      
      oe_filelist = glob.glob('{}/{}/*{}*'.format(script_dir,directory,jobid))
      for cfile in oe_filelist:
        nfile = os.path.basename(re.sub('.{}'.format(jobid), '', cfile))
        cp_cmd = "cp {} {}/{}/{} >& cp_{}".format(cfile,root_path,machine,nfile,jobid)
        print("cp_cmd is {}".format(cp_cmd))
        os.system(cp_cmd)
      file_root = os.path.basename(re.sub('.{}'.format(jobid), '',oe_filelist[0]))
      git_cmd = "cd {};git pull -X theirs;git add {};git commit -a -m\'update for {} on {}\';git push origin python".format(root_path,machine,nfile,machine)
      os.system(git_cmd)
      break
    time.sleep(30)

    if elapsed_time > seconds:
       print("Finished iterating in: " + str(int(elapsed_time))  + " seconds")
       break


def checkqueue(jobid,scheduler):
    if(scheduler == "slurm"):
      queue_query = "squeue -j {}".format(jobid)
    elif(scheduler == "pbs"):
      queue_query = "qstat -H {} | tail -n 1 | awk -F ' +' '{{print $10}}'".format(jobid)
    else:
      sys.exit("unsupported job scheduler")
    try:
      result= subprocess.check_output(queue_query,shell=True).strip().decode('utf-8')
      print("result is {}".format(result))
      if(scheduler == "pbs"):
        if(result == "F"): #could check for R and Q to see if it is running or waiting
          return True
        else:
          return False
    except:
      result="done"
      return True
    return False

if __name__ == "__main__":
    main(sys.argv[1:])
