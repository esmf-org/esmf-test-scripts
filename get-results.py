import os
import subprocess
import datetime
import sys
import time
import glob
import re
import pathlib

def checkqueue(jobid,scheduler):
    if(scheduler == "slurm"):
      queue_query = "sacct -j {} | head -n 3 | tail -n 1 | awk -F ' ' '{{print $6}}'".format(jobid)
    elif(scheduler == "pbs"):
      queue_query = "qstat -H {} | tail -n 1 | awk -F ' +' '{{print $10}}'".format(jobid)
    elif(scheduler == "None"):
      return True
    else:
      sys.exit("unsupported job scheduler")
    try:
      result= subprocess.check_output(queue_query,shell=True).strip().decode('utf-8')
      if(scheduler == "pbs"):
        if(result == "F"): #could check for R and Q to see if it is running or waiting
          return True
        else:
          return False
      if(scheduler == "slurm"):
        if((result == "COMPLETED") or (result == "TIMEOUT") or (result == "FAILED") or (result == "CANCELLED")): #could check for R and Q to see if it is running or waiting
          return True
        else:
          return False
    except:
      result="done"
      return True
    return False

def copy_artifacts(build_dir,artifacts_root,machine_name,mpiversion,oe_filelist,jobid,scheduler,branch):

  build_basename = os.path.basename(build_dir)
  [compiler, version, mpiflavor, build_type] = build_basename.split("_")
  #get the full path for placment of artifacts
  if(mpiversion != "None"):
    outpath = "{}/{}/{}/{}/{}/{}/{}/{}".format(artifacts_root,branch,machine_name,compiler,version,build_type,mpiflavor,mpiversion)
  else:
    outpath = "{}/{}/{}/{}/{}/{}/{}".format(artifacts_root,branch,machine_name,compiler,version,build_type,mpiflavor)
  #Make directories, if they aren't already there
  cmd = 'mkdir -p {}/examples; rm {}/examples/*; rm {}/*'.format(outpath,outpath,outpath)
  os.system(cmd)
  cmd = 'mkdir -p {}/apps; rm {}/apps/*'.format(outpath,outpath)
  os.system(cmd)
  cmd = 'mkdir -p {}/test; rm {}/test/*'.format(outpath,outpath)
  os.system(cmd)
  cmd = 'mkdir -p {}/lib; rm {}/lib/*'.format(outpath,outpath)
  os.system(cmd)
  cmd = 'mkdir -p {}/out; rm {}/out/*'.format(outpath,outpath)
  os.system(cmd)
  #copy/rename the stdout/stderr files to artifacts out directory
  build_stage = False
  print("oe filelist is {}".format(oe_filelist))
  if(oe_filelist == []):
    return
  for cfile in oe_filelist:
    nfile = os.path.basename(re.sub('_{}'.format(jobid), '', cfile))
    print("nfile is {}".format(nfile))
    if(nfile.find("build") != -1): # this is just the build job, so no test artifacts yet
      build_stage = True
    cp_cmd = 'cp {} {}/out/{}'.format(cfile,outpath,nfile)
    os.system(cp_cmd)
  if(build_stage):
    print('just the build stage')
    git_cmd = "cd {};git pull -X theirs --no-edit origin main;git add {}/{};git commit -a -m\'update for build {} on {} [ci skip]\';git push origin main".format(artifacts_root,branch,machine_name,build_basename,machine_name)
    os.system(git_cmd)
    # pull and push again to make sure it gets updated
    git_cmd = "cd {};git pull -X theirs --no-edit origin main;git push origin main".format(artifacts_root,branch,machine_name,build_basename,machine_name)
    os.system(git_cmd)
    return
  print("globbing examples")
  example_artifacts = glob.glob('{}/examples/examples{}/*/*.Log'.format(build_dir,build_type))
  example_artifacts.extend(glob.glob('{}/examples/examples{}/*/*.stdout'.format(build_dir,build_type)))
# get information from example results file to accumulate
  ex_result_file =glob.glob('{}/examples/examples{}/*/*results'.format(build_dir,build_type))
  if(len(ex_result_file) > 0):
    example_results= subprocess.check_output('cat {}'.format(ex_result_file[0]),shell=True).strip().decode('utf-8')
  else:
    example_results="No examples ran"
# get information from test results files to accumulate
  test_artifacts = glob.glob('{}/test/test{}/*/*.Log'.format(build_dir,build_type))
  test_artifacts.extend(glob.glob('{}/test/test{}/*/*.stdout'.format(build_dir,build_type)))
  try:
    unit_results= subprocess.check_output('cat {}/test/test{}/*/unit_tests_results'.format(build_dir,build_type),shell=True).strip().decode('utf-8')
  except:
    unit_results="unit tests did not complete"
  try:
    system_results= subprocess.check_output('cat {}/test/test{}/*/system_tests_results'.format(build_dir,build_type),shell=True).strip().decode('utf-8')
  except:
    system_results="system tests did not complete"

  cwd = os.getcwd()
  os.chdir(build_dir)
  build_hash = subprocess.check_output('git describe --tags',shell=True).strip().decode('utf-8')
  os.chdir(cwd)
  esmfmkfile = glob.glob('{}/lib/lib{}/*/esmf.mk'.format(build_dir,build_type))
  print("esmfmkfile is {}".format(esmfmkfile))
  build_time = datetime.datetime.fromtimestamp(os.path.getmtime(esmfmkfile[0]))
  summary_file = open('{}/summary.dat'.format(outpath),"w")
  summary_file.write('\n===================================================================\n')
  summary_file.write('Build for = {}, mpi version {} on {}\n'.format(build_basename,mpiversion,machine_name))
  summary_file.write('Build time = {}\n'.format(build_time))
  summary_file.write('git hash = {}\n\n'.format(build_hash))
  unit_results = re.sub(' FAIL','\tFAIL',unit_results)
  system_results = re.sub(' FAIL',' \tFAIL',system_results)
  example_results = re.sub(' FAIL',' \tFAIL',example_results)
  summary_file.write('unit test results   \t{}\n'.format(unit_results))
  summary_file.write('system test results \t{}\n'.format(system_results))
  summary_file.write('example test results \t{}\n\n'.format(example_results))
  summary_file.write('\n===================================================================\n')
  summary_file.close()
# return
  for afile in example_artifacts:
    cmd = 'cp {} {}/examples'.format(afile,outpath)
    os.system(cmd)
  for afile in test_artifacts:
    cmd = 'cp {} {}/test'.format(afile,outpath)
    os.system(cmd)
  for afile in esmfmkfile:
    cmd = 'cp {} {}/lib'.format(afile,outpath)
    os.system(cmd)

  print("trying git command from {}".format(artifacts_root))
  git_cmd = "cd {};git pull -X theirs --no-edit origin main;git add {}/{};git commit -a -m\'update for test {} on {} [ci skip]\';git push origin main".format(artifacts_root,branch,machine_name,build_basename,machine_name)
  os.system(git_cmd)
  # pull and push again to make sure it gets updated
  git_cmd = "cd {};git pull -X theirs --no-edit origin main;git push origin main".format(artifacts_root,branch,machine_name,build_basename,machine_name)
  os.system(git_cmd)
  return

def main(argv):
  root_path = pathlib.Path(__file__).parent.absolute()
  jobid = sys.argv[1]
  build_basename = sys.argv[2]
  machine_name = sys.argv[3]
  scheduler = sys.argv[4]
  test_root_dir = sys.argv[5]
  artifacts_root = sys.argv[6]
  mpiver = sys.argv[7]
  branch = sys.argv[8]
  start_time = time.time()
  seconds = 14400
  build_dir = '{}/{}'.format(test_root_dir,build_basename)
  while True:
    current_time = time.time()
    elapsed_time = current_time - start_time
    job_done = checkqueue(jobid,scheduler)
    if(job_done):
#     oe_filelist = glob.glob('{}/{}/*{}*'.format(test_root_dir,build_basename,jobid))
      oe_filelist = glob.glob('{}/{}/*_{}*.log'.format(test_root_dir,build_basename,jobid))
      print("looking in {}/{}/*_{}*.log".format(test_root_dir,build_basename,jobid))
      copy_artifacts(build_dir,artifacts_root,machine_name,mpiver,oe_filelist,jobid,scheduler,branch)
      break
    time.sleep(30)

    if elapsed_time > seconds:
       print("Finished iterating in: " + str(int(elapsed_time))  + " seconds")
       break



if __name__ == "__main__":
    main(sys.argv[1:])
