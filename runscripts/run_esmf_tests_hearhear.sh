#!/bin/bash -l

esmftestroot=/Users/sacks/scratch/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

cd ${esmftestroot}
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m hearhear -r ${esmftestroot} >& ${esmftestroot}/test_esmf_hearhear.log &
