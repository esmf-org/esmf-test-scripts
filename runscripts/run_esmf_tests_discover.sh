#!/bin/bash -l

module load python/GEOSpyD/Ana2019.10_py3.7 git/2.30.0
cd /discover/nobackup/projects/sbu/mpotts/esmf-test/esmf-test-scripts
git remote update
git pull -X theirs origin --no-edit
/discover/nobackup/projects/sbu/mpotts/esmf-test/esmf-test-scripts/python_scripts/test_esmf.py -r /discover/nobackup/projects/sbu/mpotts/esmf-test -m discover 

