#!/bin/bash -l

cd /work/noaa/da/mpotts/sandbox/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
module load intelpython3
cd /work/noaa/da/mpotts/sandbox
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/orion.yaml -a  $PWD/esmf-test-artifacts


