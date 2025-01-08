#!/bin/bash -l

esmftestroot=/Users/sacks/scratch/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

cd ${esmftestroot}

# Use caffeinate to make sure that the system doesn't sleep for the next 24 hours.
# caffeinate may not be necessary here, but it at least doesn't hurt.
caffeinate -t 86400 -i -s &

# Wrap the python script in a call from an AppleScript to get the cron job to run faster
# (From https://stackoverflow.com/questions/74793041/why-does-selenium-python-script-run-really-slow-in-cron-compared-to-vscode)
# This leads to about a 2.5x speedup in test time
osascript -e "tell application \"Terminal\" to do script \"cd ${esmftestroot} && python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m hearhear -r ${esmftestroot} >& ${esmftestroot}/test_esmf_hearhear.log\""
