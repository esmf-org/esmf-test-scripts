Currently Loaded Modulefiles:
 1) craype/2.7.0(default)                               
 2) craype-x86-rome                                     
 3) libfabric/1.11.0.0.233(default)                     
 4) craype-network-ofi                                  
 5) cray-dsmml/0.1.2(default)                           
 6) perftools-base/20.09.0(default)                     
 7) xpmem/2.2.35-7.0.1.0_1.3__gd50fabf.shasta(default)  
 8) cray-mpich/8.0.15(default)                          
 9) cray-libsci/20.08.1.2(default)                      
10) cpe-intel                                           
11) intel/19.1.3.217                                    
12) cray-netcdf/4.7.4.0                                 
Warning:
 Headers from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Intel(R) Fortran Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.2.275 Build 20200623
Copyright (C) 1985-2020 Intel Corporation.  All rights reserved.

Warning:
 Headers from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.2.275 Build 20200623
Copyright (C) 1985-2020 Intel Corporation.  All rights reserved.

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

/usr/lib64/gcc/x86_64-suse-linux/7/../../../../x86_64-suse-linux/bin/ld: wrappers.o: relocation R_X86_64_32 against `_ZN17_INTERNALed436f8fSt8__ioinitE' can not be used when making a shared object; recompile with -fPIC
/usr/lib64/gcc/x86_64-suse-linux/7/../../../../x86_64-suse-linux/bin/ld: wrappers_io.o: relocation R_X86_64_PC32 against symbol `c_esmftrace_isinitialized' can not be used when making a shared object; recompile with -fPIC
/usr/lib64/gcc/x86_64-suse-linux/7/../../../../x86_64-suse-linux/bin/ld: wrappers_mpi.o: relocation R_X86_64_PC32 against symbol `c_esmftrace_isinitialized' can not be used when making a shared object; recompile with -fPIC
/usr/lib64/gcc/x86_64-suse-linux/7/../../../../x86_64-suse-linux/bin/ld: final link failed: nonrepresentable section on output
make[2]: *** [makefile:35: tracelib_preload] Error 1
make[1]: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/intel_2019.3_mpi_O/build/common.mk:2091: build_tracelibs] Error 2
make: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/intel_2019.3_mpi_O/build/common.mk:2072: lib] Error 2
