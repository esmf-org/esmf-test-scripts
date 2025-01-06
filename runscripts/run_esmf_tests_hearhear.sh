#!/bin/bash -l

esmftestroot=/Users/sacks/scratch/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

cd ${esmftestroot}
# Use caffeinate to make sure that the system doesn't sleep for the next 24 hours.
# caffeinate may not be necessary here, but it at least doesn't hurt.
caffeinate -t 86400 -i -s &
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m hearhear -r ${esmftestroot} >& ${esmftestroot}/test_esmf_hearhear.log &
