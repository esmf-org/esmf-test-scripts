#!/bin/bash -l

cd /scratch1/NCEPDEV/stmp2/Rocky.Dunlap/esmf-testing/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
export NS=/scratch1/NCEPDEV/stmp2/Rocky.Dunlap/esmf-testing
module load intelpython
$NS/esmf-test-scripts/python_scripts/test_esmf.py -m hera -r /scratch1/NCEPDEV/stmp2/Rocky.Dunlap/esmf-testing >& $NS/hera.log &

