#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/intel/
touch a.sh
git rm result.html
git rm commit.log
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/intel/esmf_logs/2102_test/ESMFdailyLog result.html
{ echo -n '<pre> '; cat result.html; } > result.html.new
mv result.html{.new,}
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/intel/
git log --since=6.days --grep='Release 8.1.0 Catania Intel commit log' >  commit.log


cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Release 8.1.0 Catania Intel commit log pushed at `date` [ci skip] "
#git commit -m " Catania Intel commit log pushed at Mon Dec 28 23:58:05 MST 2020"
git push origin master
