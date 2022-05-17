#!/bin/bash -l

cd /scratch/cluster/dunlap/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
cd /scratch/cluster/dunlap/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/izumi.yaml -a /scratch/cluster/dunlap/esmf-testing/esmf-test-artifacts

#  /scratch/cluster/dunlap/esmf-testing/izumi.log
