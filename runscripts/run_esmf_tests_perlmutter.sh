#!/bin/bash -l

date

hostname -f

pkill -u theurich ssh-agent

eval `ssh-agent`
ssh-add /global/homes/t/theurich/.ssh/id_ed25519

export NS=/global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
$NS/esmf-test-scripts/python_scripts/test_esmf.py -m perlmutter -r $NS >& $NS/perlmutter.log

date

