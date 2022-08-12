#!/bin/bash -l

cd /home/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /home/mpotts
module load python/3.8.6-gcc-9.3.0 
source /home/mpotts/spack/opt/spack/linux-linuxmint19-skylake/gcc-9.3.0/lmod-8.3-cvpunltgew3leifriqeq6n5wtduvd3ss/lmod/8.3/init/bash
module use /home/mpotts/spack/share/spack/modules/linux-linuxmint19-skylake
module use ~/hpc-modules/modulefiles/stack
/home/mpotts/esmf-test-scripts/python_scripts/test_esmf.py -r /home/mpotts/esmf-tests -m chianti 


