#!/bin/bash


cd /project/esmf/bighorn_8.1.0/script/bfb_result/bfb_comb/
cp -rf  /project/esmf/bighorn_8.1.0/bfb_testing/sanity/esmf-extended-tests/ESMF_RegridWeightGenCheck/*.Log .
cp -rf  /project/esmf/bighorn_8.1.0/bfb_testing/sanity/esmf-extended-tests/ESMF_RegridWeightGenCheck/*.out .

cd /project/esmf/esmf-test-artifacts/
git pull

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/
mkdir -p bfb_combinations

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/bfb_combinations
touch a.sh
git rm *.out
git rm *.Log
cp -rf /home/himanshu/storage/bfb_result/bfb_comb/* .
for h in *.Log; do date >> $h; done
for i in *.out; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/gfortran/
touch a.sh
git rm bfb_combinations_result.html 
git rm bfb_commit.log
cp -rf /project/esmf/bighorn_8.1.0/bfb_testing/sanity/esmf_logs/2102_test/ESMFdailyLog bfb_combinations_result.html
sed -i '1i<pre>' bfb_combinations_result.html
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/gfortran/

git log --since=6.days --grep='Release 8.1.0 Bighorn BFB artifacts' >  bfb_commit.log

cd /project/esmf/esmf-test-artifacts/
git add .
git commit -a -m " Release 8.1.0 Bighorn BFB artifacts pushed at `date` [ci skip] "
#git commit -a -m " Bighorn BFB artifacts pushed at Sat Dec 12 11:10:05 MST 2020"
git push origin master
