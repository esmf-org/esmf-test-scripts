#!/bin/bash -l

date

hostname -f

pkill -u Gerhard.Theurich ssh-agent

eval `ssh-agent -s`
ssh-add /ncrc/home2/Gerhard.Theurich/.ssh/id_ed25519

export NS=/gpfs/f6/c6_test_eval/world-shared/Gerhard.Theurich/ESMF-Nightly-Testing-C6
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m gaeaC6 -r $NS >& $NS/gaeaC6.log

date

