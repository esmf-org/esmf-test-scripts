#!/bin/bash -l

date

hostname -f

pkill -u theurich ssh-agent

eval `ssh-agent -s`
ssh-add /home/theurich/.ssh/id_ed25519

export NS=/scratch/cluster/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit
module load lang/python/3.7.0
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m izumi -r $NS >& $NS/izumi.log

date
