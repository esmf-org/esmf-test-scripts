#!/bin/bash -l

cd /lustre/f2/dev/Mark.Potts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
module load cray-python/3.7.3.2
cd /lustre/f2/dev/Mark.Potts
#python3 ./esmf-test-scripts/build-test.py ./esmf-test-scripts/gaea.yaml /lustre/f2/dev/Mark.Potts/esmf-test-artifacts >& /lustre/f2/dev/Mark.Potts/esmf-test-scripts/gaea.log
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y ./esmf-test-scripts/config/gaea.yaml -a /lustre/f2/dev/Mark.Potts/esmf-test-artifacts >& /lustre/f2/dev/Mark.Potts/esmf-test-scripts/logs/gaea.log


