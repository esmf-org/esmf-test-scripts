#!/bin/bash -l

# Set ESMF auto testing root directory
esmftestroot=/Users/oehmke/ESMF_AutoTest

# Update
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

# Run tests
cd ${esmftestroot}
# Don't run in background so caffeinate used in cron to keep machine awake will work
#python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m grits -r ${esmftestroot} >& ${esmftestroot}/test_esmf_grits.log &
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m grits -r ${esmftestroot} >& ${esmftestroot}/test_esmf_grits.log
