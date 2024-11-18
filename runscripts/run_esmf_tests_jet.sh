#!/bin/bash -l

date

hostname -f

export NS=/mnt/lfs5/BMC/esmf/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit
module load intelpython
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m jet -r $NS >& $NS/jet.log

date
