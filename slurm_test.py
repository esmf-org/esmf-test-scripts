import time 
import os
import fileinput
import datetime
import functools
#import schedule_module

def git_clone():
    os.system("git clone git@github.com:esmf-org/esmf.git")
    os.chdir("esmf")
    pwd = os.getcwd()
    os.environ["ESMF_DIR"] = pwd
    os.environ["ESMF_COMM"]= "mpi"
    os.environ["ESMF_COMPILER"]= "gfortran"
    os.environ["MPIMOD"]= "$MPI_PATH"
    os.environ["ESMF_PIO"]= "internal"
    os.environ["ESMF_YAMLCPP"]= "internal"
    os.system('gmake -j 8')
    os.system('make all_tests > result1.txt')

def git_commit():
    now = datetime.datetime.now()
    dtime = now.strftime("%Y-%m-%d %H:%M:%S")
    os.chdir("../")
    os.system("git clone git@github.com:him-28/repo_test.git")
    os.chdir("repo_test")
    os.system("git pull")
    os.system("cp ../esmf/result1.txt .")
    os.system("git add .")
    os.system('git commit -m " Regression test result updated '+str(dtime)+'"')
    os.system('git push origin master')

def start_program():
    print("ESMF cloning begins")

def done():
    print("Job Completed")

def status_ack():
    print("ESMF Simulation is running ")

# Task scheduling
exec(open('/usr/share/Modules/init/python.py').read())
module('purge')
module('load', 'compiler/gnu/8.2.0', 'mpi/gcc/mvapich2-2.3rc2-qlc', 'tool/netcdf/4.6.1/gcc-8.1.0')
module('list')
start_program()
git_clone()
#schedule_module.every(1).minutes.do(status_ack)
#schedule.every().day.at("08:00").do(status_ack)
#while True:
#	schedule_module.run_pending() 
#	time.sleep(1) 
done()
git_commit()    
