#!/bin/bash -l

cd /lfs4/HFIP/hfv3gfs/Mark.Potts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
export NS=/lfs4/HFIP/hfv3gfs/Mark.Potts
module load intelpython/3.6.5
cd $NS
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -y  $NS/esmf-test-scripts/config/jet.yaml -a $NS/esmf-test-artifacts >& $NS/esmf-test-scripts/jet.log &


