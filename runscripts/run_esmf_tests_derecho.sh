#!/bin/bash -l

date

hostname -f

eval `ssh-agent`
ssh-add /glade/u/home/sacks/.ssh/id_rsa

export NS=/glade/derecho/scratch/sacks/esmf-testing
# Put esmf-test-scripts in a non-scrubbed location:
export TESTSCRIPTS=/glade/work/sacks/esmf-testing/esmf-test-scripts
cd $TESTSCRIPTS
git remote update
git pull -X theirs --no-edit origin

python3 $TESTSCRIPTS/python_scripts/test_esmf.py -m derecho -r $NS --throttle 8 >& $NS/derecho.log

#kill $SSH_AGENT_PID

date
