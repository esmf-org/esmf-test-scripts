#!/bin/bash -l

cd /work/noaa/da/mpotts/sandbox/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin python
module load python/3.7.5
cd /work/noaa/da/mpotts/sandbox
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/orion.yaml  $PWD/esmf-test-artifacts


