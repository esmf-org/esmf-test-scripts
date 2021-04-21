#!/bin/bash -l

cd /p/work1/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
module load cseinit cse/anaconda3/latest 
cd /p/work1/mpotts     
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/onyx.yaml -a $PWD/esmf-test-artifacts


