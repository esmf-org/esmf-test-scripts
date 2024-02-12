#!/bin/bash -l

date

hostname -f

eval `ssh-agent`
ssh-add /glade/u/home/theurich/.ssh/id_ed25519

export NS=/glade/derecho/scratch/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin

# The following is needed for ESMPy testing
module load conda/latest
conda activate npl

python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m derecho -r $NS --throttle 8 >& $NS/derecho.log

#kill $SSH_AGENT_PID

date
