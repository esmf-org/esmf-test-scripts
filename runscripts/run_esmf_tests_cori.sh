#!/bin/bash -l

cd $SCRATCH/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
cd $SCRATCH/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/cori.yaml -a $SCRATCH/esmf-testing/esmf-test-artifacts >& $SCRATCH/esmf-testing/cori.log
