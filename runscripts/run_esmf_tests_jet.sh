#!/bin/bash -l

cd /lfs4/HFIP/hfv3gfs/Mark.Potts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
export NS=/lfs4/HFIP/hfv3gfs/Mark.Potts
module load intelpython
$NS/esmf-test-scripts/python_scripts/test_esmf.py -r /lfs4/HFIP/hfv3gfs/Mark.Potts/esmf-tests --machine jet 


