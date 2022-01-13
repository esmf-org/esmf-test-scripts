#!/bin/bash -l

cd /global/homes/r/rsdunlap/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin 
cd /global/homes/r/rsdunlap/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -y  ./esmf-test-scripts/config/cori.yaml -a /global/homes/r/rsdunlap/esmf-testing/esmf-test-artifacts >& /global/homes/r/rsdunlap/esmf-testing/cori.log
