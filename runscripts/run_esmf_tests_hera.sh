#!/bin/bash -l

date

hostname -f

export NS=/scratch3/NCEPDEV/stmp/Gerhard.Theurich/ESMF-Nightly-Testing-Hera
# Put esmf-test-scripts in a non-scrubbed location:
export WORKSPACE=/scratch3/NCEPDEV/nems/Gerhard.Theurich/ESMF-Nightly-Testing-Hera
cd $WORKSPACE/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load intelpython/2021.3.0
python3 $WORKSPACE/esmf-test-scripts/python_scripts/test_esmf.py -m hera -r $NS -s $WORKSPACE >& $NS/hera.log

date

