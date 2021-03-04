#!/bin/bash -l

module load python/GEOSpyD/Ana2019.10_py3.7 
cd /discover/nobackup/mapotts1/esmf-test-scripts
git remote update
git pull -X theirs origin python --no-edit
cd /discover/nobackup/projects/sbu/mpotts/esmf
python /discover/nobackup/mapotts1/esmf-test-scripts/build-test.py /discover/nobackup/mapotts1/esmf-test-scripts/discover.yaml /discover/nobackup/projects/sbu/mpotts/esmf/esmf-test-artifacts


