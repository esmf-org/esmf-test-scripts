#!/bin/bash -l

cd /project/esmf/sacks/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /project/esmf/sacks/esmf-testing
python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m catania -r /project/esmf/sacks/esmf-testing >& /project/esmf/sacks/esmf-testing/test_esmf_catania.log
