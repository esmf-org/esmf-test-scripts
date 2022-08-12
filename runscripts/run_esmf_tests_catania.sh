#!/bin/bash -l

cd /project/esmf/rocky/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /project/esmf/rocky/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m catania -r /project/esmf/rocky/esmf-testing >& /project/esmf/rocky/esmf-testing/test_esmf_catania.log &

