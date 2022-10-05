#!/bin/bash -l

eval `ssh-agent`
ssh-add /glade/u/home/theurich/.ssh/id_ed25519

export NS=/glade/scratch/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
module load python/3.7.9
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m cheyenne -r $NS --throttle 8 >& $NS/cheyenne.log

kill $SSH_AGENT_PID
