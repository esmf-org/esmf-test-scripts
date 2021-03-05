#!/bin/bash -l

cd /p/work1/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin python
module load cseinit cse/anaconda3/latest 
cd /p/work1/mpotts     
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/gaffney.yaml $PWD/esmf-test-artifacts


