#!/bin/bash -l

cd /lustre/f2/dev/Mark.Potts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin python
module load cray-python/3.7.3.2
cd /lustre/f2/dev/Mark.Potts
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/gaea.yaml $PWD/esmf-test-artifacts


