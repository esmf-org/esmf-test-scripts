import time 
import os
import fileinput
import datetime
import functools

def git_clone():
    os.system("git clone git@github.com:esmf-org/esmf.git")
    os.chdir("esmf")
    pwd = os.getcwd()
    os.environ["ESMF_DIR"] = pwd
    os.system('gmake -j 8')
    os.system('gmake all_tests > result1.txt')

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

#Main 
git_clone()
start_program()
done()
git_commit()    
