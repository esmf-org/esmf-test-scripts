#!/bin/bash -l

cd /home/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /Volumes/esmf/mpotts
python3 ~/esmf-test-scripts/python_scripts/test_esmf.py -y  ~/esmf-test-scripts/config/catania.yaml -a /Volumes/esmf/mpotts/esmf-test-artifacts >& /home/mpotts/esmf-test-scripts/catania.log &

