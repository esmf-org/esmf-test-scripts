#!/bin/bash -l

cd /scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
export NS=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing
module load intelpython
$NS/esmf-test-scripts/python_scripts/test_esmf.py -m hera -r $NS >& $NS/hera.log &

