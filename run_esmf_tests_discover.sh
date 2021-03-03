#!/bin/bash -l

module load python/GEOSpyD/Ana2019.10_py3.7 
cd /discover/nobackup/mapotts1/esmf-test-scripts
git remote update
git pull -X theirs python --no-edit
cd /discover/nobackup/projects/sbu/mpotts/esmf
python $NS/esmf-test-scripts/build-test.py $NS/esmf-test-scripts/discover.yaml /discover/nobackup/projects/sbu/mpotts/esmf/esmf-test-artifacts


