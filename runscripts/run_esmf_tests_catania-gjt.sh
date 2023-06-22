#!/bin/bash -l

date

hostname -f

pkill -u theurich ssh-agent

eval `ssh-agent -s`
ssh-add /home/theurich/.ssh/id_ed25519

export NS=/project/esmf/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m catania -r $NS >& $NS/catania.log

date
