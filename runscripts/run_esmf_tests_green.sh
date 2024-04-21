#!/bin/bash -l

esmftestroot=/Users/sacks/projects/scratch/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

cd ${esmftestroot}
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m green -r ${esmftestroot} >& ${esmftestroot}/test_esmf_green.log &
