In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI.h:25,
                 from ESMCI_WordsizeSubr.C:24:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:22,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI.h:25,
                 from ESMCI_WordsizeSubr.C:24:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI.h:25,
                 from ESMCI_FeatureSubr.C:21:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:22,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI.h:25,
                 from ESMCI_FeatureSubr.C:21:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI.h:25,
                 from ESMCI_FeatureUTest.C:14:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:22,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI.h:25,
                 from ESMCI_FeatureUTest.C:14:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_TestHarnessUtilMod.F90:236:0:

  236 |        return
      | 
Warning: control reaches end of non-void function [-Wreturn-type]
ESMF_TestHarnessUtilMod.F90:150:0:

  150 |         return
      | 
Warning: control reaches end of non-void function [-Wreturn-type]
ESMF_TestHarnessUtilMod.F90:98:0:

   98 |        return
      | 
Warning: control reaches end of non-void function [-Wreturn-type]
ESMF_TestHarnessMod.F90:3121:18:

 3121 |               if( farray1D(i1) /= rarray1D(i1) ) then
      |                  1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessMod.F90:3147:19:

 3147 |                if( farray2D(i1,i2) /= rarray2D(i1,i2) ) then
      |                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessMod.F90:3175:23:

 3175 |                    if( farray3D(i1,i2,i3) /= rarray3D(i1,i2,i3) ) then
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessMod.F90:3205:26:

 3205 |                       if( farray4D(i1,i2,i3,i4) /= rarray4D(i1,i2,i3,i4) ) then
      |                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessMod.F90:3238:29:

 3238 |                          if( farray5D(i1,i2,i3,i4,i5) /=                       &
      |                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessMod.F90:3274:29:

 3274 |                          if( farray6D(i1,i2,i3,i4,i5,i6) /=                    &
      |                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessMod.F90:3312:29:

 3312 |                          if( farray7D(i1,i2,i3,i4,i5,i6,i7) /=                 &
      |                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_TestHarnessDistMod.F90:691:28:

  691 |         dist%dsize(irank) = value(irank,n)
      |                            1
Warning: Possible change of value in conversion from REAL(8) to INTEGER(4) at (1) [-Wconversion]
ESMF_TestHarnessDistMod.F90:702:29:

  702 |         dist%dsize(irank) =  dist%dsize(irank) + value(irank,n)
      |                             1
Warning: Possible change of value in conversion from REAL(8) to INTEGER(4) at (1) [-Wconversion]
ESMF_TestHarnessDistMod.F90:706:29:

  706 |         dist%dsize(irank) =  dist%dsize(irank) * value(irank,n)
      |                             1
Warning: Possible change of value in conversion from REAL(8) to INTEGER(4) at (1) [-Wconversion]
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/test_harness/../include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/test_harness/../include/ESMC.h:36,
                 from ESMC_TestHarnessLatexPPUTest.C:9:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_LogErrUTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMC_LogErrUTest.C: In function 'int main()':
ESMC_LogErrUTest.C:57:11: warning: enum constant in boolean context [-Wint-in-bool-context]
   57 |   flush = ESMF_FALSE;
      |           ^~~~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from ESMC_LogErrPerfUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_LogErrPerfUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_VMUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_VMUserMpiInitUTest.F90:439:22:

  439 |       call ESMF_Test((isum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:463:22:

  463 |       call ESMF_Test((isum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:487:22:

  487 |       call ESMF_Test((isum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:364:22:

  364 |       call ESMF_Test((isum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:387:22:

  387 |       call ESMF_Test((fsum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:411:22:

  411 |       call ESMF_Test((fsum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:314:22:

  314 |       call ESMF_Test((fsum.eq.0), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:337:22:

  337 |       call ESMF_Test((fsum.eq.0.), name, failMsg, result, ESMF_SRCLINE)
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:237:22:

  237 |       call ESMF_Test((float_results.eq.my_float_results), name, failMsg, &
      |                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:258:22:

  258 |       call ESMF_Test((float4_results.eq.my_float4_results), name, failMsg, &
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:98:22:

   98 |       call ESMF_Test((float_results.eq.my_float_results), name, failMsg, &
      |                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMUserMpiInitUTest.F90:121:22:

  121 |       call ESMF_Test((float4_results.eq.my_float4_results), name, failMsg, &
      |                      1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendVMRecvUTest.F90:198:23:

  198 |       call ESMF_Test( (R4Sum .eq. 0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendVMRecvUTest.F90:229:23:

  229 |       call ESMF_Test( (R8Sum .eq. 0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMSendNbVMRecvNbUTest.F90:293:23:

  293 |       call ESMF_Test( (R4Sum .eq. 0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendNbVMRecvNbUTest.F90:314:23:

  314 |       call ESMF_Test( (R8Sum .eq. 0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMSendNbVMRecvNbUTest.F90:504:23:

  504 |       call ESMF_Test( (R4Sum .eq. 0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendNbVMRecvNbUTest.F90:517:23:

  517 |       call ESMF_Test( (R8Sum .eq. 0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMSendRecvUTest.F90:185:23:

  185 |       call ESMF_Test( (R4Sum .eq. 0.0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendRecvUTest.F90:207:23:

  207 |       call ESMF_Test( (R8Sum .eq. 0.0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMSendRecvNbUTest.F90:247:23:

  247 |       call ESMF_Test( (R4Sum .eq. 0.0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendRecvNbUTest.F90:269:23:

  269 |       call ESMF_Test( (R8Sum .eq. 0.0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMSendRecvNbUTest.F90:415:23:

  415 |       call ESMF_Test( (R4Sum .eq. 0.0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMSendRecvNbUTest.F90:429:23:

  429 |       call ESMF_Test( (R8Sum .eq. 0.0), name, failMsg, result, ESMF_SRCLINE)
      |                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:161:8:

  161 |     if (farray1(i)/=(real(localPet*100+i,ESMF_KIND_R8))) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:177:8:

  177 |     if (farray2(i)/=(real(scatterRoot*100+i+2*localPet,ESMF_KIND_R8))) &
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:205:8:

  205 |     if (f4array1(i)/=(real(localPet*100+i,ESMF_KIND_R4))) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:221:8:

  221 |     if (f4array2(i)/=(real(scatterRoot*100+i+2*localPet,ESMF_KIND_R4))) &
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:327:8:

  327 |     if (farray1(i)/=(real(localPet*100+i,ESMF_KIND_R8))) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:343:8:

  343 |     if (farray2(i)/=(real(scatterRoot*100+i+2*localPet,ESMF_KIND_R8))) &
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:372:8:

  372 |     if (f4array1(i)/=(real(localPet*100+i,ESMF_KIND_R4))) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMScatterUTest.F90:388:8:

  388 |     if (f4array2(i)/=(real(scatterRoot*100+i+2*localPet,ESMF_KIND_R4))) &
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:164:10:

  164 |       if (farray1(i)/=real(i,ESMF_KIND_R8)) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:168:10:

  168 |       if (farray1(i)/=0.) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:186:8:

  186 |     if (farray2(i)/=real(i + 2 * localPet,ESMF_KIND_R8)) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:214:10:

  214 |       if (f4array1(i)/=real(i,ESMF_KIND_R4)) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:218:10:

  218 |       if (f4array1(i)/=0.) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:236:8:

  236 |     if (f4array2(i)/=real(i + 2 * localPet,ESMF_KIND_R4)) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:340:10:

  340 |       if (farray1(i)/=real(i,ESMF_KIND_R8)) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:344:10:

  344 |       if (farray1(i)/=0.) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:362:8:

  362 |     if (farray2(i)/=real(i + 2 * localPet,ESMF_KIND_R8)) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:390:10:

  390 |       if (f4array1(i)/=real(i,ESMF_KIND_R4)) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:394:10:

  394 |       if (f4array1(i)/=0.) rc = ESMF_FAILURE
      |          1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMGatherUTest.F90:412:8:

  412 |     if (f4array2(i)/=real(i + 2 * localPet,ESMF_KIND_R4)) rc = ESMF_FAILURE
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMAllGatherUTest.F90:151:20:

  151 |                 if (farray1(i)/=i) rc = ESMF_FAILURE
      |                    1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMAllGatherUTest.F90:167:12:

  167 |         if (farray2(i)/=real(i + 2 * localPet , ESMF_KIND_R8)) rc = ESMF_FAILURE
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMAllGatherUTest.F90:193:20:

  193 |                 if (f4array1(i)/=i) rc = ESMF_FAILURE
      |                    1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMAllGatherUTest.F90:209:12:

  209 |         if (f4array2(i)/=real(i + 2 * localPet , ESMF_KIND_R4))  &
      |            1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMAllGatherVUTest.F90:220:20:

  220 |                 if (farray1(i)/=farray5(i)) rc = ESMF_FAILURE
      |                    1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMAllGatherVUTest.F90:250:20:

  250 |                 if (f4array1(i)/=f4array5(i)) rc = ESMF_FAILURE
      |                    1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMBroadcastUTest.F90:240:12:

  240 |         if (r4_localData(i) /= r4_soln(i)) all_verify = .false.
      |            1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMBroadcastUTest.F90:262:12:

  262 |         if (r8_localData(i) /= r8_soln(i)) all_verify = .false.
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMAllToAllUTest.F90:186:8:

  186 |     if (r4array2(i) /= r4array2_expected(i)) then
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMAllToAllUTest.F90:210:8:

  210 |     if (r4array3(i)/=r4array1(i)) then
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMAllToAllUTest.F90:236:8:

  236 |     if (r8array2(i) /= r8array2_expected(i)) then
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMAllToAllUTest.F90:260:8:

  260 |     if (r8array3(i)/=r8array1(i)) then
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_VMAllToAllVUTest.F90:188:8:

  188 |     if (f4array3(i)/=f4array1(i)) then
      |        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_VMAllToAllVUTest.F90:223:8:

  223 |     if (f8array3(i)/=f8array1(i)) then
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from ESMC_TraceRegionUTest.C:27:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_TraceRegionUTest.C:23:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_ClockUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_TimeIntervalUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_TimeUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_CalendarUTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_ConfigUTest.F90:1739:48:

 1739 |           success = (rc.eq.ESMF_SUCCESS) .and. (rvalue.eq.data_values(n))
      |                                                1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1829:50:

 1829 |             success = (rc.eq.ESMF_SUCCESS) .and. (rvalue.eq.table_values(m,n))
      |                                                  1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1317:13:

 1317 |          if( plev(line) /= plev_0(line) ) then
      |             1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1343:16:

 1343 |             if (vCorr(line, col) /= vCorr_0(col, line)) then
      |                1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1001:14:

 1001 |       if( any(sigU /= sigU_1) ) then
      |              1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1014:25:

 1014 |      call ESMF_Test((all(sigU.eq.sigU_1)), name, failMsg, result, ESMF_SRCLINE)
      |                         1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1117:14:

 1117 |       if( any(sigV /= sigV_1) ) then
      |              1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:1130:25:

 1130 |      call ESMF_Test((all(sigV.eq.sigV_1)), name, failMsg, result, ESMF_SRCLINE)
      |                         1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:717:14:

  717 |       if( any(sigV /= sigV_0) ) then
      |              1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:730:25:

  730 |      call ESMF_Test((all(sigV.eq.sigV_0)), name, failMsg, result, ESMF_SRCLINE)
      |                         1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:554:14:

  554 |       if( any(sigU /= sigU_0) ) then
      |              1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:567:25:

  567 |      call ESMF_Test((all(sigU.eq.sigU_0)), name, failMsg, result, ESMF_SRCLINE)
      |                         1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:250:13:

  250 |          if (tau == tau_0) then
      |             1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_ConfigUTest.F90:263:21:

  263 |      call ESMF_Test((tau.eq.tau_0), name, failMsg, result, ESMF_SRCLINE)
      |                     1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_ConfigUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_ArraySpecUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_DistGridUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_ArrayUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/IO/tests/../include/ESMCI_IO_NetCDF.h:39,
                 from ESMCI_IO_NetCDFUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMCI_IO_NetCDFUTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMCI_PIOhelpers.C:28:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/IO/tests/../include/pio.h:6,
                 from ESMCI_IO_PIOUTest.C:15:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_IO_InqUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_GridUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_GridCoordUTest.F90:2944:13:

 2944 |             (coord(3) .ne. REAL(i3,ESMF_KIND_R8))) then
      |             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridCoordUTest.F90:2943:13:

 2943 |             (coord(2) .ne. REAL(i2,ESMF_KIND_R8)) .or. &
      |             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridCoordUTest.F90:2942:13:

 2942 |         if ((coord(1) .ne. REAL(i1,ESMF_KIND_R8)) .or. &
      |             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:446:8:

  446 |     if (farrayPtr1D(i) .ne. (localIndices(i,1)-1)*(360/xdim)) then
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:460:8:

  460 |     if (farrayPtr1D(i) .ne. 100*i) then
      |        1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:810:6:

  810 |   if (coord3(1) .ne. index3(1)*ydim+index3(2)) correct=.false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:811:6:

  811 |   if (coord3(2) .ne. index3(2)*xdim+index3(1)) correct=.false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:861:6:

  861 |   if (coord3(1) .ne. index3(1)*ydim+index3(2)) correct=.false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:862:6:

  862 |   if (coord3(2) .ne. index3(2)*xdim+index3(1)) correct=.false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:863:6:

  863 |   if (coord3(3) .ne. index3(1)+index3(2)+index3(3)) correct=.false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:1069:6:

 1069 |   if (coord3(2) .ne. 200) correct = .false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_GridArbitraryUTest.F90:1262:6:

 1262 |   if (coord3(2) .ne. 200) correct = .false.
      |      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/Regridding/ESMCI_Interp.h:17,
                 from ESMCI_IntegrateUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMCI_IntegrateUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/Regridding/ESMCI_Interp.h:17,
                 from ESMCI_IntegrateUTest.C:19:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Attr.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MEField.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/Regridding/ESMCI_Interp.h:15,
                 from ESMCI_IntegrateUTest.C:19:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/Regridding/ESMCI_Interp.h:17,
                 from ESMCI_IntegrateUTest.C:19:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Attr.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MEField.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/Regridding/ESMCI_Interp.h:15,
                 from ESMCI_IntegrateUTest.C:19:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:129:12:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::self& ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::operator++() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>; ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::self = ESMCI::mesh_obj_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*, ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>, ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*> >]'
ESMCI_IntegrateUTest.C:47:22:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_MeshUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_MeshMOABUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_Proj4UTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_MeshVTKUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_BilinearUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_BilinearUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_BilinearUTest.C:27:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearParUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_BilinearParUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_BilinearParUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_BilinearParUTest.C:27:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh_Glue.h:31,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:24:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
ESMC_MBMesh_BilinearSingleElemUTest.C:61:3: warning: multi-line comment [-Wcomment]
   61 |   //           /      \
      |   ^
ESMC_MBMesh_BilinearSingleElemUTest.C:165:3: warning: multi-line comment [-Wcomment]
  165 |   //           /      \
      |   ^
ESMC_MBMesh_BilinearSingleElemUTest.C:366:3: warning: multi-line comment [-Wcomment]
  366 |   //            /  \
      |   ^
ESMC_MBMesh_BilinearSingleElemUTest.C:368:3: warning: multi-line comment [-Wcomment]
  368 |   //         /        \
      |   ^
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_BilinearSingleElemUTest.C:28:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_BilinearSingleElemUTest.C:29:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh_Glue.h:35,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:24:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh_Glue.h:35,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:24:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh_Glue.h:35,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:24:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh_Glue.h:35,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:24:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
ESMC_MBMesh_BilinearSingleElemUTest.C: In function 'int main(int, char**)':
ESMC_MBMesh_BilinearSingleElemUTest.C:597:45: warning: 'cart' may be used uninitialized in this function [-Wmaybe-uninitialized]
  597 |   mesh_pent_single = create_mesh_pent_single(rc, cart);
      |                      ~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
ESMC_MBMesh_BilinearEdgeCasesUTest.C:185:3: warning: multi-line comment [-Wcomment]
  185 |   //            /  \
      |   ^
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_BilinearEdgeCasesUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_BilinearEdgeCasesUTest.C:27:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:27:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateUTest.C:26:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_CreateUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_CreateUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_CreateUTest.C:36:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp: In member function 'moab::EvalSet moab::ElemEvaluator::get_eval_set(moab::EntityType)':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp:237:69: warning: implicitly-declared 'constexpr moab::EvalSet::EvalSet(const moab::EvalSet&)' is deprecated [-Wdeprecated-copy]
  237 |       inline EvalSet get_eval_set(EntityType tp) {return evalSets[tp];}
      |                                                                     ^
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp:72:16: note: because 'moab::EvalSet' has user-provided 'moab::EvalSet& moab::EvalSet::operator=(const moab::EvalSet&)'
   72 |       EvalSet &operator=(const EvalSet &eval) {
      |                ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateParUTest.C:26:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_CreateParUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_CreateParUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_CreateParUTest.C:36:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp: In member function 'moab::EvalSet moab::ElemEvaluator::get_eval_set(moab::EntityType)':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp:237:69: warning: implicitly-declared 'constexpr moab::EvalSet::EvalSet(const moab::EvalSet&)' is deprecated [-Wdeprecated-copy]
  237 |       inline EvalSet get_eval_set(EntityType tp) {return evalSets[tp];}
      |                                                                     ^
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp:72:16: note: because 'moab::EvalSet' has user-provided 'moab::EvalSet& moab::EvalSet::operator=(const moab::EvalSet&)'
   72 |       EvalSet &operator=(const EvalSet &eval) {
      |                ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateParUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateParUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateParUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateParUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_ExtrapolateUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_ExtrapolateUTest.C:24:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
ESMC_MBMesh_ExtrapolateUTest.C: In function 'bool weights_correct_extrapolate(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMesh_ExtrapolateUTest.C:57:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   57 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousUTest.C:26:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_RendezvousUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_RendezvousUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_RendezvousUTest.C:27:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
ESMC_MBMesh_RendezvousUTest.C: In function 'int mesh_print(ESMCI::MBMesh*)':
ESMC_MBMesh_RendezvousUTest.C:75:33: warning: format '%d' expects argument of type 'int', but argument 3 has type 'size_t' {aka 'long unsigned int'} [-Wformat=]
   75 |   printf("MESH PET %d - size = %d\n", localPet, elems.size());
      |                                ~^               ~~~~~~~~~~~~
      |                                 |                         |
      |                                 int                       size_t {aka long unsigned int}
      |                                %ld
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousParUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_RendezvousParUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_RendezvousParUTest.C:25:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_RendezvousParUTest.C:26:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
ESMC_MBMesh_RendezvousParUTest.C: In function 'int mesh_print(ESMCI::MBMesh*)':
ESMC_MBMesh_RendezvousParUTest.C:74:33: warning: format '%d' expects argument of type 'int', but argument 3 has type 'size_t' {aka 'long unsigned int'} [-Wformat=]
   74 |   printf("MESH PET %d - size = %d\n", localPet, elems.size());
      |                                ~^               ~~~~~~~~~~~~
      |                                 |                         |
      |                                 int                       size_t {aka long unsigned int}
      |                                %ld
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_SearchUTest.C:26:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_SearchUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_SearchUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_SearchUTest.C:27:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from ESMC_MBMesh_SearchUTest.C:37:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp: In member function 'moab::EvalSet moab::ElemEvaluator::get_eval_set(moab::EntityType)':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp:237:69: warning: implicitly-declared 'constexpr moab::EvalSet::EvalSet(const moab::EvalSet&)' is deprecated [-Wdeprecated-copy]
  237 |       inline EvalSet get_eval_set(EntityType tp) {return evalSets[tp];}
      |                                                                     ^
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../src/Moab/LocalDiscretization/moab/ElemEvaluator.hpp:72:16: note: because 'moab::EvalSet' has user-provided 'moab::EvalSet& moab::EvalSet::operator=(const moab::EvalSet&)'
   72 |       EvalSet &operator=(const EvalSet &eval) {
      |                ^~~~~~~~
ESMC_MBMesh_SearchUTest.C: In function 'bool search_gen(ESMCI::MBMesh*, ESMCI::PointList*, std::vector<double*>&, bool)':
ESMC_MBMesh_SearchUTest.C:179:16: warning: comparison of integer expressions of different signedness: 'int' and 'std::vector<double*>::size_type' {aka 'long unsigned int'} [-Wsign-compare]
  179 |       if (ind1 >= cv.size()) {rc = ESMC_RC_VAL_OUTOFRANGE; break;}
      |           ~~~~~^~~~~~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_SearchUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_SearchUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_SearchUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_SearchUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilUTest.C:26:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_UtilUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_UtilUTest.C:26:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilUTest.C:26:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/strstream:50,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilParUTest.C:25:
/apps/spack/linux-centos7-x86_64/gcc-4.8.5/gcc-9.2.0-wqdecm4rkyyhejagxwmnabt6lscgm45d/include/c++/9.2.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
   32 | #warning \
      |  ^~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_MBMesh_UtilParUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_MBMesh_UtilParUTest.C:25:
ESMC_MBMeshTestUtilMBMesh.C: In function 'bool weights_correct(ESMCI::IWeights&, std::vector<double>)':
ESMC_MBMeshTestUtilMBMesh.C:68:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   68 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h: In instantiation of 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:74:11: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
   74 | attr(_attr)
      |           ^
In file included from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_DDir.h:16,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Migrator.h:17,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_WMat.h:15,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:28,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilParUTest.C:25:
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h: In instantiation of 'ESMCI::_List_iterator<A, B, C>::self ESMCI::_List_iterator<A, B, C>::operator++(int) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]':
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:118:8:   required from 'void ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::next_good_object() [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:77:3:   required from 'ESMCI::mesh_obj_iterator<TT, Ref, Ptr, MSet_iterator, obj_iterator>::mesh_obj_iterator(const MSet_iterator&, const MSet_iterator&, const ESMCI::Attr&) [with TT = ESMCI::MeshObj; Ref = const ESMCI::MeshObj&; Ptr = const ESMCI::MeshObj*; MSet_iterator = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>; obj_iterator = ESMCI::_List_iterator<ESMCI::MeshObj, const ESMCI::MeshObj&, const ESMCI::MeshObj*>]'
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:348:46:   required from here
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:113:18: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  113 |   _List_iterator tmp = *this;
      |                  ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:115:10: warning: implicitly-declared 'constexpr ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>::_List_iterator(const ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>&)' is deprecated [-Wdeprecated-copy]
  115 |   return tmp;
      |          ^~~
/scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:82:7: note: because 'ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>' has user-provided 'ESMCI::_List_iterator<A, B, C>::self& ESMCI::_List_iterator<A, B, C>::operator=(const ESMCI::_List_iterator<A, B, C>&) [with TT = ESMCI::Kernel; Ref = const ESMCI::Kernel&; Ptr = const ESMCI::Kernel*; ESMCI::_List_iterator<A, B, C>::self = ESMCI::_List_iterator<ESMCI::Kernel, const ESMCI::Kernel&, const ESMCI::Kernel*>]'
   82 | self &operator=(const _List_iterator &rhs) {
      |       ^~~~~~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from ESMC_NearestUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from ESMC_NearestUTest.C:24:
ESMC_MBMeshTestUtilPL.C: In function 'bool weights_correct_nearest(ESMCI::WMat&, std::vector<double>)':
ESMC_MBMeshTestUtilPL.C:54:24: warning: comparison of integer expressions of different signedness: 'std::vector<double>::size_type' {aka 'long unsigned int'} and 'int' [-Wsign-compare]
   54 |     if (weights.size() != ind) correct = false;
      |         ~~~~~~~~~~~~~~~^~~~~~
ESMF_MeshOpUTest.F90:456:0:

  456 |   end function make_mesh_sph
      | 
Warning: control reaches end of non-void function [-Wreturn-type]
ESMF_MeshUTest.F90:658:13:

  658 |          if (nodeCoords(2*i-1) .ne. ownedNodeCoords(2*j-1)) correct=.false.
      |             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:659:13:

  659 |          if (nodeCoords(2*i) .ne. ownedNodeCoords(2*j)) correct=.false.
      |             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:664:9:

  664 |      if (elemCoords(2*i-1) .ne. ownedElemCoords(2*i-1)) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:665:9:

  665 |      if (elemCoords(2*i) .ne. ownedElemCoords(2*i)) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:1169:9:

 1169 |      if (fieldAreaPtr(i) .ne. elemAreas(j)) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:1884:20:

 1884 |       if (.not. ALL(ownedNodeCoords .eq. &
      |                    1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:1899:21:

 1899 |        if (.not. ALL(ownedNodeCoords .eq. &
      |                     1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:1908:22:

 1908 |         if (.not. ALL(ownedNodeCoords .eq. &
      |                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:1915:22:

 1915 |         if (.not. ALL(ownedNodeCoords .eq. &
      |                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:1922:22:

 1922 |         if (.not. ALL(ownedNodeCoords .eq. &
      |                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2538:9:

 2538 |      if (areaPtr(1) .ne. 7.0) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2539:9:

 2539 |      if (areaPtr(2) .ne. 8.0) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2540:9:

 2540 |      if (areaPtr(3) .ne. 9.0) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2541:9:

 2541 |      if (areaPtr(4) .ne. 10.0) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2544:12:

 2544 |         if (areaPtr(1) .ne. 7.0) correct=.false.
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2546:12:

 2546 |         if (areaPtr(1) .ne. 8.0) correct=.false.
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2548:12:

 2548 |         if (areaPtr(1) .ne. 9.0) correct=.false.
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_MeshUTest.F90:2550:12:

 2550 |         if (areaPtr(1) .ne. 10.0) correct=.false.
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_LocStreamUTest.F90:731:18:

  731 |      keyDataI4(i)=REAL(i,ESMF_KIND_I4)
      |                  1
Warning: Possible change of value in conversion from REAL(4) to INTEGER(4) at (1) [-Wconversion]
ESMF_LocStreamUTest.F90:745:9:

  745 |      if (tmpI4(i) .ne. REAL(i,ESMF_KIND_I4)) correct=.false.
      |         1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_LocStreamUTest.F90:806:9:

  806 |      if (tmpR4(i) .ne. REAL(i,ESMF_KIND_R4)) correct=.false.
      |         1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_LocStreamUTest.F90:868:9:

  868 |      if (tmpR8(i) .ne. REAL(i,ESMF_KIND_R8)) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_LocStreamUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_XGridUTest.F90:3570:12:

 3570 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_XGridUTest.F90:2842:9:

 2842 |      if (dstFracPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_XGridUTest.F90:2848:9:

 2848 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_XGridUTest.F90:4105:0:

 4105 |   end function make_mesh_sph
      | 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_XGridUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldRegridUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldRegridCsrvUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridRegridUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridRegrid2UTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridRegridCsrvUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridRegridCsrv2UTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridRegridParUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridGridRegridUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldGridGridRegridCsrvUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldTripoleRegridUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_FieldSMMFromFileUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_FieldCreateGetUTest.F90:7283:23:

 7283 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:6842:18:

 6842 |                if(farray1(ii,ij) .ne. n ) localrc = ESMF_FAILURE
      |                  1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:6623:19:

 6623 |                 if(farray1(ii,ij,ik) .ne. n ) localrc = ESMF_FAILURE
      |                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:6371:19:

 6371 |                 if(farray1(ii,ij,ik) .ne. n ) localrc = ESMF_FAILURE
      |                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:6132:23:

 6132 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:5861:19:

 5861 |                 if(farray1(ii,ij,ik) .ne. n ) localrc = ESMF_FAILURE
      |                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:5631:23:

 5631 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:5389:23:

 5389 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:5106:23:

 5106 |                     if(farray1(ii,ij,ik,il,im,io,ip) /= n) then
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:5149:23:

 5149 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:4925:23:

 4925 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:4691:23:

 4691 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldCreateGetUTest.F90:4467:23:

 4467 |                     if(farray1(ii,ij,ik,il,im,io,ip) .ne. n ) localrc = ESMF_FAILURE
      |                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:17676:9:

17676 |      if (srcFracPtr(i1) .ne. 0.0) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:17689:9:

17689 |      if (dstFracPtr(i1) .ne. 0.0) correct=.false.
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:16726:9:

16726 |      if (dstFracPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:16732:9:

16732 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:15054:12:

15054 |         if (xfptr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:13450:9:

13450 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:12344:9:

12344 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:11330:9:

11330 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:10336:9:

10336 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:9341:9:

 9341 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:8198:13:

 8198 |          if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:7440:9:

 7440 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:5625:12:

 5625 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:4773:9:

 4773 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:3665:12:

 3665 |         if (xfptr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:2805:12:

 2805 |         if (xfptr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:2031:12:

 2031 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrvUTest.F90:1278:12:

 1278 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:12187:12:

12187 |         if (xfptr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:11432:9:

11432 |      if (dstFracptr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:11439:9:

11439 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:10434:9:

10434 |      if (dstFracptr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:10441:9:

10441 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:9435:9:

 9435 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:8003:9:

 8003 |      if (dstFracPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:8009:9:

 8009 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:5750:12:

 5750 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:5068:12:

 5068 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:4399:12:

 4399 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:3535:12:

 3535 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:2799:9:

 2799 |      if (dstFracPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:2805:9:

 2805 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCsrv2ndUTest.F90:2229:9:

 2229 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:39939:12:

39939 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:39457:9:

39457 |      if (xdstFarrayPtr(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:38265:12:

38265 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:37847:12:

37847 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:37443:10:

37443 |       if (xfarrayPtr1D(i1) .ne. 0.0) then
      |          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:35274:12:

35274 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:34802:12:

34802 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:33597:32:

33597 |         farrayPtrXC_R4(i1,i2) = REAL(i1-1)*src_dx
      |                                1
Warning: Possible change of value in conversion from REAL(8) to REAL(4) at (1) [-Wconversion]
ESMF_FieldRegridUTest.F90:33599:32:

33599 |         farrayPtrYC_R4(i1,i2) = -90. + (REAL(i2-1)*src_dy + 0.5*src_dy)
      |                                1
Warning: Possible change of value in conversion from REAL(8) to REAL(4) at (1) [-Wconversion]
ESMF_FieldRegridUTest.F90:33747:12:

33747 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:32518:12:

32518 |         if (xdstPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:28955:12:

28955 |         if (xdstPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:26835:12:

26835 |         if (xfarrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:26327:12:

26327 |         if (xfarrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:25820:12:

25820 |         if (xfarrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:25320:12:

25320 |         if (xfarrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:24604:12:

24604 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:23881:9:

23881 |      if (xfarrayPtr1D(i1) .ne. 0.0) then
      |         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:21948:12:

21948 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:20168:13:

20168 |   dst_minx = 0.5
      |             1
Warning: Change of value in conversion from 'REAL(4)' to 'INTEGER(4)' at (1) [-Wconversion]
ESMF_FieldRegridUTest.F90:20169:13:

20169 |   dst_miny = 0.5
      |             1
Warning: Change of value in conversion from 'REAL(4)' to 'INTEGER(4)' at (1) [-Wconversion]
ESMF_FieldRegridUTest.F90:20171:13:

20171 |   dst_maxx = 20.5
      |             1
Warning: Change of value in conversion from 'REAL(4)' to 'INTEGER(4)' at (1) [-Wconversion]
ESMF_FieldRegridUTest.F90:20172:13:

20172 |   dst_maxy = 9.5
      |             1
Warning: Change of value in conversion from 'REAL(4)' to 'INTEGER(4)' at (1) [-Wconversion]
ESMF_FieldRegridUTest.F90:18071:12:

18071 |         if (xdstPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:17677:12:

17677 |         if (xdstPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:17283:12:

17283 |         if (xdstPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:16385:12:

16385 |         if (xdstXtraPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:14883:12:

14883 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:5341:14:

 5341 |           if (farrayPtr(i1,i2) /= -1000) then
      |              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:4928:14:

 4928 |           if (farrayPtr(i1,i2) /= -1000) then
      |              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:4936:14:

 4936 |           if (farrayPtrPatch(i1,i2) /= -1000) then
      |              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:3146:12:

 3146 |         if (farrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:2674:12:

 2674 |         if (farrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:2200:12:

 2200 |         if (farrayPtr(i1,i2,i3) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridUTest.F90:1728:12:

 1728 |         if (farrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:4928:12:

 4928 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:4436:12:

 4436 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:3958:12:

 3958 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:3513:12:

 3513 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:3147:12:

 3147 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:2781:12:

 2781 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:2338:12:

 2338 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:1847:12:

 1847 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:1449:12:

 1449 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:1051:12:

 1051 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRegridCSUTest.F90:655:12:

  655 |         if (xfarrayPtr(i1,i2) .ne. 0.0) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldRedistArbUTest.F90:325:9:

  325 |      if (fptr1D(i) .ne. (localindices1(i,2)-1)*ydim+localIndices1(i,1)) then
      |         1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_FieldSMMFromFileUTest.F90:198:12:

  198 |         if (dst(i, j) /= 42.) then
      |            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_FieldBundleCrGetUTest.F90:349:20:

  349 |                 if( farray1(i, j) .ne. i + j * 2) localrc = ESMF_FAILURE
      |                    1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_FieldBundleCrGetUTest.F90:358:20:

  358 |                 if( farray2(i, j) .ne. i + j * 3) localrc = ESMF_FAILURE
      |                    1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_FieldBundleCrGetUTest.F90:379:24:

  379 |                     if( farray3(i, j) .ne. i + (j+3) * 4) localrc = ESMF_FAILURE
      |                        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_FieldBundleCrGetUTest.F90:401:24:

  401 |                     if( farray4(i, j) .ne. i + 2 + (j+3) * 5) localrc = ESMF_FAILURE
      |                        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
ESMF_FieldBundleCrGetUTest.F90:437:24:

  437 |                     if( farray5(i, j) .ne. i + 2 + (j*2-1) * 5) localrc = ESMF_FAILURE
      |                        1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_StateUTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_ComponentUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
ESMF_AttributeArrayUTest.F90:983:7:

  983 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeArrayUTest.F90:1012:40:

 1012 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeArrayUTest.F90:1076:12:

 1076 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeArrayUTest.F90:1105:45:

 1105 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeArrayUTest.F90:1117:6:

 1117 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeABundleUTest.F90:987:7:

  987 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeABundleUTest.F90:1016:40:

 1016 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeABundleUTest.F90:1080:12:

 1080 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeABundleUTest.F90:1109:45:

 1109 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeABundleUTest.F90:1121:6:

 1121 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeCplCompUTest.F90:989:7:

  989 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeCplCompUTest.F90:1018:40:

 1018 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeCplCompUTest.F90:1082:12:

 1082 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeCplCompUTest.F90:1111:45:

 1111 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeCplCompUTest.F90:1123:6:

 1123 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeDistGridUTest.F90:978:7:

  978 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeDistGridUTest.F90:1007:40:

 1007 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeDistGridUTest.F90:1071:12:

 1071 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeDistGridUTest.F90:1100:45:

 1100 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeDistGridUTest.F90:1112:6:

 1112 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFBundleUTest.F90:987:7:

  987 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFBundleUTest.F90:1016:40:

 1016 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFBundleUTest.F90:1080:12:

 1080 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFBundleUTest.F90:1109:45:

 1109 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFBundleUTest.F90:1121:6:

 1121 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFieldUTest.F90:984:7:

  984 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFieldUTest.F90:1013:40:

 1013 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFieldUTest.F90:1077:12:

 1077 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFieldUTest.F90:1106:45:

 1106 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeFieldUTest.F90:1118:6:

 1118 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridCompUTest.F90:989:7:

  989 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridCompUTest.F90:1018:40:

 1018 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridCompUTest.F90:1082:12:

 1082 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridCompUTest.F90:1111:45:

 1111 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridCompUTest.F90:1123:6:

 1123 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridUTest.F90:980:7:

  980 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridUTest.F90:1009:40:

 1009 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridUTest.F90:1073:12:

 1073 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridUTest.F90:1102:45:

 1102 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeGridUTest.F90:1114:6:

 1114 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeLocStreamUTest.F90:976:7:

  976 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeLocStreamUTest.F90:1005:40:

 1005 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeLocStreamUTest.F90:1069:12:

 1069 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeLocStreamUTest.F90:1098:45:

 1098 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeLocStreamUTest.F90:1110:6:

 1110 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeSciCompUTest.F90:989:7:

  989 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeSciCompUTest.F90:1018:40:

 1018 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeSciCompUTest.F90:1082:12:

 1082 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeSciCompUTest.F90:1111:45:

 1111 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeSciCompUTest.F90:1123:6:

 1123 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeStateUTest.F90:994:7:

  994 |  .and.(inR8==outR8) &
      |       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeStateUTest.F90:1023:40:

 1023 |  call ESMF_Test((rc==ESMF_SUCCESS).and.(defaultR8==dfltoutR8), &
      |                                        1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeStateUTest.F90:1087:12:

 1087 |  .and. all (inR8l==outR8l) &
      |            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeStateUTest.F90:1116:45:

 1116 |  call ESMF_Test((rc==ESMF_SUCCESS).and. all (defaultR8l==dfltoutR8l), &
      |                                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
ESMF_AttributeStateUTest.F90:1128:6:

 1128 |  all (dfltOutR8l==defaultR8lWrong(1:size(DfltOutR8l))), &
      |      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServCompSvrClientUTest.C:18:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServProcCtrlUTest.C:13:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServProcCtrlClientUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServRegistrarClientUTest.C:16:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServServerSocketUTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServClientSocketUTest.C:17:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
In file included from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/mpicxx.h:277,
                 from /apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/mpi.h:2693,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC_VM.h:38,
                 from /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/gfortran_9.2.0_openmpi_g/src/include/ESMC.h:36,
                 from ESMC_WebServForkClientUTest.C:19:
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h: In member function 'virtual void MPI::Op::Init(void (*)(const void*, void*, int, const MPI::Datatype&), bool)':
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:121:46: warning: cast between incompatible function types from 'void (*)(void*, void*, int*, ompi_datatype_t**, void (*)(void*, void*, int*, ompi_datatype_t**))' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  121 |     (void)MPI_Op_create((MPI_User_function*) ompi_mpi_cxx_op_intercept,
      |                                              ^~~~~~~~~~~~~~~~~~~~~~~~~
/apps/spack/linux-centos7-x86_64/gcc-9.2.0/openmpi-3.1.4-iacsi5v5fw547qcbmmkof4dj5z366pxc/include/openmpi/ompi/mpi/cxx/op_inln.h:123:59: warning: cast between incompatible function types from 'void (*)(const void*, void*, int, const MPI::Datatype&)' to 'void (*)(void*, void*, int*, ompi_datatype_t**)' [-Wcast-function-type]
  123 |     ompi_op_set_cxx_callback(mpi_op, (MPI_User_function*) func);
      |                                                           ^~~~
slurmstepd: error: *** JOB 15923851 ON h17c38 CANCELLED AT 2021-02-04T03:05:24 DUE TO TIME LIMIT ***
