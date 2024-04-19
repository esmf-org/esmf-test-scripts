#!/bin/bash -l

esmftestroot=/Users/sacks/projects/scratch/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

# The following is needed for ESMPy testing
./py_env_creation/py_env_create --path ${esmftestroot}/conda_environments --file environment-python3.11.yml
conda activate ${esmftestroot}/conda_environments/esmf-test-scripts-environment-python3.11

cd ${esmftestroot}
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m green -r ${esmftestroot} >& ${esmftestroot}/test_esmf_green.log &
