#!/bin/bash -l

cd /data/users/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
module load miniconda
cd /scratch/users/mpotts
python3 /data/users/mpotts/esmf-test-scripts/python_scripts/test_esmf.py -y  /data/users/mpotts/esmf-test-scripts/config/s4.yaml -a /data/users/mpotts/esmf-test-artifacts >& /data/users/mpotts/esmf-test-scripts/s4.log 


