#!/bin/bash

set -eux

# Set Installed HPC-stack parameters
INSTALLED_HPC_STACK_PATH=/scratch2/NCEPDEV/nwprod/hpc-stack/libs/hpc-stack/modulefiles/stack
INSTALLED_HPC_STACK_VERSION=1.1.0

# Set installation path
PREFIX=/scratch2/NCEPDEV/stmp1/Rocky.Dunlap/esmftest/ESMF-INSTALL

# Set source of hpc-stack repository
HPC_STACK_ROOT=/scratch2/NCEPDEV/stmp1/Rocky.Dunlap/esmftest/hpc-stack

# Set the name of the yaml file to use for ESMF, MAPL, etc.
yaml=$HPC_STACK_ROOT/stack/stack_noaa.yaml

HPC_STACK_CONFIG=$HPC_STACK_ROOT/config/config_hera.sh

# Set hpc-stack config based on platform

##########################
# USER NEED NOT EDIT BELOW
##########################
set +x
export MODULES=true
export HPC_STACK_ROOT
export PREFIX
source $HPC_STACK_CONFIG
source $HPC_STACK_ROOT/stack_helpers.sh
if [[ -e $yaml ]]; then
  eval $(parse_yaml $yaml "STACK_")
else
  echo "ERROR: YAML FILE $yaml DOES NOT EXIST, ABORT!"
  exit 1
fi

# Initialize installed hpc-stack path
source $MODULESHOME/init/bash
module use $INSTALLED_HPC_STACK_PATH
module load hpc/$INSTALLED_HPC_STACK_VERSION
set -x

# Instructions from build_stack.sh need to be replicated
[[ $USE_SUDO =~ [yYtT] ]] && export SUDO="sudo" || export SUDO=""

# Make sure pkg/ dir is present
mkdir -p $HPC_STACK_ROOT/pkg

# Build and install
$HPC_STACK_ROOT/libs/build_esmf.sh
