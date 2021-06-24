import os
import subprocess
import argparse
import datetime
import sys
import time
import glob
import re
import pathlib
from scheduler import scheduler
from noscheduler import NoScheduler
from pbs import pbs
from slurm import slurm




class ArchiveResults:
  def __init__(self,jobid,build_basename,machine_name,scheduler,test_root_dir,artifacts_root,mpiversion,branch,dryrun):

    self.root_path = pathlib.Path(__file__).parent.absolute()
    self.jobid = jobid
    self.build_basename = build_basename
    self.machine_name = machine_name
    if(scheduler == "pbs"):
      self.scheduler=pbs("pbs")
    elif(scheduler == "slurm"):
      self.scheduler=slurm("slurm")
    elif(scheduler == "None"):
      self.scheduler=NoScheduler("slurm")
    self.test_root_dir = test_root_dir
    self.artifacts_root = artifacts_root
    self.mpiversion = mpiversion
    self.branch = branch      
    self.dryrun = dryrun
    print("dryrun is {} -- {}".format(dryrun,self.dryrun))
    start_time = time.time()
    seconds = 14400
    self.build_dir = '{}/{}'.format(test_root_dir,build_basename)
    while True:
      current_time = time.time()
      elapsed_time = current_time - start_time
      job_done = self.scheduler.checkqueue(jobid)
      if(job_done):
        oe_filelist = glob.glob('{}/{}/*_{}*.log'.format(test_root_dir,build_basename,jobid))
        oe_filelist.extend(glob.glob('{}/{}/*.bat'.format(test_root_dir,build_basename)))
        oe_filelist.extend(glob.glob('{}/{}/module-*.log'.format(test_root_dir,build_basename)))
        print("filelist is {}".format(oe_filelist))
        print("oe list is {}\n".format(oe_filelist))
        self.copy_artifacts(oe_filelist)
        break
      time.sleep(30)

      if elapsed_time > seconds:
         print("Finished iterating in: " + str(int(elapsed_time))  + " seconds")
         break

  def runcmd(self,cmd):
    if(self.dryrun == True):
       print("would have executed {}".format(cmd))
    else:
       os.system(cmd)

  def create_summary(self,unit_results,system_results,example_results,make_info,esmfmkfile):
    self.build_time = datetime.datetime.fromtimestamp(os.path.getmtime(esmfmkfile[0]))
    summary_file = open('{}/summary.dat'.format(self.outpath),"w")
    summary_file.write('\n===================================================================\n')
    summary_file.write('Build for = {}, mpi version {} on {}\n'.format(self.build_basename,self.mpiversion,self.machine_name))
    summary_file.write('Build time = {}\n'.format(self.build_time))
    summary_file.write('git hash = {}\n\n'.format(self.build_hash))
    unit_results = re.sub(' FAIL','\tFAIL',unit_results)
    system_results = re.sub(' FAIL',' \tFAIL',system_results)
    example_results = re.sub(' FAIL',' \tFAIL',example_results)
    summary_file.write('unit test results   \t{}\n'.format(unit_results))
    summary_file.write('system test results \t{}\n'.format(system_results))
    summary_file.write('example test results \t{}\n\n'.format(example_results))
    summary_file.write('\n===================================================================\n')
    summary_file.write('\n\n{}\n\n'.format(make_info))
    summary_file.write('\n===================================================================\n')
    summary_file.close()

  def copy_artifacts(self,oe_filelist):
  
    build_basename = os.path.basename(self.build_dir)
    gitbranch = self.branch
    dirbranch = re.sub("/","_",self.branch)
    cwd = os.getcwd()
    os.chdir(self.build_dir)
    self.build_hash = subprocess.check_output('git describe --tags --abbrev=7',shell=True).strip().decode('utf-8')
    os.chdir(cwd)
    print("build_basename is {}".format(build_basename))
    parts = build_basename.split("_")
  # [compiler, version, mpiflavor, build_type,dirbranch] = build_basename.split("_")
    compiler = parts[0]
    version = parts[1]
    mpiflavor = parts[2]
    build_type = parts[3]
    #get the full path for placment of artifacts
    if(self.mpiversion != "None"):
      outpath = "{}/{}/{}/{}/{}/{}/{}/{}".format(self.artifacts_root,dirbranch,self.machine_name,compiler,version,build_type,mpiflavor,self.mpiversion)
    else:
      outpath = "{}/{}/{}/{}/{}/{}/{}".format(self.artifacts_root,dirbranch,self.machine_name,compiler,version,build_type,mpiflavor)
    self.outpath = outpath
    #copy/rename the stdout/stderr files to artifacts out directory
    test_stage = False
    print("outpath is {}".format(outpath))
    for cfile in oe_filelist:
      print("cfile is {}".format(cfile))
      if((cfile.find('test_{}'.format(self.jobid)) != -1)): # this is just the build job, so no test artifacts yet
        test_stage = True
    if(not test_stage):
      #remove old files in out directory
      print('just the build stage, so remove old files')
      cmd = 'mkdir -p {}/out; rm {}/*/*; rm {}/*.log; rm {}/summary.dat'.format(outpath,outpath,outpath,outpath)
      print("cmd is {}\n".format(cmd))
      self.runcmd(cmd)
  # print("oe filelist is {}".format(oe_filelist))
    if(oe_filelist == []):
      return
    for cfile in oe_filelist:
      nfile = os.path.basename(re.sub('_{}'.format(self.jobid), '', cfile))
  #   print("cfile is {}, and find says {} ".format(cfile,cfile.find('test_{}'.format(self.jobid))))
      cp_cmd = 'cp {} {}/out/{}'.format(cfile,outpath,nfile)
      print("cp command is {}".format(cp_cmd))
      self.runcmd(cp_cmd)
    if(not (test_stage)):
      unit_results="unit tests did not complete"
      system_results="system tests did not complete"
      example_results="No examples ran"
      make_info = subprocess.check_output('cat {}/module-build.log; cat {}/info.log'.format(self.build_dir,self.build_dir),shell=True).strip().decode('utf-8')
      esmfmkfile = glob.glob('{}/lib/lib{}/*/esmf.mk'.format(self.build_dir,build_type))
      self.create_summary(unit_results,system_results,example_results,make_info,esmfmkfile)
      git_cmd = "cd {};git checkout {};git add {}/{};git commit -a -m\'update for build of {} with hash {} on {} [ci skip]\';git push origin {}".format(self.artifacts_root,self.machine_name,dirbranch,self.machine_name,build_basename,self.build_hash,self.machine_name,self.machine_name)
      print("git_cmd is {}".format(git_cmd))
      self.runcmd(git_cmd)
      return
    #Make directories, if they aren't already there
    cmd = 'mkdir -p {}/examples; rm {}/examples/*; rm {}/*'.format(outpath,outpath,outpath)
    self.runcmd(cmd)
    cmd = 'mkdir -p {}/apps; rm {}/apps/*'.format(outpath,outpath)
    self.runcmd(cmd)
    cmd = 'mkdir -p {}/test; rm {}/test/*'.format(outpath,outpath)
    self.runcmd(cmd)
    cmd = 'mkdir -p {}/lib; rm {}/lib/*'.format(outpath,outpath)
    self.runcmd(cmd)
    print("globbing examples")
    example_artifacts = glob.glob('{}/examples/examples{}/*/*.Log'.format(self.build_dir,build_type))
    example_artifacts.extend(glob.glob('{}/examples/examples{}/*/*.stdout'.format(self.build_dir,build_type)))
  # get information from example results file to accumulate
    ex_result_file =glob.glob('{}/examples/examples{}/*/*results'.format(self.build_dir,build_type))
    if(len(ex_result_file) > 0):
      example_results= subprocess.check_output('cat {}'.format(ex_result_file[0]),shell=True).strip().decode('utf-8')
    else:
      example_results="No examples ran"
  # get information from test results files to accumulate
    test_artifacts = glob.glob('{}/test/test{}/*/*.Log'.format(self.build_dir,build_type))
    print("test_artifacts are ".format(test_artifacts))
    test_artifacts.extend(glob.glob('{}/test/test{}/*/*.stdout'.format(self.build_dir,build_type)))
    try:
      unit_results= subprocess.check_output('cat {}/test/test{}/*/unit_tests_results'.format(self.build_dir,build_type),shell=True).strip().decode('utf-8')
    except:
      unit_results="unit tests did not complete"
    try:
      system_results= subprocess.check_output('cat {}/test/test{}/*/system_tests_results'.format(self.build_dir,build_type),shell=True).strip().decode('utf-8')
    except:
      system_results="system tests did not complete"
  
    python_artifacts = glob.glob('{}/src/addon/ESMPy/*.log'.format(self.build_dir))
  
    cwd = os.getcwd()
    os.chdir(self.build_dir)
    make_info = subprocess.check_output('cat module-build.log; cat info.log',shell=True).strip().decode('utf-8')
    os.chdir(cwd)
    esmfmkfile = glob.glob('{}/lib/lib{}/*/esmf.mk'.format(self.build_dir,build_type))
    print("esmfmkfile is {}".format(esmfmkfile))
    self.create_summary(unit_results,system_results,example_results,make_info,esmfmkfile)
  # return
    timestamp = "build time -- {}".format(self.build_time)
    for afile in example_artifacts:
      cmd = "echo {} > {}/examples/{}".format(timestamp,outpath,os.path.basename(afile))
      self.runcmd(cmd)
      cmd = "cat {} >> {}/examples/{}".format(afile,outpath,os.path.basename(afile))
  #   cmd = 'cp {} {}/examples'.format(afile,outpath)
      print("cmd is {}".format(cmd))
      self.runcmd(cmd)
    for afile in test_artifacts:
      cmd = "echo {} > {}/test/{}".format(timestamp,outpath,os.path.basename(afile))
      self.runcmd(cmd)
      cmd = "cat {} >> {}/test/{}".format(afile,outpath,os.path.basename(afile))
  #   cmd = 'cp {} {}/test".format(afile,outpath)
      print("cmd is {}".format(cmd))
      self.runcmd(cmd)
    for afile in esmfmkfile:
      cmd = "echo {} > {}/lib/{}".format(timestamp,outpath,os.path.basename(afile))
      self.runcmd(cmd)
      cmd = "cat {} >> {}/lib/{}".format(afile,outpath,os.path.basename(afile))
  #   cmd = 'cp {} {}/lib'.format(afile,outpath)
      print("cmd is {}".format(cmd))
      self.runcmd(cmd)
    for afile in python_artifacts:
      cmd = "echo {} > {}/{}".format(timestamp,outpath,os.path.basename(afile))
      self.runcmd(cmd)
      cmd = "cat {} >> {}/{}".format(afile,outpath,os.path.basename(afile))
  #   cmd = 'cp {} {}'.format(afile,outpath)
      print("cmd is {}".format(cmd))
      self.runcmd(cmd)
  
    git_cmd = "cd {};git checkout {};git add {}/{};git commit -a -m\'update for test of {} with hash {} on {} [ci skip]\';git push origin {}".format(self.artifacts_root,self.machine_name,dirbranch,self.machine_name,build_basename,self.build_hash,self.machine_name,self.machine_name)
    self.runcmd(git_cmd)
    return


if __name__ == "__main__":
  parser = argparse.ArgumentParser(description='ESMF nightly build/test system')
  parser.add_argument('-j','--self.jobid', help='directory where builds will be mad #', required=True)
  parser.add_argument('-b','--buildbasename', help='directory where artifacts will be collected', required=True)
  parser.add_argument('-m','--machinename', help='name of machine where tests were run', required=False,default=False)
  parser.add_argument('-s','--scheduler', help='type of scheduler used', required=False,default=None)
  parser.add_argument('-t','--testrootdir', help='root directory containing python_scritps', required=True)
  parser.add_argument('-a','--artifactsrootdir', help='directory where artifacts will be placed', required=True)
  parser.add_argument('-M','--mpiversion', help='mpi version used', required=True)
  parser.add_argument('-B','--branch', help='branch tested', required=True)
  parser.add_argument('-d','--dryrun', help='dryrun?', required=False,default=False)
  args = vars(parser.parse_args())
  
  archiver = ArchiveResults(args['self.jobid'],args['buildbasename'],args['machinename'],args['scheduler'],args['testrootdir'],args['artifactsrootdir'],args['mpiversion'],args['branch'],args['dryrun'])
    
