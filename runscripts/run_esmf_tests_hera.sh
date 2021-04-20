#!/bin/bash -l

cd /scratch1/NCEPDEV/da/Mark.Potts/sandbox/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load intelpython
cd /scratch1/NCEPDEV/da/Mark.Potts/sandbox
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/hera.yaml -a $PWD/esmf-test-artifacts >& ./esmf-test-scripts/hera.log &


