#!/bin/bash -l

set -o pipefail

ESMF_TEST_ROOT=/Users/mathomp4/ESMF_Testing
LOGDIR=$ESMF_TEST_ROOT/LogFiles

# Match the existing cron schedule:
#     00 22 */2 * *
#
# Run only on even-numbered days of the month.
DAY_OF_MONTH=$(date +%d)
if (( 10#$DAY_OF_MONTH % 2 != 0 )); then
    exit 0
fi

mkdir -p "$LOGDIR"

LOGFILE="$LOGDIR/esmf_test_log_$(date +%Y%m%d_%H%M%S).txt"

{
    echo "ESMF nightly tests started: $(date)"
    echo "Host: $(hostname)"
    echo

    module use /Users/mathomp4/modulefiles/Core
    module load GEOSpyD

    cd "$ESMF_TEST_ROOT/esmf-test-scripts" || exit 1

    git remote update
    git pull -X theirs origin --no-edit

    "$ESMF_TEST_ROOT/esmf-test-scripts/python_scripts/test_esmf.py" \
        -r "$ESMF_TEST_ROOT" \
        -m alderaan \
        --throttle 1

    status=$?

    echo
    echo "ESMF nightly tests finished: $(date)"
    echo "Exit status: $status"

    exit "$status"
} >"$LOGFILE" 2>&1

