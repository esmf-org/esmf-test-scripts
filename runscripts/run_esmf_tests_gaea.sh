#!/bin/bash -l

cd /lustre/f2/dev/Mark.Potts/esmf-test/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
module load cray-python/3.7.3.2
/lustre/f2/dev/Mark.Potts/esmf-test/esmf-test-scripts/python_scripts/test_esmf.py -r /lustre/f2/dev/Mark.Potts/esmf-test -m gaea 

