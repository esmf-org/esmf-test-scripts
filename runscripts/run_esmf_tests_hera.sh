#!/bin/bash -l

cd /scratch1/NCEPDEV/nems/role.esmfmaint/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
export NS=/scratch1/NCEPDEV/nems/role.esmfmaint
module load intelpython
cd /scratch1/NCEPDEV/stmp2/role.esmfmaint
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -y  $NS/esmf-test-scripts/config/hera.yaml -a /scratch1/NCEPDEV/stmp2/role.esmfmaint/esmf-test-artifacts >& $NS/esmf-test-scripts/hera.log &


