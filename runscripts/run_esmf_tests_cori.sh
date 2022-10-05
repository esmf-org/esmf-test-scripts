#!/bin/bash -l

eval `ssh-agent`
ssh-add /global/homes/t/theurich/.ssh/id_ed25519

export NS=/global/cscratch1/sd/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
$NS/esmf-test-scripts/python_scripts/test_esmf.py -m cori -r $NS >& $NS/cori.log &

#kill $SSH_AGENT_PID

