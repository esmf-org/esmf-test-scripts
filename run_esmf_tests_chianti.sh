#!/bin/bash -l

module load python
cd /home/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /home/mpotts
python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/chianti.yaml $PWD/esmf-test-artifacts


