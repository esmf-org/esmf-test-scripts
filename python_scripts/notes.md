runpython.sh
build-{}_{}_{}_{}.bat'.format(comp,ver,key,build_type)
test-{}_{}_{}_{}.bat

## template

```bash
Wed Feb 16 07:42:49 MST 2022
#!/bin/sh -l
#PBS -N build-intel_18.0.5_intelmpi_O.bat
#PBS -l walltime=1:00:00
#PBS -l walltime=3:00:00
#PBS -q regular
#PBS -A p93300606
#PBS -l select=1:ncpus=36:mpiprocs=36
JOBID="`echo $PBS_JOBID | cut -d. -f1`"

cd /glade/scratch/rlong/esmf-testing/intel_18.0.5_intelmpi_O_jedwards_pio_update
module load intel/18.0.5 impi/2018.4.274 netcdf/4.6.3
module list >& module-build.log #var

set -x
export ESMF_NETCDF=nc-config

export ESMF_DIR=/glade/scratch/rlong/esmf-testing/intel_18.0.5_intelmpi_O_jedwards_pio_update #var
export ESMF_COMPILER=intel #var
export ESMF_COMM=intelmpi #var
export ESMF_BOPT='O' #var
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'

# all variable below
make info 2>&1| tee info.log
make install 2>&1| tee install_$JOBID.log
make all_tests 2>&1| tee test_$JOBID.log

export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
chmod +x runpython.sh
cd nuopc-app-prototypes
./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log

cd ../src/addon/ESMPy

export PATH=$PATH:$HOME/.local/bin
python3 setup.py build 2>&1 | tee python_build.log
ssh cheyenne6 /glade/scratch/rlong/esmf-testing/intel_18.0.5_openmpi_O_jedwards_pio_update/runpython.sh 2>&1 | tee python_build.log
python3 setup.py test 2>&1 | tee python_test.log
python3 setup.py test_examples 2>&1 | tee python_examples.log
python3 setup.py test_regrid_from_file 2>&1 | tee python_regrid.log

```
