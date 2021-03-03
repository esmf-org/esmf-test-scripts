#!/bin/bash -l

cd /glade/scratch/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load 3.6.8
cd /glade/scratch/mpotts
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/hera.yaml $PWD/esmf-test-artifacts


