#!/bin/bash -l

cd /glade/scratch/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin python
module load python/3.6.8
cd /glade/scratch/mpotts
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/cheyenne.yaml $PWD/esmf-test-artifacts


