#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/intel/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /project/esmf/himanshu/release_8.1.0/intel/esmf_logs/2102_test/ESMFdailyLog result.html
sed -i '1i<pre>' result.html
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/intel/

git log --since=6.days --grep='Release 8.1.0 Izumi Intel commit log' >  commit.log


cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Release 8.1.0 Izumi Intel commit log pushed at `date` [ci skip] "
git push origin master

