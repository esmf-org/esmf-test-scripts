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
10) cpe-gnu                                             
11) gcc/10.1.0(default)                                 
12) cray-netcdf/4.7.4.0                                 
Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

sed: can't read /lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/test/testg/Unicos.gfortran.64.mpi.default/unit_tests.config: No such file or directory
Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers and libraries from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

Warning:
 Headers from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

In file included from /opt/gcc/10.1.0/snos/include/g++/backward/strstream:50,
                 from /lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/src/include/ESMCI_VM.h:41,
                 from /lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/src/include/ESMCI_Base.h:27,
                 from /lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/src/include/ESMCI.h:25,
                 from ESMCI_WordsizeSubr.C:24:
/opt/gcc/10.1.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
Warning:
 Headers from cray-netcdf will be ignored because depends on PE_HDF5 which is unavailable..

ESMF_WordsizeUTest.F90:72:53:

   69 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vi(1), vi(2), diff)
      |                                                     2
......
   72 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vr(1), vr(2), diff)
      |                                                     1
Error: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(4)/INTEGER(4)).
ESMF_WordsizeUTest.F90:80:53:

   69 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vi(1), vi(2), diff)
      |                                                     2
......
   80 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vip(1), vip(2), ptrsizeF)
      |                                                     1
Error: Type mismatch between actual argument at (1) and actual argument at (2) (TYPE(testp)/INTEGER(4)).
ESMF_WordsizeUTest.F90:96:53:

   69 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vi(1), vi(2), diff)
      |                                                     2
......
   96 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vi8(1), vi8(2), i8sizeF)
      |                                                     1
Error: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(8)/INTEGER(4)).
ESMF_WordsizeUTest.F90:99:53:

   69 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vi(1), vi(2), diff)
      |                                                     2
......
   99 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vr4(1), vr4(2), r4sizeF)
      |                                                     1
Error: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(4)/INTEGER(4)).
ESMF_WordsizeUTest.F90:102:53:

   69 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vi(1), vi(2), diff)
      |                                                     2
......
  102 |     call ESMF_PointerDifference(C_SIZEOF (c_ptrvar), vr8(1), vr8(2), r8sizeF)
      |                                                     1
Error: Type mismatch between actual argument at (1) and actual argument at (2) (REAL(8)/INTEGER(4)).
make[5]: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/build/common.mk:3885: ESMF_WordsizeUTest.o] Error 1
make[4]: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/build/common.mk:3779: tree] Error 1
make[3]: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/build/common.mk:3779: tree] Error 1
make[2]: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/build/common.mk:3779: tree] Error 1
make[1]: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/build/common.mk:2935: build_unit_tests] Error 2
make: *** [/lfs/h1/emc/nceplibs/noscrub/Mark.Potts/gfortran_10.1.0_mpi_g/build/common.mk:2320: all_tests] Error 2
