#!/bin/bash -l

cd /glade/scratch/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
module load python/3.6.8
cd /glade/scratch/mpotts
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/cheyenne.yaml -a $PWD/esmf-test-artifacts


