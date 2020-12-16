import os
import subprocess
import platform
import yaml
import time 
import fileinput
import datetime
import functools

x=os.uname()
system_name = {"cheyenne6":"Cheyenne","cgdm-catania":"Catania","bighorn.cgd.ucar.edu":"Bighorn"}

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

def clone_update():
    print("Cloning ESMF.... complete")

def ESMF_update():
    print("Building ESMF .... complete")

def all_tests_update():
    print("Running all_tests target .... complete")

def done():
    print("Uploading results ..... complete")

def geeks(token,x):
    #fromaddr=$USER
    toaddr="himanshu@ucar.edu"
    subject="ESMF TRUNK BUILD AND TEST SUMMARY"
    body="Cheyenne Trunk Test "
    print("Platform used "+token)
    print("Nomenclature of the system :  {}\t{}\t{}".format(x[1],x[0],x[4]))
    print("No. of simulations : "+str(len(dataMap[token].items()))+"\n")
    print("Configuration: \n ")
    # print(dataMap)
    for k,v in dataMap[token].items():
        print("ESMF_COMPILER : "+dataMap[token][k]["compiler"])
        print("ESMF_COMM : "+dataMap[token][k]["mpi"])
        print("compiler loaded : "+dataMap[token][k]["ESMF_COMPILER"])
        print("mpi loaded : "+dataMap[token][k]["ESMF_COMM"])
        print("\n")
    #cmd= 'echo '+body+' | mail -s '+subject+' -r '+fromaddr+' '+toaddr
    #send=subprocess.call(cmd,shell=True)


with open('tree3.yaml') as f:
    # use safe_load instead load
    dataMap = yaml.safe_load(f)
    # y=dataMap["cheyenne6"]
    for token in dataMap:
          #print(token)
        # print(x[1])
        if token == system_name[x[1]]:
            # print("Platform used is Cheyenne")
            geeks(token, x)
        else:
            print("Platform doesn't match with yaml configuration")

git_clone()
clone_update()
git_commit()    
done()
