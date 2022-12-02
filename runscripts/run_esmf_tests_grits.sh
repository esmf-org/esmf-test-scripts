#!/bin/bash -l

# Remember auto testing location
esmftestroot=$ESMF_TEST_ROOT

# Get rid of previously set ESMF environment variables, so they don't interfer
unsetenv ESMF_*

# Update
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

# Run tests
cd ${esmftestroot}
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m grits -r ${esmftestroot} >& ${esmftestroot}/test_esmf_grits.log &
