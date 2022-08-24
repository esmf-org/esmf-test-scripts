#!/bin/bash -l

cd /glade/scratch/dunlap/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
module load python/3.7.9
cd /glade/scratch/dunlap/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m cheyenne -r /glade/scratch/dunlap/esmf-testing --throttle 4 >& /glade/scratch/dunlap/esmf-testing/cheyenne.log
