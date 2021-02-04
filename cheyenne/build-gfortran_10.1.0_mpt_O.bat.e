
Inactive Modules:
  1) ncarcompilers/0.5     2) netcdf/4.7.4     3) openmpi/4.0.5

Lmod has detected the following error: The following module(s) are unknown:
"mpt/2.22"

Please check the spelling or version number. Also try "module spider ..."
It is also possible your cache file is out-of-date; it may help to try:
  $ module --ignore-cache load "mpt/2.22"

Also make sure that all modulefiles written in TCL start with the string
#%Module




Currently Loaded Modules:
  1) ncarenv/1.3

Inactive Modules:
  1) ncarcompilers/0.5   2) openmpi/4.0.5   3) netcdf/4.7.4

 

make[8]: *** [/glade/scratch/mpotts/gfortran_10.1.0_mpt_O/obj/objO/Linux.gfortran.64.mpt.default/binary.o] Error 1
make[8]: *** Waiting for unfinished jobs....
make[8]: *** [/glade/scratch/mpotts/gfortran_10.1.0_mpt_O/obj/objO/Linux.gfortran.64.mpt.default/emitterutils.o] Error 1
make[8]: *** [/glade/scratch/mpotts/gfortran_10.1.0_mpt_O/obj/objO/Linux.gfortran.64.mpt.default/nodeevents.o] Error 1
make[8]: *** wait: No child processes.  Stop.
make[7]: *** [esmflib] Error 2
make[6]: *** [tree_lib] Error 2
make[5]: *** [tree] Error 1
make[4]: *** [tree] Error 1
make[3]: *** [tree] Error 1
make[2]: *** [tree] Error 1
make[1]: *** [build_libs] Error 2
make: *** [lib] Error 2
