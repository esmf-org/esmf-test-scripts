#!/bin/bash -l

cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin
cd $ptmp
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -y  $NS/esmf-test-scripts/config/acorn.yaml -a  $ptmp/esmf-test-artifacts >& $NS/esmf-test-scripts/acorn.log 


