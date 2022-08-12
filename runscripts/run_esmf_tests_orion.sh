#!/bin/bash -l

cd /work/noaa/da/mpotts/sandbox/esmf-test-scripts
module load git
git remote update
git pull -X theirs --no-edit origin
module load intelpython3
/work/noaa/da/mpotts/sandbox/esmf-test-scripts/python_scripts/test_esmf.py -r /work/noaa/da/mpotts/sandbox -m orion 


