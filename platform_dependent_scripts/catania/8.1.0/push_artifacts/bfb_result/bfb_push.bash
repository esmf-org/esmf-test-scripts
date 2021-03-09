#!/bin/bash

cd /project/esmf/himanshu/storage/bfb_result/bfb_comb/
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/bfb_testing/sanity/esmf-extended-tests/ESMF_RegridWeightGenCheck/*.Log .
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/bfb_testing/sanity/esmf-extended-tests/ESMF_RegridWeightGenCheck/*.out .

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/intel/19.1.0.166/O/mpich3/3.3.2/
mkdir -p bfb_combinations

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/intel/19.1.0.166/O/mpich3/3.3.2/bfb_combinations/
touch a.sh
git rm *.out
git rm *.Log
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/script/bfb_result/bfb_comb/* .
for h in *.Log; do date >> $h; done
for i in *.out; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/intel/
touch a.sh
git rm bfb_combinations_result.html
git rm bfb_commit.log
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/bfb_testing/sanity/esmf_logs/2102_test/ESMFdailyLog bfb_combinations_result.html
{ echo -n '<pre> '; cat bfb_combinations_result.html; } > bfb_combinations_result.html.new
mv bfb_combinations_result.html{.new,}
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/intel/
git log --since=6.days --grep='Release 8.1.0 Catania BFB artifacts' >  bfb_commit.log

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Release 8.1.0 Catania BFB artifacts pushed at `date` [ci skip] "
#git commit -a -m " Catania BFB artifacts pushed at Mon Dec 28 23:59:05 MST 2020" 
git push origin master
