#!/bin/bash -l

cd /scratch1/NCEPDEV/da/Mark.Potts/sandbox/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
export NS=/scratch1/NCEPDEV/da/Mark.Potts
module load intelpython
cd /scratch1/NCEPDEV/stmp2/Mark.Potts
python3 $NS/sandbox/esmf-test-scripts/python_scripts/test_esmf.py -y  $NS/sandbox/esmf-test-scripts/config/hera.yaml -a $NS/sandbox/esmf-test-artifacts >& $NS/sandbox/esmf-test-scripts/hera.log &


