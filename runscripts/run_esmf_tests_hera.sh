#!/bin/bash -l

date

hostname -f

export NS=/scratch3/NCEPDEV/stmp/Gerhard.Theurich/ESMF-Nightly-Testing-Hera
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load intelpython/2021.3.0
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m hera -r $NS >& $NS/hera.log

date

