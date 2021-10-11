The purpose of this script is to allow testing of UFS with new snapshots of ESMF.

0. User should know what compiler and MPI they want to build with and an HPC-stack should be available for that combination a-priori on that machine.

1. Clone hpc-stack from github
2. Check `hpc-stack/config/config.sh` to ensure the compiler and MPI are consistent with the installed version from 0.
3. Edit `hpc-stack/stack/stack_noaa.yaml` to update the ESMF information e.g. version.
4. Edit `build_standalone_esmf.sh` in the top section.  Items to edit:
 - Path to installed HPC-stack and its version from 0.
 - Path to installation path (`PREFIX`)
 - Path to the freshly cloned hpc-stack from 1.
 - Path to the `yaml` file to use from 3.
5. Execute: `./build_standalone_esmf.sh`.

Upon completion, ESMF will be installed in `PREFIX`.
If you wish to use this as a module, you will have to edit the modulefile to replace `HPC_OPT` in the module file with the installation `PREFIX`.
