Overview

This system is based on a python script (build-test.py) that will build and test (optimized and debug) a branch of ESMF using a set of parameters 
that are defined in a yaml file which is tailored for each platform where the tests will be run. Each individual set of parameters (compiler, 
netcdf, and MPI version) is used to build ESMF in a separate directory via a batch job submitted through the queue. Upon successful completion of 
the build job, a second job is run to launch "make all_tests" using the same parameters. Further tests can be added to the testing section, but 
have not been to date.

YAML file structure and options

Each platform should have a yaml file that specifies both the PBS/Slurm configuration and account information and the selection of compilers,
netcdf, and MPI modules that will comprise the build parameters to be tested. Currently, the following scheduler variables are required--

scheduler: (pbs or slurm)
machine: (name of the platform/hostname)
account: (the account that will be charged for the run)
queue: (name of queue or QOS to use)
cpn: (number of cores per node on compute nodes)

The following scheduler variables are optional--

cluster: (some slurm configurations require a cluster rather than a partition)
partition: (some slurm configurations require a partition)

Note: Required variables can easily be changed to optional (maybe all should be?) and new variables can easily be added.

The build configurations also have a number of required and optional variables. The required variables are as follows--

compiler: (list of compilers in square brackets that will be tested. This does not need to contain all the compilers listed below. Names will be used to 
           define ESMF_COMPILER, so they should be intel, gfortran, pgi, etc.)

Each entry in the compiler list should have their own section in with the following--

compiler_name:
  version: (shorthand version number)
    module: (the full module name used to load this particular version of the compiler)
    netcdf: (the full module name that corresponds to this particular version of the compiler)
    mpi: 
      mpi_flavor_1: (the full module name that corresponds to the version of mpi to use. The mpi_flavor_1 will be used for the ESMF_COMM variable
                     when building the framework, so it must match the allowable names in the build system e.g. openmpi, intelmpi, mpich, etc.)
      mpi_flavor_2: Add as many flavors as desired.
    extra_env_vars: This is an optional variable that will allow environment variables to be set on a per-mpi basis. It is not fully tested.

  extramodule: This is an optional variable that can be used to load additional modules prior to build and run. For example, PrgEnv-intel might need 
               to be loaded on a Cray system
  unloadmodule: This is an optional list of modules that should be unloaded before setting the environment. 
  

Running the script

The script should be run from somewhere with decent disk space, since each individual set of parameters will create two directories (one for
debug and another for optimized builds). The script requires python3 and is invoked with a single argument, which is the path to the 
yaml file that should be used for the platform you are runnning on. All build/test directories will be created under your current directory.
The script has one required module, which is pyyaml. If it is not installed, it can be added using pip3 (make sure the pip you are using 
corresponds to the python3 version you are using). Install pyyaml under your own account by running "pip3 install --local pyyaml". You may 
have to search the modules on the machine to find an installation of python3 that also has pip3 installed. With pyyaml installed, the script
can be invoked as follows--

python3 path-to/build-test.py path-to/my-platform.yaml 

