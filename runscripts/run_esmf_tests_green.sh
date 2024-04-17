#!/bin/bash -l

esmftestroot=/Users/sacks/projects/scratch/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

# The following is needed for ESMPy testing
./py_env_creation/py_env_create --path ${esmftestroot} --file environment_python311.yml
conda activate ${esmftestroot}/esmf-test-scripts-conda-env

cd ${esmftestroot}
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m green -r ${esmftestroot} >& ${esmftestroot}/test_esmf_green.log &
