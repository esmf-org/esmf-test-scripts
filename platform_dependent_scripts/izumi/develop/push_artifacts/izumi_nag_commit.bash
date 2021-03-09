#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/nag/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /project/esmf/himanshu/nag/esmf_logs/2102_test/ESMFdailyLog result.html
sed -i '1i<pre>' result.html
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/nag/
git log --since=6.days --grep='Izumi Nag commit log' >  commit.log


cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Izumi Nag commit log pushed at `date` [ci skip] "
#git commit -m " Izumi GFortran commit log pushed at Fri Dec 4 11:10:05 MST 2020"
git push origin master

