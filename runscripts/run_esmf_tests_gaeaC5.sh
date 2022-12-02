#!/bin/bash -l

date

hostname -f

export NS=/lustre/f2/dev/ncep/Gerhard.Theurich/ESMF-Nightly-Testing-C5
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit
python3 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m gaeaC5 -r $NS >& $NS/gaeaC5.log

date

