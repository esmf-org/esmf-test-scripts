#!/bin/bash

cd /project/esmf/esmf-test-artifacts/
git pull

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/
mkdir prototest

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/
mkdir prototest

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/prototest/
touch a.sh
git rm *.stdout
cp -rf /scratch/esmf/esmf_test/cronjobs/trunk/nuopc/prototest.g/*.stdout  .
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/prototest/
touch a.sh
git rm *.stdout
cp -rf /scratch/esmf/esmf_test/cronjobs/trunk/nuopc/prototest.O/*.stdout  .
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/
touch a.sh
git rm nuopc_result.html
git rm nuopc_commit.log
cp -rf /scratch/esmf/esmf_test/cronjobs/trunk/nuopc/esmf_logs/2102_test/ESMFdailyLog nuopc_result.html
sed -i '1i<pre>' nuopc_result.html
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/

git log --since=6.days --grep='Bighorn NUOPC artifacts' >  nuopc_commit.log

cd /project/esmf/esmf-test-artifacts/
git add .
git commit -a -m " Bighorn NUOPC artifacts pushed at `date` [ci skip] "
#git commit -a -m " Bighorn NUOPC artifacts pushed at Sat Dec 12 11:10:05 MST 2020"
git push origin master

exit
