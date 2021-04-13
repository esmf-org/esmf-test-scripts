#!/bin/bash -l

cd /home/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /Volumes/esmf/mpotts
python3 ~/esmf-test-scripts/build-test.py ~/esmf-test-scripts/catania.yaml /Volumes/esmf/mpotts/esmf-test-artifacts >& /home/mpotts/esmf-test-scripts/catania.log &

