#!/bin/bash -l

cd /home/mpotts/esmf-test-scripts
git remote update
git pull -X theirs --no-edit 
cd /home/mpotts
source /home/mpotts/spack/opt/spack/linux-linuxmint19-skylake/gcc-9.3.0/lmod-8.3-cvpunltgew3leifriqeq6n5wtduvd3ss/lmod/8.3/init/bash
module use /home/mpotts/spack/share/spack/modules/linux-linuxmint19-skylake
module use ~/hpc-modules/modulefiles/stack
#module load hpc/1.1.0.a hpc-intel-oneapi-compilers/2021.2.0-gcc-9.3.0   hpc-intel-oneapi-mpi/2021.2.0-gcc-9.3.0
/home/mpotts/spack/opt/spack/linux-linuxmint19-skylake/gcc-9.3.0/python-3.8.6-h4tyegzarqj6qmaakpwhaanzsel5utjw/bin/python ./esmf-test-scripts/python_scripts/test_esmf.py -y ./esmf-test-scripts/config/chianti.yaml -a /home/mpotts/esmf-test-artifacts |& tee chianti.log


