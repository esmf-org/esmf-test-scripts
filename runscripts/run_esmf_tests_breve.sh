#!/bin/bash -l

date

hostname -f

export NS=/home/gerhard/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
$NS/esmf-test-scripts/python_scripts/test_esmf.py -m breve -r $NS >& $NS/breve.log

date
