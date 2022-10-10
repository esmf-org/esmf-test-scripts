#!/bin/bash -l

date

hostname -f

export NS=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load intelpython
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m hera -r $NS >& $NS/hera.log 

date

