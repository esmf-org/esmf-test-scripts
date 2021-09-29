#!/bin/bash -l
export NS=/lfs/h1/emc/nceplibs/noscrub/Mark.Potts
export ptmp=/lfs/h1/emc/ptmp/Mark.Potts
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
cd $ptmp
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -y  $NS/esmf-test-scripts/config/acorn.yaml -a  $ptmp/esmf-test-artifacts 


