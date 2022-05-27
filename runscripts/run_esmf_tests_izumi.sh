#!/bin/bash -l

cd /scratch/cluster/${USER}/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
cd /scratch/cluster/${USER}/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/izumi.yaml -a /scratch/cluster/${USER}/esmf-testing/esmf-test-artifacts >& /scratch/cluster/${USER}/esmf-testing/test_esmf_izumi.log
