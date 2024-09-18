#!/bin/bash -l

ESMF_TEST_ROOT=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing

# These are for SLES12
#module use /discover/swdev/gmao_SIteam/modulefiles-SLES12
#module load python/GEOSpyD/Min24.4.0-0_py3.11 git/2.40.1
# These are for SLES15
module use /discover/swdev/gmao_SIteam/modulefiles-SLES15
module load python/GEOSpyD/24.3.0-0/3.11 git/2.45.0

cd $ESMF_TEST_ROOT/esmf-test-scripts

git remote update
git pull -X theirs origin --no-edit

$ESMF_TEST_ROOT/esmf-test-scripts/python_scripts/test_esmf.py -r $ESMF_TEST_ROOT -m discover 

