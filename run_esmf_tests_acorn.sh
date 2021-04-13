#!/bin/bash -l

cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit origin python
cd $ptmp
python3 $NS/esmf-test-scripts/build-test.py $NS/esmf-test-scripts/acorn.yaml  $ptmp/esmf-test-artifacts >& $NS/esmf-test-scripts/acorn.log 


