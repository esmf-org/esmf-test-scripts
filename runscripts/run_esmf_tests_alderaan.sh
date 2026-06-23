#!/bin/bash -l

ESMF_TEST_ROOT=/Users/mathomp4/ESMF_Testing
LOGDIR=$ESMF_TEST_ROOT/LogFiles

# These are for SLES15
module use /Users/mathomp4/modulefiles/Core
module load GEOSpyD

cd $ESMF_TEST_ROOT/esmf-test-scripts

git remote update
git pull -X theirs origin --no-edit

# We want to tee the logfiles into a file and put the date in the filename so we can keep track of when the tests were run.  The logfiles will be in $LOGDIR

LOGFILE=$LOGDIR/esmf_test_log_$(date +%Y%m%d_%H%M%S).txt

$ESMF_TEST_ROOT/esmf-test-scripts/python_scripts/test_esmf.py -r $ESMF_TEST_ROOT -m alderaan --throttle 1 >& $LOGFILE

