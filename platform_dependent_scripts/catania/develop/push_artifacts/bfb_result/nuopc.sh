#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/
mkdir prototest

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/
mkdir prototest

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/prototest/
touch a.sh
git rm *.stdout
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/daily/nuopc/prototest.g/*.stdout  .
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/prototest/
touch a.sh
git rm *.stdout
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/daily/nuopc/prototest.O/*.stdout  .
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/
touch a.sh
git rm nuopc_result.html
git rm nuopc_commit.log
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/daily/nuopc/esmf_logs/2012_test/ESMFdailyLog nuopc_result.html
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/

git log --since=6.days --grep='Catania NUOPC artifacts' >  nuopc_commit.log

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -a -m " Catania NUOPC artifacts pushed at `date`"
git push origin master

exit
