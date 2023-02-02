#!/bin/bash -l

date

hostname -f

export NS=/glade/gust/scratch/theurich/ESMF-Nightly-Testing
cd $NS/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
python3.6 $NS/esmf-test-scripts/python_scripts/test_esmf.py -m gust -r $NS >& $NS/gust.log 

date

