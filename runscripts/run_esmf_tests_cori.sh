#!/bin/bash -l

cd $SCRATCH/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
cd $SCRATCH/esmf-testing
./esmf-test-scripts/python_scripts/test_esmf.py -m cori -r $SCRATCH/esmf-testing >& $SCRATCH/esmf-testing/cori.log &
