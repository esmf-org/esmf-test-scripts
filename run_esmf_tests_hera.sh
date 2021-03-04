#!/bin/bash -l

cd /scratch1/NCEPDEV/da/Mark.Potts/sandbox/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load intelpython
cd /scratch1/NCEPDEV/da/Mark.Potts/sandbox
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/hera.yaml $PWD/esmf-test-artifacts


