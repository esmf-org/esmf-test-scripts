
Currently Loaded Modules:
  1) python/3.7.5   3) openmpi/4.0.4   5) hdf5/1.10.6      7) netcdf/4.7.4
  2) gcc/8.3.0      4) szip/2.1.1      6) pnetcdf/1.12.1

 

/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C: In function ‘char* ESMC_F90toCstring(const char*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C:331:52: warning: comparison of unsigned expression < 0 is always false [-Wtype-limits]
     if ((src == NULL) || (src[0] == '\0') || (slen < 0)) {
                                               ~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C: In function ‘void esmf_f90tocstring_(const char*, char*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C:478:52: warning: comparison of unsigned expression < 0 is always false [-Wtype-limits]
     if ((src == NULL) || (src[0] == '\0') || (slen < 0) ||
                                               ~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C: In function ‘void esmf_ctof90string_(const char*, char*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C:536:52: warning: comparison of unsigned expression < 0 is always false [-Wtype-limits]
     if ((src == NULL) || (src[0] == '\0') || (slen < 0) ||
                                               ~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_LogErr.F90:101:59:

     ESMF_LOGMSG_NONE(0) = (/ (ESMF_LogMsg_Flag(0), i_ac=1,0) /)
                                                           1
Warning: DO loop at (1) will be executed zero times [-Wzerotrip]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_FortranWordsize.F90:404:5:

  if (var==var) continue ! dummy check to quiet down compiler warnings
     1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_FortranWordsize.F90:359:5:

  if (var==var) continue ! dummy check to quiet down compiler warnings
     1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_FortranWordsize.F90:92:4:

     udt_ptr1 => udt
    1
Warning: Pointer at (1) in pointer assignment might outlive the pointer target [-Wtarget-lifetime]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_FortranWordsize.F90:93:4:

     udt_ptr2 => udt
    1
Warning: Pointer at (1) in pointer assignment might outlive the pointer target [-Wtarget-lifetime]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_TypeKindGet.F90:252:5:

  if (var==var) continue ! dummy check to quiet down compiler warnings
     1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_TypeKindGet.F90:226:5:

  if (var==var) continue ! dummy check to quiet down compiler warnings
     1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:1158:11:

     c2p1 = 1.d0 + stretch_factor*stretch_factor
           1
Warning: Possible change of value in conversion from REAL(8) to REAL(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:1159:11:

     c2m1 = 1.d0 - stretch_factor*stretch_factor
           1
Warning: Possible change of value in conversion from REAL(8) to REAL(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:716:20:

               if ( (i==1+(npx-1)/2.0) ) then
                    1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:749:27:

                      if ( (i==1+(npx-1)/2.0) .and. (i==j) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:753:27:

                      if ( (j==1+(npy-1)/2.0) .and. (i < 1+(npx-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:756:27:

                      if ( (j==1+(npy-1)/2.0) .and. (i > 1+(npx-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:772:26:

                     if ( (j==1+(npy-1)/2.0) ) then
                          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:796:27:

                      if ( (i==1+(npx-1)/2.0) .and. (i==j) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:800:27:

                      if ( (i==1+(npx-1)/2.0) .and. (j > 1+(npy-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:803:27:

                      if ( (i==1+(npx-1)/2.0) .and. (j < 1+(npy-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:576:20:

               if ( (i==1+(npx-1)/2.0) ) then
                    1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:607:27:

                      if ( (i==1+(npx-1)/2.0) .and. (i==j) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:611:27:

                      if ( (j==1+(npy-1)/2.0) .and. (i < 1+(npx-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:614:27:

                      if ( (j==1+(npy-1)/2.0) .and. (i > 1+(npx-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:630:26:

                     if ( (j==1+(npy-1)/2.0) ) then
                          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:654:27:

                      if ( (i==1+(npx-1)/2.0) .and. (i==j) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:658:27:

                      if ( (i==1+(npx-1)/2.0) .and. (j > 1+(npy-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/src/ESMF_UtilCubedSphere.F90:661:27:

                      if ( (i==1+(npx-1)/2.0) .and. (j < 1+(npy-1)/2.0) ) then
                           1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/interface/ESMCI_Util_F.C: In function ‘void c_esmc_getcwd_(char*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Util/interface/ESMCI_Util_F.C:370:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
   if (len < pathname_l)
       ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LogErr/interface/ESMCI_LogErr_F.C: In function ‘void c_esmc_loggeterrormsg_(int*, char*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LogErr/interface/ESMCI_LogErr_F.C:113:13: warning: comparison of integer expressions of different signedness: ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
   if (msg_l > msg_local_len) {
       ~~~~~~^~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/../include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/../include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/ESMCI_VM.C:39:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/../include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/ESMCI_VMKernel.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/ESMCI_VMKernel.C: In member function ‘int ESMCI::VMK::commtest(ESMCI::VMK::commhandle**, int*, ESMCI::VMK::status*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/ESMCI_VMKernel.C:2750:40: warning: ‘void* memset(void*, int, size_t)’ clearing an object of non-trivial type ‘struct ESMCI::VMK::status’; use assignment or value-initialization instead [-Wclass-memaccess]
     memset (status, 0, sizeof (*status));     // quiet valgrind
                                        ^
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/ESMCI_VMKernel.C:13:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/src/../include/ESMCI_VMKernel.h:154:10: note: ‘struct ESMCI::VMK::status’ declared here
   struct status{
          ^~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/../include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/../include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/ESMCI_VM_F.C:20:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/../include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/../include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/ESMC_VM.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/VM/interface/ESMF_VM.F90:8538:16:

       do while (t_2 == t_1)
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc.h:37,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:36:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void esmftrc_default_open_packet(esmftrc_default_ctx*, const char*, uint32_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:223:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) 0xc1fc1fc1UL);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:223:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) 0xc1fc1fc1UL);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:223:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) 0xc1fc1fc1UL);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:223:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) 0xc1fc1fc1UL);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:260:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:260:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:260:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:260:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:270:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.packet_size);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:270:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.packet_size);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:270:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.packet_size);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:270:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.packet_size);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:284:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) spc_pet);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:284:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) spc_pet);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:284:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) spc_pet);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:284:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) spc_pet);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void esmftrc_default_close_packet(esmftrc_default_ctx*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:309:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:309:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:309:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:309:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:314:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.content_size);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:314:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.content_size);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:314:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.content_size);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:314:2: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
  esmftrc_bt_bitfield_write_le(&(&ctx->parent)->buf[_BITS_TO_BYTES((&ctx->parent)->at)], uint8_t, 0, 32, uint32_t, (uint32_t) (uint32_t) ctx->parent.content_size);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_stream_event_header_default(void*, uint32_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:338:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) (uint8_t) event_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:338:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) (uint8_t) event_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:338:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) (uint8_t) event_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:338:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) (uint8_t) event_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:338:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) (uint8_t) event_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:343:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:343:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:343:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:343:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) (uint64_t) ts);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_prologue_enter(void*, uint16_t, uint16_t, uint8_t, uint8_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:415:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:415:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:415:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:415:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:415:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:420:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:420:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:420:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:420:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:420:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:425:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:425:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:425:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:425:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:425:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:430:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:430:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:430:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:430:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:430:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_epilogue_exit(void*, uint16_t, uint16_t, uint8_t, uint8_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:529:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:529:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:529:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:529:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:529:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:534:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:534:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:534:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:534:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:534:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:539:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:539:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:539:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:539:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:539:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:544:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:544:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:544:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:544:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:544:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_phase_enter(void*, uint16_t, uint16_t, uint8_t, uint8_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:643:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:643:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:643:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:643:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:643:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:648:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:648:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:648:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:648:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:648:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:653:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:653:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:653:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:653:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:653:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:658:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:658:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:658:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:658:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:658:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_phase_exit(void*, uint16_t, uint16_t, uint8_t, uint8_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:757:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:757:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:757:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:757:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:757:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:762:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:762:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:762:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:762:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:762:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:767:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:767:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:767:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:767:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:767:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:772:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:772:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:772:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:772:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:772:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_define_region(void*, uint16_t, uint8_t, uint16_t, uint16_t, uint8_t, uint8_t, const char*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1043:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1043:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1043:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1043:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1043:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1048:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_type);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1048:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_type);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1048:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_type);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1048:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_type);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1048:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_type);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1053:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1053:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1053:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1053:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1053:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1058:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1058:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1058:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/ESMCI_Trace.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/ESMCI_TraceWrap.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1058:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1058:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1063:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1063:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1063:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1063:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1063:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_method);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1068:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1068:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1068:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1068:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1068:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_phase);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/ESMCI_Trace.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/ESMCI_TraceMetadata.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_regionid_enter(void*, uint16_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1159:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1159:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1159:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1159:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1159:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_regionid_exit(void*, uint16_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1240:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1240:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1240:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1240:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1240:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_regionid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_comp(void*, uint16_t, uint16_t, const char*, const char*, const char*, const char*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1345:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1345:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1345:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1345:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1345:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_vmid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1350:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1350:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1350:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1350:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1350:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_baseid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_mem(void*, uint32_t, uint32_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1457:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_virtMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1457:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_virtMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1457:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_virtMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1457:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_virtMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1462:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_physMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1462:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_physMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1462:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_physMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1462:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_physMem);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_clk(void*, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1569:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_year);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1569:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_year);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1569:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_year);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1569:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_year);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1569:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_year);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1574:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_month);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1574:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_month);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1574:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_month);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1574:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_month);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1574:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_month);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1579:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_day);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1579:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_day);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1579:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_day);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1579:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_day);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1579:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_day);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1584:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_hour);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1584:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_hour);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1584:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_hour);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1584:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_hour);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1584:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_hour);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1589:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_minute);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1589:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_minute);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1589:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_minute);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1589:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_minute);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1589:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_minute);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1594:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_second);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1594:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_second);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1594:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_second);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1594:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_second);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1594:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 8, uint8_t, (uint8_t) ep_second);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_mpiwait(void*, uint32_t, uint64_t)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1685:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1685:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/ESMCI_TraceClock.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1685:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1685:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1690:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_time);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1690:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_time);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1690:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_time);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1690:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_time);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/ESMCI_Trace.C:40:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c: In function ‘void _serialize_event_default_region_profile(void*, uint16_t, uint16_t, uint64_t, uint64_t, uint32_t, uint64_t, uint64_t, double, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1812:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1812:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1812:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1812:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1812:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_id);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:90:29: warning: left shift of negative value [-Wshift-negative-value]
   __v &= ~((~(_vtype) 0) << __length);  \
                             ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1817:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_parentid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1817:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_parentid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1817:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_parentid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1817:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_parentid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1817:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 16, uint16_t, (uint16_t) ep_parentid);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1822:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_total);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1822:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_total);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1822:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_total);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1822:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_total);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1827:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_self);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1827:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_self);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1827:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_self);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1827:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_self);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1832:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1832:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1832:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1832:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 32, uint32_t, (uint32_t) ep_count);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1837:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_max);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1837:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_max);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1837:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_max);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1837:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_max);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1842:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_min);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1842:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_min);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1842:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_min);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1842:3: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
   esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) ep_min);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1852:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1852:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1852:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1852:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:95:40: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << (__start % ts));  \
                                        ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1864:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:97:36: warning: left shift of negative value [-Wshift-negative-value]
    mask |= (~(type) 0) << (end % ts);  \
                                    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1864:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:106:27: warning: left shift of negative value [-Wshift-negative-value]
   mask = ~((~(type) 0) << cshift);   \
                           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1864:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:121:34: warning: left shift of negative value [-Wshift-negative-value]
   mask = (~(type) 0) << (end % ts);   \
                                  ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/../include/esmftrc-bitfield.h:197:2: note: in expansion of macro ‘_esmftrc_bt_bitfield_write_le’
  _esmftrc_bt_bitfield_write_le(ptr, type, _start, _length, _vtype, _v)
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/src/esmftrc.c:1864:4: note: in expansion of macro ‘esmftrc_bt_bitfield_write_le’
    esmftrc_bt_bitfield_write_le(&ctx->buf[_BITS_TO_BYTES(ctx->at)], uint8_t, 0, 64, uint64_t, (uint64_t) d2u.u);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/interface/../include/ESMCI_Trace.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/interface/ESMCI_Trace_F.C:7:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Base/src/../include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Base/src/ESMCI_Base.C:33:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Base/interface/../include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Base/interface/ESMCI_Base_F.C:20:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::get(int, int*, char*, ESMCI::Clock**, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::TimeInterval*, int*, int*, ESMCI::Time*, ESMCI::Time*, ESMCI::Time*, bool*, bool*, bool*, bool*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:491:30: warning: comparison of integer expressions of different signedness: ‘size_t’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
       if (strlen(this->name) < nameLen) {
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::get(int, int*, char*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMC_R8*, ESMCI::Time*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::TimeInterval*, ESMCI::Calendar**, ESMC_CalKind_Flag*, int*, ESMC_I8*, int*, ESMC_Direction*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:433:30: warning: comparison of integer expressions of different signedness: ‘size_t’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
       if (strlen(this->name) < nameLen) {
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::print(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1671:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
       for(i=0; i<strlen(options) && i<ESMF_MAXSTR-1; i++) {
                ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::print(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1759:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
       for(i=0; i<strlen(options) && i<ESMF_MAXSTR-1; i++) {
                ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Time.C: In member function ‘int ESMCI::Time::getString(char*, const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Time.C:1435:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%012.9f", timeString, (s + fractionalSeconds));
                 ^~~~~~~~~~               ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Time.C:1437:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%02d", timeString, s);
                 ^~~~~~~~~~            ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Time.C:1444:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%02d:%lld/%lld", timeString, s, sN, sD);
                 ^~~~~~~~~~                      ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Time.C:1446:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%02d", timeString, s);
                 ^~~~~~~~~~            ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_TimeInterval.C: In member function ‘int ESMCI::TimeInterval::getString(char*, const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_TimeInterval.C:3142:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%.9fS", timeString, (s + fractionalSeconds));
                 ^~~~~~~~~~             ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_TimeInterval.C:3144:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%dS", timeString, s);
                 ^~~~~~~~~~           ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_TimeInterval.C:3151:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%d:%lld/%lldS", timeString, s, sN, sD);
                 ^~~~~~~~~~                     ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_TimeInterval.C:3153:17: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
         sprintf(timeString, "%s%dS", timeString, s);
                 ^~~~~~~~~~           ~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::get(int, int*, char*, ESMCI::Clock**, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::TimeInterval*, int*, int*, ESMCI::Time*, ESMCI::Time*, ESMCI::Time*, bool*, bool*, bool*, bool*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:500:25: warning: ‘%s’ directive writing up to 255 bytes into a region of size 241 [-Wformat-overflow=]
         sprintf(logMsg, "For alarm name %s, "
                         ^~~~~~~~~~~~~~~~~~~~~
                 "length >= given character array; truncated.", this->name);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:500:16: note: ‘sprintf’ output between 61 and 316 bytes into a destination of size 256
         sprintf(logMsg, "For alarm name %s, "
         ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 "length >= given character array; truncated.", this->name);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::ringerOn()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:707:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 210 [-Wformat-overflow=]
       sprintf(logMsg, "Attempted to turn on ringer of disabled alarm %s.",
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:707:14: note: ‘sprintf’ output between 48 and 303 bytes into a destination of size 256
       sprintf(logMsg, "Attempted to turn on ringer of disabled alarm %s.",
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               this->name);
               ~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::willRingNext(ESMCI::TimeInterval*, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:873:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 250 [-Wformat-overflow=]
       sprintf(logMsg, "alarm %s is not associated with any clock.", name);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:873:14: note: ‘sprintf’ output between 41 and 296 bytes into a destination of size 256
       sprintf(logMsg, "alarm %s is not associated with any clock.", name);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::notSticky(ESMCI::TimeInterval*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1025:15: warning: ‘%s’ directive writing up to 255 bytes into a region of size 250 [-Wformat-overflow=]
               "Alarm %s: can only specify one type of ring duration, not both.",
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1024:14: note: ‘sprintf’ output between 62 and 317 bytes into a destination of size 256
       sprintf(logMsg,
       ~~~~~~~^~~~~~~~
               "Alarm %s: can only specify one type of ring duration, not both.",
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               name);
               ~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::get(int, int*, char*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMC_R8*, ESMCI::Time*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::TimeInterval*, ESMCI::Calendar**, ESMC_CalKind_Flag*, int*, ESMC_I8*, int*, ESMC_Direction*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:442:25: warning: ‘%s’ directive writing up to 255 bytes into a region of size 245 [-Wformat-overflow=]
         sprintf(logMsg, "clock name %s, "
                         ^~~~~~~~~~~~~~~~~
                 "length >= given character array; truncated.", this->name);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:442:16: note: ‘sprintf’ output between 57 and 312 bytes into a destination of size 256
         sprintf(logMsg, "clock name %s, "
         ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
                 "length >= given character array; truncated.", this->name);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::advance(ESMCI::TimeInterval*, char*, char*, int, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:668:29: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
             sprintf(logMsg, "For clock %s, "
                             ^~~~~~~~~~~~~~~~
                     "trying to report %dth ringing alarm, but given "
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     "ringingAlarmList array can only hold %d.",
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:668:20: note: ‘sprintf’ output between 98 and 373 bytes into a destination of size 256
             sprintf(logMsg, "For clock %s, "
             ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
                     "trying to report %dth ringing alarm, but given "
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     "ringingAlarmList array can only hold %d.",
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     this->name, j+1, sizeofRingingAlarmList);
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::checkRingTime(int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1296:25: warning: ‘%s’ directive writing up to 255 bytes into a region of size 243 [-Wformat-overflow=]
         sprintf(logMsg, "Sticky alarm %s cannot be reversed since it has "
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "not been traversed forward and turned off via "
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "a user call to ESMF_AlarmRingerOff(), thereby "
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "enabling Time Manager to know the time to turn it "
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "back on in reverse.", name);
                         ~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1296:16: note: ‘sprintf’ output between 208 and 463 bytes into a destination of size 256
         sprintf(logMsg, "Sticky alarm %s cannot be reversed since it has "
         ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "not been traversed forward and turned off via "
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "a user call to ESMF_AlarmRingerOff(), thereby "
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "enabling Time Manager to know the time to turn it "
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                         "back on in reverse.", name);
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1116:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 250 [-Wformat-overflow=]
       sprintf(logMsg, "alarm %s is not associated with any clock.", name);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1116:14: note: ‘sprintf’ output between 41 and 296 bytes into a destination of size 256
       sprintf(logMsg, "alarm %s is not associated with any clock.", name);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::validate(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1617:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 250 [-Wformat-overflow=]
       sprintf(logMsg, "Alarm %s: invalid state: disabled and ringing.", name);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1617:14: note: ‘sprintf’ output between 45 and 300 bytes into a destination of size 256
       sprintf(logMsg, "Alarm %s: invalid state: disabled and ringing.", name);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1609:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 250 [-Wformat-overflow=]
       sprintf(logMsg, "Alarm %s: invalid ringTime.", name);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1609:14: note: ‘sprintf’ output between 26 and 281 bytes into a destination of size 256
       sprintf(logMsg, "Alarm %s: invalid ringTime.", name);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::getAlarmList(ESMC_AlarmList_Flag, char*, char*, int, int*, ESMCI::TimeInterval*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1164:29: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
             sprintf(logMsg, "For clock %s, "
                             ^~~~~~~~~~~~~~~~
                     "trying to return %dth requested alarm, but given "
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     "alarmList array can only hold %d.",
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1164:20: note: ‘sprintf’ output between 93 and 368 bytes into a destination of size 256
             sprintf(logMsg, "For clock %s, "
             ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
                     "trying to return %dth requested alarm, but given "
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     "alarmList array can only hold %d.",
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     this->name, j+1, sizeofAlarmList);
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1139:27: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
           sprintf(logMsg, "For clock %s, unknown alarm list flag %d.",
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1139:27: note: using the range [-2147483648, 2147483647] for directive argument
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1139:18: note: ‘sprintf’ output between 39 and 304 bytes into a destination of size 256
           sprintf(logMsg, "For clock %s, unknown alarm list flag %d.",
           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   this->name, alarmlistflag);
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::addAlarm(ESMCI::Alarm*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2032:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
       sprintf(logMsg, "For clock %s, alarm list is full (%d alarms), "
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               "re-allocating to hold %d alarms.",
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2032:14: note: ‘sprintf’ output between 75 and 350 bytes into a destination of size 256
       sprintf(logMsg, "For clock %s, alarm list is full (%d alarms), "
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               "re-allocating to hold %d alarms.",
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 this->name, alarmListCapacity,
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 alarmListCapacity+ESMF_ALARM_BLOCK_SIZE);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2024:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
       sprintf(logMsg, "For clock %s, given alarm is NULL.", this->name);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2024:14: note: ‘sprintf’ output between 33 and 288 bytes into a destination of size 256
       sprintf(logMsg, "For clock %s, given alarm is NULL.", this->name);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::removeAlarm(ESMCI::Alarm*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2126:21: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
     sprintf(logMsg, "For clock %s, given alarm is not in clock's alarmList.",
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2126:12: note: ‘sprintf’ output between 53 and 308 bytes into a destination of size 256
     sprintf(logMsg, "For clock %s, given alarm is not in clock's alarmList.",
     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             this->name);
             ~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2104:23: warning: ‘%s’ directive writing up to 255 bytes into a region of size 246 [-Wformat-overflow=]
       sprintf(logMsg, "For clock %s, given alarm is NULL.", this->name);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2104:14: note: ‘sprintf’ output between 33 and 288 bytes into a destination of size 256
       sprintf(logMsg, "For clock %s, given alarm is NULL.", this->name);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::enable()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:586:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::disable()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:624:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::isEnabled(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:660:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::ringerOff()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:747:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::isRinging(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:817:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::wasPrevRinging(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:934:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::setToSticky()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:971:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::isSticky(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1068:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::operator==(const ESMCI::Alarm&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1454:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::operator!=(const ESMCI::Alarm&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1488:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::writeRestart() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1560:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::print(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1654:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::get(int, int*, char*, ESMCI::Clock**, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::TimeInterval*, int*, int*, ESMCI::Time*, ESMCI::Time*, ESMCI::Time*, bool*, bool*, bool*, bool*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:483:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::ringerOn()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:699:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::willRingNext(ESMCI::TimeInterval*, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:861:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘bool ESMCI::Clock::isStopTime(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:707:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::stopTimeEnable(ESMCI::Time*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:752:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::notSticky(ESMCI::TimeInterval*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1012:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::stopTimeDisable()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:793:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘bool ESMCI::Clock::isStopTimeEnabled(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:829:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘bool ESMCI::Clock::isDone(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:865:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘bool ESMCI::Clock::isReverse(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:931:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::getNextTime(ESMCI::Time*, ESMCI::TimeInterval*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:968:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘bool ESMCI::Clock::operator==(const ESMCI::Clock&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1427:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘bool ESMCI::Clock::operator!=(const ESMCI::Clock&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1461:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::writeRestart() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1532:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘bool ESMCI::Alarm::checkRingTime(int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1104:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::print(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1742:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::validate(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:1600:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::get(int, int*, char*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMC_R8*, ESMCI::Time*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::TimeInterval*, ESMCI::Calendar**, ESMC_CalKind_Flag*, int*, ESMC_I8*, int*, ESMC_Direction*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:425:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C: In member function ‘int ESMCI::Alarm::set(int, const char*, ESMCI::Clock**, ESMCI::Time*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::TimeInterval*, int*, ESMCI::Time*, bool*, bool*, bool*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Alarm.C:344:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::advance(ESMCI::TimeInterval*, char*, char*, int, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:570:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::getAlarm(int, char*, ESMCI::Alarm**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1012:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::getAlarmList(ESMC_AlarmList_Flag, char*, char*, int, int*, ESMCI::TimeInterval*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1083:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::validate(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1570:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::syncToRealTime()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:1318:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::set(int, const char*, ESMCI::TimeInterval*, ESMCI::Time*, ESMCI::Time*, ESMCI::TimeInterval*, int*, ESMCI::Time*, ESMCI::Time*, ESMC_I8*, ESMC_Direction*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:298:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::addAlarm(ESMCI::Alarm*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2016:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C: In member function ‘int ESMCI::Clock::removeAlarm(ESMCI::Alarm*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Clock.C:2096:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::get(int, int*, char*, ESMC_CalKind_Flag*, int*, int, int*, ESMC_I4*, ESMC_I4*, ESMC_I4*, ESMC_I4*, ESMC_I4*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:904:25: warning: ‘%s’ directive writing up to 255 bytes into a region of size 238 [-Wformat-overflow=]
         sprintf(logMsg, "For calendar name %s, "
                         ^~~~~~~~~~~~~~~~~~~~~~~~
                 "length >= given character array; truncated.", this->name);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:904:16: note: ‘sprintf’ output between 64 and 319 bytes into a destination of size 256
         sprintf(logMsg, "For calendar name %s, "
         ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 "length >= given character array; truncated.", this->name);
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::convertToDate(ESMCI::BaseTime*, ESMC_I4*, ESMC_I8*, int*, int*, ESMC_I4*, ESMC_I8*, ESMC_R8*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:1382:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘bool ESMCI::Calendar::isLeapYear(ESMC_I8, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2503:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::convertToTime(ESMC_I8, int, int, ESMC_I8, ESMC_R8, ESMCI::BaseTime*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:1004:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘ESMCI::Time ESMCI::Calendar::increment(const ESMCI::Time*, const ESMCI::TimeInterval&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2013:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER || time == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘ESMCI::Time ESMCI::Calendar::decrement(const ESMCI::Time*, const ESMCI::TimeInterval&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2260:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER || time == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘bool ESMCI::Calendar::operator==(const ESMCI::Calendar&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2552:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘bool ESMCI::Calendar::operator==(const ESMC_CalKind_Flag&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2602:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘bool ESMCI::Calendar::operator!=(const ESMCI::Calendar&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2635:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘bool ESMCI::Calendar::operator!=(const ESMC_CalKind_Flag&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2685:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::writeRestart() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2752:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::validate(const char*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2789:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::print(const char*, const ESMCI::Time*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:2884:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::set(int, const char*, ESMC_CalKind_Flag)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:594:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::set(int, const char*, int*, int, ESMC_I4*, ESMC_I4*, ESMC_I4*, ESMC_I4*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:729:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C: In member function ‘int ESMCI::Calendar::get(int, int*, char*, ESMC_CalKind_Flag*, int*, int, int*, ESMC_I4*, ESMC_I4*, ESMC_I4*, ESMC_I4*, ESMC_I4*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/src/ESMCI_Calendar.C:870:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Calendar.F90:663:0:

       ESMF_INIT_CHECK_DEEP(ESMF_CalendarGetInit,calendar,rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Time.F90:1641:0:

       end function ESMF_TimeDiff
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Time.F90:1606:0:

       end function ESMF_TimeDec
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Time.F90:1572:0:

       end function ESMF_TimeInc
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3367:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3341:0:

       end function ESMF_TimeIntervalDiff
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3304:0:

       end function ESMF_TimeIntervalSum
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3252:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3217:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3191:0:

       end function ESMF_TimeIntervalProdFT
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3155:0:

       end function ESMF_TimeIntervalProdTF
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3110:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3075:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3049:0:

       end function ESMF_TimeIntervalRemainder
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:3012:0:

       end function ESMF_TimeIntervalFQuot
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:2967:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:2932:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:2906:0:

       end function ESMF_TimeIntervalRQuot
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:1978:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_TimeInterval.F90:1001:0:

       ESMF_INIT_CHECK_SHALLOW_SHORT(ESMF_TimeIntervalGetInit,timeinterval,localrc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Alarm.F90:481:0:

       ESMF_INIT_CHECK_DEEP(ESMF_AlarmGetInit,alarm,rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Alarm.F90:431:0:

       end function ESMF_AlarmCreateNew
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Clock.F90:584:0:

       ESMF_INIT_CHECK_DEEP(ESMF_ClockGetInit,clock,rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/TimeMgr/interface/ESMF_Clock.F90:530:0:

       end function ESMF_ClockCreateNew
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DELayout/src/../include/ESMCI_DELayout.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DELayout/src/ESMCI_DELayout.C:35:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DELayout/interface/ESMCI_DELayout_F.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Config/src/ESMF_Config.F90:773:0:

     end function ESMF_ConfigCreateFromSection
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Route/src/../include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Route/src/ESMCI_RHandle.C:29:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Route/interface/../include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Route/interface/ESMCI_RHandle_F.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Route/interface/../include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Route/interface/ESMC_RHandle.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DistGrid/src/../include/ESMCI_DistGrid.h:36,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DistGrid/src/ESMCI_DistGrid.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DistGrid/interface/ESMCI_DistGrid_F.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DistGrid/interface/../include/ESMCI_DistGrid.h:36,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/DistGrid/interface/ESMC_DistGrid.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Array/src/../include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Array/src/ESMCI_Array.C:57:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Array/interface/ESMCI_Array_F.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Array/interface/../include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Array/interface/ESMC_Array.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/ArrayBundle/src/../include/ESMCI_ArrayBundle.h:34,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/ArrayBundle/src/ESMCI_ArrayBundle.C:29:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/ArrayBundle/interface/ESMCI_ArrayBundle_F.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/pio_support.F90:323:19:

           do m = 1,sdof
                   1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/pio_support.F90:241:19:

           do m = 1,sdof1d(n)
                   1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/pio_nf_utils.F90:63:0:

         allocate(cval(1))
 
Warning: ‘<anonymous>’ may be used uninitialized in this function [-Wmaybe-uninitialized]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/calcdecomp.F90:179:16:

     remainder = gdim-kount*ioprocs
                1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/calcdisplace_mod.F90:83:14:

        iosize=iosize*count(i)
              1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/calcdisplace_mod.F90:96:13:

        ub(i)=start(i)+count(i)-1
             1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/calcdisplace_mod.F90:106:10:

     myloc=start
          1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/calcdisplace_mod.F90:141:28:

                 myloc(idim)=start(idim)
                            1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/box_rearrange.F90:1410:22:

     !
                      1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/box_rearrange.F90:1508:16:

 
                1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/box_rearrange.F90:1022:13:

     ioindex = ioDesc%dest_ioindex(i)
             1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/box_rearrange.F90:1024:16:

     if (ioproc /= -1 ) then  ! ignore sender hole
                1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:1362:17:

           iosize=iosize*iodesc%count(i)
                 1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:1105:17:

           iosize=iosize*iodesc%count(i)
                 1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:1113:23:

              lenblocks=lenblocks*iodesc%count(i)
                       1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:1118:34:

        if(lenblocks==1) lenblocks=iodesc%count(1)
                                  1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:896:33:

        iodesc%write%n_words    = iodesc%write%n_elemtype*lenblocks
                                 1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:596:32:

        iodesc%read%n_words    = iodesc%read%n_elemtype*lenblocks
                                1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:603:33:

        iodesc%write%n_words    = iodesc%write%n_elemtype*lenblocks
                                 1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/PIO/piolib_mod.F90:322:16:

     vardesc%rec=frame
                1
Warning: Possible change of value in conversion from INTEGER(8) to INTEGER(4) at (1) [-Wconversion]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_SAX2ReadHandler.h:56,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_SAX2ReadHandler.C:25:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:41:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_IO_NetCDF.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_NetCDF.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_IO.h:34,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_IO_Handler.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_Handler.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_IO_Gridspec.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_Gridspec.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_PIO_Handler.h:36,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_PIO_Handler.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/../include/ESMCI_IO_Scrip.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_Scrip.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_YAML.C:36:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::read(const string&, const string&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:234:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::writeEndElement(const string&, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:719:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::write(const string&, const char*, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:927:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::replaceXMLEntities(std::__cxx11::string&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:1018:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::writeElementCore(const string&, const string&, int, int, __va_list_tag*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:439:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::writeStartElement(const string&, const string&, int, int, ...)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:599:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::writeElement(const string&, const string&, int, int, ...)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:658:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C: In member function ‘int ESMCI::IO_XML::writeComment(const string&, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_XML.C:811:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_Handler.C: In static member function ‘static int ESMCI::IO_Handler::destroy(ESMCI::IO_Handler**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_Handler.C:268:21: warning: deleting object of abstract class type ‘ESMCI::IO_Handler’ which has non-virtual destructor will cause undefined behavior [-Wdelete-non-virtual-dtor]
     delete (*ioclass);
                     ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_NetCDF.C: In member function ‘int ESMCI::IO_NetCDF::read(const string&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_NetCDF.C:197:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER) localrc = ESMC_RC_PTR_NULL;
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_NetCDF.C: In member function ‘int ESMCI::IO_NetCDF::write(const string&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/src/ESMCI_IO_NetCDF.C:409:5: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
     if (this == ESMC_NULL_POINTER)
     ^~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/ESMCI_IO_F.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/../include/ESMCI_IO_NetCDF.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/ESMCI_IO_NetCDF_F.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/../include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/ESMCI_IO_XML_F.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/../include/ESMCI_IO_Gridspec.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/ESMC_IO_Gridspec.C:20:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/../include/ESMCI_IO_Scrip.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/IO/interface/ESMC_IO_Scrip.C:20:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/src/../include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/src/ESMCI_Grid.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_DistGrid.h:36,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMCI_Grid_F.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/../include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMC_Grid.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:6988:2:

   function ESMF_GridCreateFrmGridspec(grid_filename, &
  1
Warning: Return value of function ‘esmf_gridcreatefrmgridspec’ at (1) not set [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:6471:2:

   function ESMF_GridCreateFrmScrip(filename, regDecomp, indexflag, keywordEnforcer, &
  1
Warning: Return value of function ‘esmf_gridcreatefrmscrip’ at (1) not set [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:29627:0:

     end function ESMF_GridCreateDistgridArb
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:29360:0:

     end function ESMF_GridCreateDistgridReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:28981:0:

     end function ESMF_GridCreateDistgridIrreg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:24248:0:

                                  ESMF_CONTEXT, rcToReturn=rc)) return
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:17817:0:

   end function ESMF_GridEmptyCreate
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:16642:0:

 end function ESMF_GridCreateMosaicIreg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:16089:0:

 end function ESMF_GridCreateMosaicReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:15334:0:

 end function ESMF_GridCreateCubedSphereIReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:14877:0:

 end function ESMF_GridCreateCubedSphereReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:14408:0:

     end function ESMF_GridCreateShapeTileArb
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:13790:0:

     end function ESMF_GridCreateShapeTileReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:12869:0:

     end function ESMF_GridCreateShapeTileIrreg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:11839:0:

   end function ESMF_GridCreateNoPeriDimUfrmR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:11654:0:

   end function ESMF_GridCreate1PeriDimUfrmB
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:11393:0:

    end function ESMF_GridCreate1PeriDimUfrmR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:11022:0:

     end function ESMF_GridCreateNoPeriDimA
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:10807:0:

     end function ESMF_GridCreateNoPeriDimR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:10556:0:

     end function ESMF_GridCreateNoPeriDimI
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:10292:0:

     end function ESMF_GridCreate2PeriDimA
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:10068:0:

     end function ESMF_GridCreate2PeriDimR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:9809:0:

     end function ESMF_GridCreate2PeriDimI
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:9535:0:

     end function ESMF_GridCreate1PeriDimA
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:9295:0:

     end function ESMF_GridCreate1PeriDimR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:9015:0:

     end function ESMF_GridCreate1PeriDimI
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:8566:0:

 end function ESMF_GridCreateFrmGridCoord
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:8439:0:

 end function ESMF_GridCreateFrmGrid
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:6464:0:

 end function ESMF_GridCreateFrmNCFile
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:6166:0:

 end function ESMF_GridCreateFrmNCFileDG
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:5189:0:

     end function ESMF_GridCreateFrmDistGridArb
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:4821:0:

     end function ESMF_GridCreateFrmDistGrid
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:4515:0:

     end function ESMF_GridCreateEdgeConnA
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:4263:0:

     end function ESMF_GridCreateEdgeConnR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:3974:0:

     end function ESMF_GridCreateEdgeConnI
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:3674:0:

     end function ESMF_GridCreateCopyFromReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:3357:0:

     end function ESMF_GridCreateCopyFromNewDG
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Grid/interface/ESMF_Grid.F90:2313:0:

     end function ESMF_ArrayCreateFromGrid
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_ClumpPnts.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCXX.C:19:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/../include/ESMCI_Mesh_GToM_Glue.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_XGrid_Glue.C:29:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Dual.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Util.C:19:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Search_EtoP.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/../include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:18:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MathUtil.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:18:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Regrid_Nearest.C:33:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:18:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Bilinear.C:16:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_XGridUtil.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Search_EtoE.C:18:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_MBMesh_Glue.h:34,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_MBMesh_Regrid_Glue.h:29,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C:25:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Rendez_EtoP.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Rendez_Nearest.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Rendez_Elem.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C: In function ‘void ESMCI::SearchNearestSrcToDst(const ESMCI::PointList&, const ESMCI::PointList&, int, ESMCI::SearchNearestResultList&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:134:12: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   if (sdim != dst_pl.get_coord_dim()) {
       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:145:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:191:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C: In function ‘void ESMCI::ParSearchNearestSrcToDst(const ESMCI::PointList&, const ESMCI::PointList&, int, ESMCI::SearchNearestResultList&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:330:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:380:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:480:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<proc_lists[i].size(); j++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_Nearest.C:551:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<snd_inds[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C: In function ‘void ESMCI::SearchNearestSrcToDstNPnts(const ESMCI::PointList&, const ESMCI::PointList&, int, int, ESMCI::SearchNearestResultList&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:313:12: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   if (sdim != dst_pl.get_coord_dim()) {
       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:324:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:361:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C: In function ‘void ESMCI::ParSearchNearestSrcToDstNPnts(const ESMCI::PointList&, const ESMCI::PointList&, int, int, ESMCI::SearchNearestResultList&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:493:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:536:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:592:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<proc_lists[i].size(); j++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:660:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<snd_inds[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Search_NearestNPnts.C:816:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CommDataBack>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<rcv_results_array[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘bool ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::is_in_cell(const double*, const double*, double*, double*) const [with SFUNC_TYPE = ESMCI::tri_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:648:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:354:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < pdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:366:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:370:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:372:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
         for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                         ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:390:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:392:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:407:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++)
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::tri_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:648:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:451:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:452:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:454:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::tri_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:648:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:540:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:541:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < sdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:543:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::tri_shape_func; MPTRAITS = ESMCI::MBTraits<>; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:649:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:482:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:483:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:485:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::tri_shape_func; MPTRAITS = ESMCI::MBTraits<>; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:649:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:562:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:563:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < pdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:565:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘bool ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::is_in_cell(const double*, const double*, double*, double*) const [with SFUNC_TYPE = ESMCI::quad_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:652:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:354:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < pdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:366:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:370:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:372:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
         for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                         ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:390:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:392:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:407:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++)
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:652:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:451:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:452:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:454:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:652:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:540:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:541:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < sdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:543:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad_shape_func; MPTRAITS = ESMCI::MBTraits<>; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:653:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:482:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:483:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:485:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad_shape_func; MPTRAITS = ESMCI::MBTraits<>; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:653:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:562:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:563:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < pdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:565:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘bool ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::is_in_cell(const double*, const double*, double*, double*) const [with SFUNC_TYPE = ESMCI::hex_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 3; int PARAMETRIC_DIM = 3]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:656:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:354:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < pdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:366:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:370:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:372:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
         for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                         ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:390:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:392:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:407:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++)
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::hex_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 3; int PARAMETRIC_DIM = 3; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:656:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:451:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:452:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:454:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::hex_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 3; int PARAMETRIC_DIM = 3; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:656:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:540:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:541:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < sdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:543:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘bool ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::is_in_cell(const double*, const double*, double*, double*) const [with SFUNC_TYPE = ESMCI::tet_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 3; int PARAMETRIC_DIM = 3]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:659:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:354:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < pdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:366:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:370:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:372:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
         for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                         ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:390:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:392:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:407:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++)
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::tet_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 3; int PARAMETRIC_DIM = 3; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:659:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:451:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:452:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:454:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::tet_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 3; int PARAMETRIC_DIM = 3; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:659:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:540:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:541:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < sdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:543:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad9_shape_func; MPTRAITS = ESMCI::MBTraits<>; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:462:6:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:482:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:483:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:485:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad9_shape_func; MPTRAITS = ESMCI::MBTraits<>; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, 3, 2>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:554:6:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:562:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:563:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < pdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:565:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘bool ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::is_in_cell(const double*, const double*, double*, double*) const [with SFUNC_TYPE = ESMCI::quad9_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:290:6:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:354:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < pdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:366:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:370:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:372:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
         for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                         ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:390:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:392:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int j = 0; j < sdim; j++) {
                       ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:407:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++)
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::forward(unsigned int, const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad9_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:431:6:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:451:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   for (int j = 0; j < npts; j++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:452:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int i = 0; i < sdim; i++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:454:29: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int ncf = 0; ncf < SFUNC_TYPE::ndofs; ncf++) {
                         ~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C: In instantiation of ‘void ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::jac_inv(const mdata_type*, const pcoord_type*, typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value*) const [with SFUNC_TYPE = ESMCI::quad9_shape_func; MPTRAITS = ESMCI::MBTraits<>; int SPATIAL_DIM = 2; int PARAMETRIC_DIM = 2; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::mdata_type = double; ESMCI::MB_POLY_Mapping<SFUNC_TYPE, MPTRAITS, SPATIAL_DIM, PARAMETRIC_DIM>::pcoord_type = double; typename ESMCI::mbmesh_richest_type<typename MPTRAITS::mdata_type, typename MPTRAITS::pcoord_type>::value = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:532:6:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:540:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
   for (int i = 0; i < sdim; i++) {
                   ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:541:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
     for (int j = 0; j < sdim; j++) {
                     ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Mapping.C:543:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
       for (int k = 0; k < SFUNC_TYPE::ndofs; k++) {
                       ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Regrid_Nearest.C: In function ‘void calc_nearest_npts_mat(ESMCI::PointList*, ESMCI::PointList*, ESMC_R8, ESMCI::SearchNearestResultList&, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Regrid_Nearest.C:147:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_nearest_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.nodes.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Regrid_Nearest.C:170:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_nearest_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.nodes.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Regrid_Nearest.C:203:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_nearest_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.nodes.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Regrid_Nearest.C:233:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<cols.size(); i++) {
                   ~^~~~~~~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh.C:13:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h: In constructor ‘ESMCI::Mesh::Mesh()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:140:6: warning: ‘ESMCI::Mesh::committed’ will be initialized after [-Wreorder]
 bool committed;
      ^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:128:7: warning:   ‘bool ESMCI::Mesh::is_split’ [-Wreorder]
  bool is_split;
       ^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh.C:61:1: warning:   when initialized here [-Wreorder]
 Mesh::Mesh() : MeshDB(), FieldReg(), CommReg(),
 ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MathUtil.C: In function ‘void ESMCI::get_elem_coords(const ESMCI::MeshObj*, const ESMCI::MEField<ESMCI::_field>*, int, int, int*, double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MathUtil.C:365:27: warning: comparison of integer expressions of different signedness: ‘const UInt’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
       if (topo->num_nodes > max_num_nodes) {
           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MathUtil.C: In function ‘void ESMCI::get_elem_coords_and_ids(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, int, int, int*, double*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MathUtil.C:520:27: warning: comparison of integer expressions of different signedness: ‘const UInt’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
       if (topo->num_nodes > max_num_nodes) {
           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Util.C: In function ‘void MBMesh_get_local_elem_gids(ESMCI::MBMesh*, std::vector<unsigned int>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Util.C:284:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::pair<int, int> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i = 0; i<pos_and_gids.size(); ++i) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Rendez_Nearest.C: In function ‘void assign_points_to_procs(ESMCI::PointList*, int, ZOLTAN_ID_PTR, ZOLTAN_ID_PTR, int*, int, int, std::vector<ESMCI::PL_Comm_Pair>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Rendez_Nearest.C:153:30: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (unsigned int i = 0; i < numExport; ++i) {
                            ~~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Rendez_Nearest.C:154:24: warning: comparison of integer expressions of different signedness: ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     if (exportGids[i*2]==src_or_dst) {
         ~~~~~~~~~~~~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Rendez_EtoP.C: In function ‘void assign_points_to_procs(ESMCI::PointList*, int, ZOLTAN_ID_PTR, ZOLTAN_ID_PTR, int*, int, std::vector<ESMCI::PL_Comm_Pair>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Rendez_EtoP.C:335:30: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (unsigned int i = 0; i < numExport; ++i) {
                            ~~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::MeshRedistNode(ESMCI::Mesh*, int, int*, ESMCI::Mesh**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:165:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       for (int i=0; i< num_src_gids; i++) {
                     ~^~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C: In constructor ‘ESMCI::MBMesh_BBox::MBMesh_BBox(ESMCI::MBMesh*, moab::EntityHandle, double, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C:151:23: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt i =0; i < dim; i++) {
                     ~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C:170:24: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt n = 1; n < num_p; n++) {
                      ~~^~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_BBox.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_MBMesh_BBox.h:19,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C:16:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C: In function ‘bool ESMCI::Mixed_BBoxIntersect(const ESMCI::MBMesh_BBox&, const ESMCI::BBox&, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C:337:30: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
   ThrowAssert(b1.dimension() == b2.dimension());
               ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Exception.h:103:28: note: in definition of macro ‘ThrowAssert’
 #define ThrowAssert(cond) (cond ? (void) 0 : throw Ex() << "Condition {" << #cond << "} failed at " << __FILE__ << ", line:" << __LINE__)
                            ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C: In function ‘void ESMCI::build_pl_mb_bbox(double*, double*, ESMCI::PointList*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_BBox.C:429:24: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt d = 0; d < sdim; d++) {
                      ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::set_node_owners(ESMCI::Mesh*, ESMCI::DDir<>)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:843:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
     for (int i=0; i<num_src_gids; i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::set_node_owners_wo_list(ESMCI::Mesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1010:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
      for (int i=0; i<gids.size(); i++) {
                    ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Bilinear.C: In function ‘void calc_bilinear_mat(ESMCI::MBMesh*, ESMCI::PointList*, MBMesh_Search_EToP_Result_List&, ESMCI::IWeights&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Bilinear.C:171:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for(int i = 0; i < nodes.size(); ++i) {
                      ~~^~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::set_elem_owners(ESMCI::Mesh*, ESMCI::DDir<>)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1068:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
     for (int i=0; i<num_src_gids; i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::redist_nohome_nodes(ESMCI::Mesh*, int, int*, ESMCI::Mesh*, ESMCI::CommReg*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1249:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
     for (int i=0; i<num_sn_gids; i++) {
                   ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::redist_elems(ESMCI::Mesh*, ESMCI::DDir<>, ESMCI::Mesh*, ESMCI::CommReg*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1326:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
   for (int i=0; i<num_src_gids; i++) {
                 ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::set_elem_owners_wo_list(ESMCI::Mesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1696:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
      for (int i=0; i<gids.size(); i++) {
                    ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1747:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
        for (int i=0; i<split_elems.size(); i++) {
                      ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:1775:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
          if (owner==Par::Rank()) {
              ~~~~~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C: In function ‘void ESMCI::set_split_orig_id_map(ESMCI::Mesh*, ESMCI::Mesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshRedist.C:2086:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::DDir<>::dentry, std::allocator<ESMCI::DDir<>::dentry> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<lookups.size(); i++) {
                   ~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C: In function ‘void ESMCI::MeshDual(ESMCI::Mesh*, ESMCI::Mesh**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:266:42: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     if ((src_mesh->is_split) && (elem_id > src_mesh->max_non_split_id)) {
                                  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshaddnodes(ESMCI::Mesh**, int*, int*, double*, int*, ESMCI::InterArray<int>*, ESMC_CoordSys_Flag*, int*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:277:28: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         for (UInt c = 0; c < sdim; ++c)
                          ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:290:27: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         for (UInt c = 0; c<orig_sdim; ++c)
                          ~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C: In function ‘void create_pointlist_of_points_not_in_wmat(ESMCI::PointList*, ESMCI::WMat&, ESMCI::PointList**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C:47:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C:52:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C:71:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C:76:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C: In function ‘void replace_mapped_with_mapped_extrap(ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Extrapolation.C:95:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i = 0; i < col.size(); ++i) {
                     ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:449:44: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
       if ((src_mesh->is_split) && (elem_id > src_mesh->max_non_split_id)) {
                                    ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:588:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
       if (elemId[e] > max_id) {
           ~~~~~~~~~~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C: In function ‘void ESMCI::get_unique_elems_around_node(ESMCI::MeshObj*, ESMCI::Mesh*, ESMCI::MDSS*, int*, ESMCI::UInt*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1070:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       if (elem_id > max_elem_id) {
           ~~~~~~~~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1174:26: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
       if (tmp_mdss[i].id != prev_id) {
           ~~~~~~~~~~~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C: In function ‘void ESMCI::add_ghost_elems_to_split_orig_id_map(ESMCI::Mesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1213:19: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
       if (elem_id <=  mesh->max_non_split_id) continue;
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1241:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         if (elem_id <=  mesh->max_non_split_id) continue;
             ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1287:17: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     if (elem_id <=  mesh->max_non_split_id) continue;
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1312:17: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     if (elem_id <=  mesh->max_non_split_id) continue;
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:1333:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::DDir<>::dentry, std::allocator<ESMCI::DDir<>::dentry> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i<lookups.size(); i++) {
                 ~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C: In function ‘void MBMesh_calc_1st_order_weights_2D_2D_cart(ESMCI::MBMesh*, moab::EntityHandle, ESMCI::MBMesh*, std::vector<long unsigned int>, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:101:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:114:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:130:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:159:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:247:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:263:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C: In function ‘void MBMesh_calc_1st_order_weights_2D_3D_sph_src_pnts(int, double*, ESMCI::MBMesh*, std::vector<long unsigned int>, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:402:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:434:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C: In function ‘void MBMesh_calc_1st_order_weights_2D_3D_sph(ESMCI::MBMesh*, moab::EntityHandle, ESMCI::MBMesh*, std::vector<long unsigned int>, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:645:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:657:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:769:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:779:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshserialize(ESMCI::Mesh**, char*, int*, int*, ESMC_InquireFlag*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:2217:26: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
           for (int j=0; j<nvalSetSizes[i]; j++) {
                         ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:2234:26: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
           for (int j=0; j<nvalSetObjSizes[i]; j++) {
                         ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C: In function ‘void calc_conserve_mat_serial_2D_2D_cart(ESMCI::MBMesh*, ESMCI::MBMesh*, MBMesh_Search_EToE_Result_List&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:833:29: warning: comparison of integer expressions of different signedness: ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (sr.dst_elems.size() > max_num_dst_elems) max_num_dst_elems=sr.dst_elems.size();
         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:861:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshdeserialize(ESMCI::Mesh**, char*, int*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:2341:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘__gnu_cxx::__alloc_traits<std::allocator<unsigned int>, unsigned int>::value_type’ {aka ‘unsigned int’} [-Wsign-compare]
         for (int j=0; j<nvalSetSizes[i]; j++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:2360:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘__gnu_cxx::__alloc_traits<std::allocator<unsigned int>, unsigned int>::value_type’ {aka ‘unsigned int’} [-Wsign-compare]
         for (int j=0; j<nvalSetObjSizes[i]; j++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘void get_mesh_node_ids_not_in_wmat(ESMCI::PointList*, ESMCI::WMat&, std::vector<int>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:727:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:732:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘void get_mesh_elem_ids_not_in_wmat(ESMCI::Mesh*, ESMCI::WMat&, std::vector<int>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:773:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id <elem_id)) {
                           ~~~~~~~~~~~~~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:778:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != elem_id) {
         ~~~~~~~~~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘bool all_mesh_node_ids_in_wmat(ESMCI::PointList*, ESMCI::WMat&, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:807:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:822:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘bool all_mesh_elem_ids_in_wmat(ESMCI::Mesh*, ESMCI::WMat&, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:874:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id <elem_id)) {
                           ~~~~~~~~~~~~~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:887:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != elem_id) {
         ~~~~~~~~~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:974:47: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     while ((pos<num_dst_ids) && (dst_ids[pos] < elem_id)) {
                                  ~~~~~~~~~~~~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:987:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     if (dst_ids[pos] != elem_id) {
         ~~~~~~~~~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:908:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:940:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:960:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.dst_elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘void translate_split_src_elems_in_wts(ESMCI::Mesh*, int, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:1595:17: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
      if (src_id > srcmesh->max_non_split_id) {
          ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:979:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.dst_elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1014:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:1616:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
   for (int i=0; i<num_src_split_gids; i++) {
                 ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C: In function ‘void calc_conserve_mat_serial_2D_3D_sph(ESMCI::MBMesh*, ESMCI::MBMesh*, MBMesh_Search_EToE_Result_List&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1081:30: warning: comparison of integer expressions of different signedness: ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
      if (sr.dst_elems.size() > max_num_dst_elems) max_num_dst_elems=sr.dst_elems.size();
          ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Dual.C: In function ‘void ESMCI::get_unique_elems_around_node(const EntityHandle*, ESMCI::MBMesh*, ESMCI::MDSS*, int*, int*, bool&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Dual.C:1257:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       if (owner == Par::Rank()) allnotowned = false;
           ~~~~~~^~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1109:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C: In function ‘void ESMCI::ESMCI_GridToMesh(const ESMCI::Grid&, int, const std::vector<ESMCI::Array*>&, ESMCI::InterArray<int>*, int*, ESMCI::Mesh**, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:203:2: warning: this ‘if’ clause does not guard... [-Wmisleading-indentation]
  if (ESMC_LogDefault.MsgFoundError(localrc,ESMCI_ERR_PASSTHRU,ESMC_CONTEXT,NULL))
  ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:207:4: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘if’
    std::vector<UInt> owned_shared;
    ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1155:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:257:46: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
          if (lb == owned_shared.end() || *lb != gid)
                                          ~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1187:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1207:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.dst_elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1226:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.dst_elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:1253:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:301:49: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
          if (lb == notowned_shared.end() || *lb != gid)
                                             ~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_geteleminfointoarray(ESMCI::Mesh*, ESMCI::DistGrid*, int, int*, ESMCI::Array**, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:2832:28: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             for (int i=0; i<seqIndexList.size(); i++) {
                           ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:2866:28: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             for (int i=0; i<seqIndexList.size(); i++) {
                           ~^~~~~~~~~~~~~~~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/../include/ESMCI_Mesh_GToM_Glue.h:25,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:23:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:354:28: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const UInt’ {aka ‘const unsigned int’} [-Wsign-compare]
      ThrowRequire(cnrCount == ctopo->num_nodes);
                   ~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Exception.h:107:29: note: in definition of macro ‘ThrowRequire’
 #define ThrowRequire(cond) (cond ? (void) 0 : throw Ex() << "Condition {" << #cond << "} failed at " << __FILE__ << ", line:" << __LINE__)
                             ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshgetarea(ESMCI::Mesh**, int*, double*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3079:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (*num_elem != egids.size()) {
         ~~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3090:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<egids.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3116:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<egids.size(); i++) {
                       ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3166:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<egids.size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3216:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<egids.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:470:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       for (int i=0; i<sdim; i++) {
                     ~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘void copy_rs_from_WMat_to_Array(ESMCI::WMat*, ESMCI::Array*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:2249:18: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
         if (w.id == seq_ind) {
             ~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshgetcentroid(ESMCI::Mesh**, int*, double*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3392:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (*num_elem != egids.size()) {
         ~~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3402:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<egids.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C: In function ‘void copy_cnsv_rs_from_WMat_to_Array(ESMCI::WMat*, ESMCI::Array*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Regrid_Glue.C:2401:18: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
         if (w.id == seq_ind) {
             ~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3437:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<egids.size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshgetfrac(ESMCI::Mesh**, int*, double*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3545:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (num_elem != egids.size()) {
         ~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3555:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<egids.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3580:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<egids.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C: In function ‘void ESMCI::_add_missing_multitile_elems(ESMCI::Mesh*, std::vector<ESMCI::MM_ELEM>*, int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:1206:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::MM_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i < missing_elems->size(); i++) {
                   ~~^~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C: In function ‘bool ESMCI::_get_global_id(ESMCI::DistGrid*, int, int*, int*, bool*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:1262:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<seqIndex.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_meshgetfrac2(ESMCI::Mesh**, int*, double*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3693:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (*num_elem != egids.size()) {
         ~~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:3702:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<egids.size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C: In function ‘void get_mbmesh_node_ids_not_in_wmat(ESMCI::PointList*, ESMCI::WMat&, std::vector<int>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:656:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:661:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C: In function ‘void get_mbmesh_elem_ids_not_in_wmat(ESMCI::MBMesh*, ESMCI::WMat&, std::vector<int>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:714:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id <elem_id)) wi++;
                           ~~~~~~~~~~~~~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:717:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != elem_id) {
         ~~~~~~~~~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C: In function ‘bool all_mbmesh_node_ids_in_wmat(ESMCI::PointList*, ESMCI::WMat&, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:745:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:761:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C: In function ‘bool all_mbmesh_elem_ids_in_wmat(ESMCI::MBMesh*, ESMCI::WMat&, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:820:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id <elem_id)) wi++;
                           ~~~~~~~~~~~~~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:833:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != elem_id) {
         ~~~~~~~~~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C: In function ‘void ESMCI::ESMCI_GridToMeshCell(const ESMCI::Grid&, const std::vector<ESMCI::Array*>&, ESMCI::Mesh**, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_GToM_Glue.C:2026:14: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
    if (owner != BAD_PROC) continue;
              ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C: In function ‘void mbcopy_rs_from_WMat_to_Array(ESMCI::WMat*, ESMCI::Array*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:966:18: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
         if (w.id == seq_ind) {
             ~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void expand_split_elem_ids(ESMCI::Mesh*, int, int*, int*, int**, std::map<unsigned int, unsigned int>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:4388:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::DDir<>::dentry, std::allocator<ESMCI::DDir<>::dentry> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<lookups.size(); i++) {
                   ~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C: In function ‘void mbcopy_cnsv_rs_from_WMat_to_Array(ESMCI::WMat*, ESMCI::Array*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Regrid_Glue.C:1118:18: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
         if (w.id == seq_ind) {
             ~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void calc_split_id_to_frac(ESMCI::Mesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:4453:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i<split_ids.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:4500:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i<split_ids.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘void ESMCI_MeshFitOnVM(ESMCI::Mesh**, ESMCI::VM**, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:5279:24: warning: comparison of unsigned expression < 0 is always false [-Wtype-limits]
        if ((orig_owner < 0) || (orig_owner > curr_vm_size-1)) {
             ~~~~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:5279:44: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
        if ((orig_owner < 0) || (orig_owner > curr_vm_size-1)) {
                                 ~~~~~~~~~~~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:5309:24: warning: comparison of unsigned expression < 0 is always false [-Wtype-limits]
        if ((orig_owner < 0) || (orig_owner > curr_vm_size-1)) {
             ~~~~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:5309:44: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
        if ((orig_owner < 0) || (orig_owner > curr_vm_size-1)) {
                                 ~~~~~~~~~~~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C: In function ‘void ESMCI::create_mbmesh_redist_elem_move_verts(ESMCI::MBMesh*, std::vector<ESMCI::EH_Comm_Pair>*, std::map<int, long unsigned int>*, ESMCI::MBMesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C:388:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::EH_Comm_Pair>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<elem_to_proc_list->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Search_EtoP.C: In function ‘void MBMesh_Search_EToP(ESMCI::MBMesh*, ESMCI::PointList*, int, int*, double, MBMesh_Search_EToP_Result_List&, bool, ESMCI::WMat&, std::vector<int>*, ESMCI::OTree*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Search_EtoP.C:616:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int p = 0; p < dst_loc->size(); ++p) {
                   ~~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Search_EtoP.C:641:13: warning: converting to non-pointer type ‘moab::EntityHandle’ {aka ‘long unsigned int’} from NULL [-Wconversion-null]
     si.elem=NULL;
             ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C: In function ‘void ESMCI::create_mbmesh_redist_elem_move_elems(ESMCI::MBMesh*, std::vector<ESMCI::EH_Comm_Pair>*, std::map<int, long unsigned int>*, ESMCI::MBMesh*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C:862:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::EH_Comm_Pair>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<elem_to_proc_list->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C:921:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::EH_Comm_Pair>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<elem_to_proc_list->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘void getElemGIDS(ESMCI::MBMesh*, std::vector<int>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2286:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::pair<int, int> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i = 0; i<pos_and_gids.size(); ++i) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘void getElems(void**, std::vector<long unsigned int>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2432:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::pair<int, long unsigned int> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i = 0; i<pos_and_elems.size(); ++i) {
                   ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘void MBMesh_getlocalelemcoords(void**, double*, int*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2474:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<ehs.size(); i++) {
                       ~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2487:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<ehs.size(); i++) {
                       ~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘void MBMesh_getarea(void**, int*, double*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2560:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (*num_elem != ehs.size()) {
         ~~~~~~~~~~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2591:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<ehs.size(); i++) {
                     ~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘void getNodes(void**, std::vector<long unsigned int>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2790:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::pair<int, long unsigned int> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i = 0; i<pos_and_nodes.size(); ++i) {
                   ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘void MBMesh_getlocalcoords(void**, double*, int*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2830:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<nodes.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:2843:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<nodes.size(); i++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCXX.C: In function ‘const ESMCI::MeshObjTopo* ESMCI::ElemType2TopoCXX(int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCXX.C:629:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCXX.C: In function ‘int ESMCI::ElemType2NumNodesCXX(int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCXX.C:650:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C: In static member function ‘static ESMCI::MeshCap* ESMCI::MeshCap::GridToMesh(const ESMCI::Grid&, int, const std::vector<ESMCI::Array*>&, ESMCI::InterArray<int>*, int*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C:341:15: warning: ‘mbmesh’ may be used uninitialized in this function [-Wmaybe-uninitialized]
     mc->mbmesh=mbmesh;
     ~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C: In static member function ‘static ESMCI::MeshCap* ESMCI::MeshCap::GridToMeshCell(const ESMCI::Grid&, const std::vector<ESMCI::Array*>&, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C:385:15: warning: ‘mbmesh’ may be used uninitialized in this function [-Wmaybe-uninitialized]
     mc->mbmesh=mbmesh;
     ~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C: In static member function ‘static ESMCI::MeshCap* ESMCI::MeshCap::meshcreate_easy_elems(int*, int*, int*, ESMCI::InterArray<int>*, int*, ESMCI::InterArray<int>*, int*, double*, int*, double*, int*, double*, ESMC_CoordSys_Flag*, bool, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C:1659:15: warning: ‘mbmesh’ may be used uninitialized in this function [-Wmaybe-uninitialized]
     mc->mbmesh=mbmesh;
     ~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C: In static member function ‘static ESMCI::MeshCap* ESMCI::MeshCap::meshcreate_from_grid(ESMCI::Grid**, bool, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshCap.C:1718:15: warning: ‘mbmesh’ may be used uninitialized in this function [-Wmaybe-uninitialized]
     mc->mbmesh=mbmesh;
     ~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C: In function ‘const ESMCI::MeshObjTopo* ESMCI::ElemType2Topo(int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MeshDual.C:864:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C: In function ‘moab::EntityType ESMCI::_get_entity_type(int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Redist.C:731:4: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C: In function ‘void MBMesh_calc_1st_order_weights_2D_3D_sph(ESMCI::MBMesh*, moab::EntityHandle, ESMCI::MBMesh*, std::vector<long unsigned int>, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Conserve.C:766:36: warning: ‘src_elem_area2’ may be used uninitialized in this function [-Wmaybe-uninitialized]
       *src_elem_area=*src_elem_area+src_elem_area2;
                      ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘const ESMCI::MeshObjTopo* ElemType2Topo(int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:483:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C: In function ‘int ElemType2NumNodes(int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_Mesh_Glue.C:503:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘moab::EntityType get_entity_type(int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:433:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C: In function ‘int ElemType2NumNodes(int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/ESMCI_MBMesh_Glue.C:452:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_CommReg.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_BBox.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MEImprint.C:14:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MEField.C:14:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_HAdapt.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshNC.h:16,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshNC.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshExodus.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshRead.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshRead.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:14:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshPartition.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshPartition.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshSkin.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshSkin.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshVTK.h:16,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshVTK.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshUtils.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MEValues.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MEValues.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshRefine.C:18:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshSkin.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshPNC.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:12:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h: In instantiation of ‘ESMCI::_fieldType<SCALAR>::_fieldType(const ESMCI::_fieldType<SCALAR>&) [with SCALAR = char]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:54:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:140:3: warning: base class ‘class ESMCI::_fieldTypeBase’ should be explicitly initialized in the copy constructor [-Wextra]
   _fieldType(const _fieldType &rhs) : ti(rhs.ti) {}
   ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h: In instantiation of ‘ESMCI::_fieldType<SCALAR>::_fieldType(const ESMCI::_fieldType<SCALAR>&) [with SCALAR = long int]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:55:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:140:3: warning: base class ‘class ESMCI::_fieldTypeBase’ should be explicitly initialized in the copy constructor [-Wextra]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h: In instantiation of ‘ESMCI::_fieldType<SCALAR>::_fieldType(const ESMCI::_fieldType<SCALAR>&) [with SCALAR = int]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:56:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:140:3: warning: base class ‘class ESMCI::_fieldTypeBase’ should be explicitly initialized in the copy constructor [-Wextra]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h: In instantiation of ‘ESMCI::_fieldType<SCALAR>::_fieldType(const ESMCI::_fieldType<SCALAR>&) [with SCALAR = unsigned char]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:57:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:140:3: warning: base class ‘class ESMCI::_fieldTypeBase’ should be explicitly initialized in the copy constructor [-Wextra]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h: In instantiation of ‘ESMCI::_fieldType<SCALAR>::_fieldType(const ESMCI::_fieldType<SCALAR>&) [with SCALAR = float]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:58:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:140:3: warning: base class ‘class ESMCI::_fieldTypeBase’ should be explicitly initialized in the copy constructor [-Wextra]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h: In instantiation of ‘ESMCI::_fieldType<SCALAR>::_fieldType(const ESMCI::_fieldType<SCALAR>&) [with SCALAR = double]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshllField.C:59:16:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshllField.h:140:3: warning: base class ‘class ESMCI::_fieldTypeBase’ should be explicitly initialized in the copy constructor [-Wextra]
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObj.C:12:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h: In constructor ‘ESMCI::MeshObj::MeshObj(ESMCI::UChar, int, long int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:148:8: warning: ‘ESMCI::MeshObj::type’ will be initialized after [-Wreorder]
  UChar type;
        ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:147:16: warning:   ‘ESMCI::MeshObj::DataIndexType ESMCI::MeshObj::data_index’ [-Wreorder]
  DataIndexType data_index;
                ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObj.C:26:1: warning:   when initialized here [-Wreorder]
 MeshObj::MeshObj(UChar _type, int _id, long _data_index, int _owner) :
 ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_BBox.C: In function ‘void ESMCI::build_pl_bbox(double*, double*, ESMCI::PointList*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_BBox.C:355:24: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt d = 0; d < sdim; d++) {
                      ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FieldReg.C: In member function ‘void ESMCI::FieldReg::Commit(ESMCI::MeshDB&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FieldReg.C:389:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<nvalSet.size(); i++) {
                     ~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FieldReg.C:396:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<nvalSetObj.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FieldReg.C: In member function ‘void ESMCI::FieldReg::ProxyCommit(ESMCI::MeshDB&, int, std::vector<unsigned int>, std::vector<unsigned int>, std::vector<unsigned int>, std::vector<unsigned int>)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FieldReg.C:559:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘__gnu_cxx::__alloc_traits<std::allocator<unsigned int>, unsigned int>::value_type’ {aka ‘unsigned int’} [-Wsign-compare]
       for (int i=0; i<nvalSetSizesArg[setPos]; i++) {
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_Rebalance.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FieldReg.C:565:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘__gnu_cxx::__alloc_traits<std::allocator<unsigned int>, unsigned int>::value_type’ {aka ‘unsigned int’} [-Wsign-compare]
       for (int i=0; i<nvalSetObjSizesArg[setPos]; i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C: In function ‘void ESMCI::concat_meshes(const ESMCI::Mesh&, const ESMCI::Mesh&, ESMCI::Mesh&, const ESMCI::Mesh&, const ESMCI::Mesh&, ESMCI::SearchResult&, ESMCI::interp_mapp)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:634:26: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
       for (UInt n = 0; n < subject_num_nodes; n++) {
                        ~~^~~~~~~~~~~~~~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:12:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h: In constructor ‘ESMCI::GeomRend::GeomRend(ESMCI::Mesh*, ESMCI::PointList*, ESMCI::Mesh*, ESMCI::PointList*, const ESMCI::GeomRend::DstConfig&, bool, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:166:8: warning: ‘ESMCI::GeomRend::freeze_src’ will be initialized after [-Wreorder]
   bool freeze_src;  // true if src mesh will not be migrated to create src rendezvous mesh
        ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:154:14: warning:   ‘ESMCI::PointList* ESMCI::GeomRend::srcplist_rend’ [-Wreorder]
   PointList *srcplist_rend;
              ^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:182:3: warning:   when initialized here [-Wreorder]
   GeomRend::GeomRend(Mesh *_srcmesh, PointList *_srcplist,
   ^~~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:12:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:169:8: warning: ‘ESMCI::GeomRend::on_sph’ will be initialized after [-Wreorder]
   bool on_sph;
        ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:103:7: warning:   ‘int ESMCI::GeomRend::status’ [-Wreorder]
   int status;
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:182:3: warning:   when initialized here [-Wreorder]
   GeomRend::GeomRend(Mesh *_srcmesh, PointList *_srcplist,
   ^~~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_List.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshObj.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshDB.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommRel.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_CommReg.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:12:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:217:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   ThrowRequire(sdim == dst_dim);
                ~~~~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_Exception.h:107:29: note: in definition of macro ‘ThrowRequire’
 #define ThrowRequire(cond) (cond ? (void) 0 : throw Ex() << "Condition {" << #cond << "} failed at " << __FILE__ << ", line:" << __LINE__)
                             ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:33: warning: format ‘%d’ expects argument of type ‘int’, but argument 4 has type ‘ESMCI::MeshObj::id_type’ {aka ‘long int’} [-Wformat=]
                     sprintf(msg,"%selem Id: %d clip_elem Id: %d\n", msg, elem.get_id(), clip_elem.get_id());
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~       ~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:33: warning: format ‘%d’ expects argument of type ‘int’, but argument 5 has type ‘ESMCI::MeshObj::id_type’ {aka ‘long int’} [-Wformat=]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:29: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
                     sprintf(msg,"%selem Id: %d clip_elem Id: %d\n", msg, elem.get_id(), clip_elem.get_id());
                             ^~~                                     ~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:818:66: warning: passing argument 1 to restrict-qualified parameter aliases with argument 3 [-Wrestrict]
                       for(int npt=0; npt<num_p*2; npt++) sprintf(msg,"%s %g", msg, cd_sph[npt]);
                                                                  ^~~          ~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C: In member function ‘void ESMCI::GeomRend::build_dst_mig(Zoltan_Struct*, ESMCI::GeomRend::ZoltanUD&, int, ZOLTAN_ID_PTR, ZOLTAN_ID_PTR, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_GeomRendezvous.C:769:24: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt i = 0; i < nd_size; i++) {
                      ~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C: In function ‘void ESMCI::diff_meshes(const ESMCI::Mesh&, const ESMCI::Mesh&, ESMCI::Mesh&, const ESMCI::Mesh&, const ESMCI::Mesh&, ESMCI::SearchResult&, ESMCI::interp_mapp, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:1220:26: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
       for (UInt n = 0; n < subject_num_nodes; n++) {
                        ~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C: In function ‘bool ESMCI::MeshObjConn::get_obj_nodes(const ESMCI::MeshObj&, std::vector<ESMCI::MeshObj*>&, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:396:5: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
     for (UInt i = 0; i < npe; i++)
     ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:398:7: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
       return true;
       ^~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeights.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C: In function ‘void ESMCI::MeshObjConn::get_shared_procs(const ESMCI::MeshObj&, const ESMCI::CommRel&, std::vector<unsigned int>&, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:496:7: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
       for (; (cl != ce && cl->obj == *ni) && cl->processor < procs[i]; cl++);
       ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:497:8: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
        if ((cl != ce && cl->obj == *ni) && cl->processor == procs[i]) {
        ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_HAdapt.C: In member function ‘void ESMCI::HAdapt::refinement_resolution() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_HAdapt.C:303:43: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘const int’ [-Wsign-compare]
           for (UInt sn = 0; !constr && sn != etopo->num_side_nodes; ++sn) {
                                        ~~~^~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C: In function ‘void ESMCI::MeshObjConn::get_node_support(const ESMCI::MeshObj&, const ESMCI::MeshObjTopo*&, ESMCI::UInt&, std::vector<ESMCI::MeshObj*>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:969:5: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
     for (UInt n = 0; n < etopo->num_nodes; n++)
     ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshObjConn.C:973:7: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
       topo = etopo;
       ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C: In function ‘void ESMCI::Cart2D(ESMCI::Mesh&, int, int, double, double, double, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:359:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt i=0; i<X*Y; ++i) {
                    ~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:366:20: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for(UInt j=0; j<Y-1; ++j) {
                   ~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:367:20: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for(UInt i=0; i<X-1; ++i) {
                   ~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:384:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt i=0; i<X*Y; ++i) {
                    ~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C: In function ‘void ESMCI::SphShell(ESMCI::Mesh&, int, int, double, double, double, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:403:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt i=0; i<lat*lon; ++i) {
                    ~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:410:20: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for(UInt j=0; j<lon-1; ++j) {
                   ~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:411:20: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for(UInt i=0; i<lat-1; ++i) {
                   ~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshGen.C:434:21: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt i=0; i<lat*lon; ++i) {
                    ~^~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_WriteWeightsPar.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeightsPar.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshRefine.C: In function ‘void ESMCI::retrieve_nodes(ESMCI::MeshObj&, const ESMCI::MeshObjTopo*, std::vector<ESMCI::MeshObj*>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshRefine.C:146:55: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘const int’ [-Wsign-compare]
       for (UInt i = topo->num_nodes; !need_edges && i < topo->num_child_nodes; i++)
                                                     ~~^~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshRefine.C:150:28: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘const int’ [-Wsign-compare]
         for (UInt s = 0; s < topo->num_edges; s++) {
                          ~~^~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_FindPnts.h:20,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C: In function ‘void ESMCI::concat_meshes(const ESMCI::Mesh&, const ESMCI::Mesh&, ESMCI::Mesh&, const ESMCI::Mesh&, const ESMCI::Mesh&, ESMCI::SearchResult&, ESMCI::interp_mapp)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:33: warning: ‘elem Id: ’ directive writing 9 bytes into a region of size between 1 and 1024 [-Wformat-overflow=]
                     sprintf(msg,"%selem Id: %d clip_elem Id: %d\n", msg, elem.get_id(), clip_elem.get_id());
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:33: note: using the range [-2147483648, 2147483647] for directive argument
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:33: note: using the range [-2147483648, 2147483647] for directive argument
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:815:28: note: ‘sprintf’ output between 28 and 1071 bytes into a destination of size 1024
                     sprintf(msg,"%selem Id: %d clip_elem Id: %d\n", msg, elem.get_id(), clip_elem.get_id());
                     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:818:70: warning: ‘%g’ directive writing between 1 and 13 bytes into a region of size between 0 and 1023 [-Wformat-overflow=]
                       for(int npt=0; npt<num_p*2; npt++) sprintf(msg,"%s %g", msg, cd_sph[npt]);
                                                                      ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:818:70: note: assuming directive output of 12 bytes
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_MeshMerge.C:818:65: note: ‘sprintf’ output between 3 and 1038 bytes into a destination of size 1024
                       for(int npt=0; npt<num_p*2; npt++) sprintf(msg,"%s %g", msg, cd_sph[npt]);
                                                          ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeights.C: In function ‘void ESMCI::nc_grid_file_2deg(ESMCI::nc_grid_file&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeights.C:311:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt i = 0; i < ncf.grid_size; i++) {
                    ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeights.C:317:24: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt k = 0; k < ncf.grid_corners; k++) {
                      ~~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeightsPar.C: In function ‘void ESMCI::GatherForWrite(ESMCI::IWeights&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeightsPar.C:73:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘const int’ [-Wsign-compare]
   for (UInt i = 0; i < rows_per_proc; i++) {
                    ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeightsPar.C: In function ‘void ESMCI::nc_grid_file1_2deg(ESMCI::nc_grid_file1&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_WriteWeightsPar.C:135:24: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
     for (UInt k = 0; k < ncf.grid_corners; k++) {
                      ~~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C: In function ‘void ESMCI::create_SM_cells_2D_2D_cart_src_pnts(int, double*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<ESMCI::SM_CELL>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:176:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:208:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C: In function ‘int ESMCI::found_func(void*, void*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:228:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       for (int i=0; i< mme->num_functions(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C: In function ‘int ESMCI::FindPnts(const ESMCI::Mesh&, int, int, int, double*, int*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:383:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<proc_lists[i].size(); j++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:451:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<snd_inds[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C: In function ‘void ESMCI::create_SM_cells_2D_2D_cart(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<ESMCI::SM_CELL>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:403:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:415:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:522:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C: In function ‘void ESMCI::create_SM_cells_2D_3D_sph_src_pnts(int, double*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<ESMCI::SM_CELL>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:687:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:716:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:549:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i< rcv_pets.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:570:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i< rcv_pets.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_FindPnts.C:572:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CommData>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<rcv_results[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C: In function ‘void ESMCI::create_SM_cells_2D_3D_sph(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<ESMCI::SM_CELL>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:918:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:930:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Legacy/ESMCI_SM.C:1040:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Regrid_Helper.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Mapping.C:266:7: warning: multi-line comment [-Wcomment]
       // Get rid of degenerate edges\
       ^
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ExtrapolationPoleLGC.C:14:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_MeshRegrid.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:12:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_PatchRecovery.C:15:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_MeshRegrid.h:15,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C:14:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MEValues.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Integrate.h:16,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Integrate.C:13:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:17:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Integrate.C:245:1: warning: multi-line comment [-Wcomment]
 //    | \
 ^
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Legacy/ESMCI_MeshUtils.h:17,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_WMat.C:14:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SpaceDir.C: In constructor ‘ESMCI::SpaceDir::SpaceDir(double*, double*, ESMCI::OTree*, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SpaceDir.C:140:33: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
      if (!search_this_proc && i == Par::Rank()) continue;
                               ~~^~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C: In function ‘void ESMCI::SearchNearestSrcToDst(const ESMCI::PointList&, const ESMCI::PointList&, int, ESMCI::SearchResult&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:136:12: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   if (sdim != dst_pl.get_coord_dim()) {
       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:147:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:190:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C: In function ‘void ESMCI::ParSearchNearestSrcToDst(const ESMCI::PointList&, const ESMCI::PointList&, int, ESMCI::SearchResult&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:326:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:376:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:476:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<proc_lists[i].size(); j++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestLGC.C:547:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<snd_inds[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ExtrapolationPoleLGC.C: In function ‘void ESMCI::MeshAddPole(ESMCI::Mesh&, ESMCI::UInt, ESMCI::UInt, ESMCI::IWeights&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ExtrapolationPoleLGC.C:382:16: warning: format ‘%d’ expects argument of type ‘int’, but argument 2 has type ‘ESMCI::MeshObj::id_type’ {aka ‘long int’} [-Wformat=]
         printf("elem.id=%d pole_side=%d\n",elem.get_id(),pole_side);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C: In function ‘void ESMCI::_create_pointlist_of_points_not_in_wmat(ESMCI::PointList*, ESMCI::WMat&, ESMCI::PointList**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:531:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:536:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:555:40: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     while ((wi != we) && (wi->first.id < id)) {
                           ~~~~~~~~~~~~~^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:560:22: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
     if (wi->first.id != id) {
         ~~~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C: In function ‘void ESMCI::_replace_mapped_with_mapped_extrap(ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:579:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
      for (int i = 0; i < col.size(); ++i) {
                      ~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_2D_2D_cart_orig(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:94:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:107:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:123:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:152:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C: In function ‘int ESMCI::found_func(void*, void*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C:273:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       for (int i=0; i< mme->num_functions(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C: In function ‘void ESMCI::_dst_merge_creep_wts_into_regrid_wts(ESMCI::Mesh&, ESMCI::WMat&, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:668:21: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
      for (int i=0; i<cw_cols.size(); i++) {
                    ~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:697:25: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
          if (tmp_row.id == id) {
              ~~~~~~~~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_MeshRegrid.C:710:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
        for (int j=0; j<tmp_cols.size(); j++) {
                      ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In member function ‘ESMCI::UInt ESMCI::CreepNode::packed_size()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:172:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::vector<ESMCI::CreepNode*> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int dl=0; dl < donors.size(); dl++) {
                      ~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In member function ‘void ESMCI::CreepNode::pack(ESMCI::UChar*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:215:25: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::vector<ESMCI::CreepNode*> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int dl=0; dl < donors.size(); dl++) {
                      ~~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:222:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<donors[dl].size(); i++) {
                       ~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In member function ‘void ESMCI::CreepNode::add_donor(int, ESMCI::CreepNode*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:286:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::vector<ESMCI::CreepNode*> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (level >= donors.size()) {
           ~~~~~~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:292:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<donors[level].size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C: In function ‘void ESMCI::SearchNearestSrcToDstNPnts(const ESMCI::PointList&, const ESMCI::PointList&, int, int, ESMCI::SearchResult&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:324:12: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   if (sdim != dst_pl.get_coord_dim()) {
       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:335:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:372:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C: In function ‘void ESMCI::ClampPCoords(int, ESMCI::SearchResult&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C:720:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
           for (int i= 0; i<sr->nodes.size(); i++) {
                          ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:280:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:296:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C:752:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
           for (int i= 0; i<sr->nodes.size(); i++) {
                          ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::CreepFill(ESMCI::Mesh&, std::vector<int>&, int, int, ESMCI::WMat&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:351:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<valid_gids.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C:781:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
           for (int i= 0; i<sr->nodes.size(); i++) {
                          ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_2D_2D_cart_src_pnts(int, double*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:438:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:470:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C: In function ‘void ESMCI::OctSearch(const ESMCI::Mesh&, ESMCI::PointList&, ESMCI::MAP_TYPE, ESMCI::UInt, int, ESMCI::SearchResult&, bool, ESMCI::WMat&, double, std::vector<int>*, ESMCI::OTree*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Search.C:825:12: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   if (sdim != dst_pl.get_coord_dim()) {
       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C: In function ‘void ESMCI::ParSearchNearestSrcToDstNPnts(const ESMCI::PointList&, const ESMCI::PointList&, int, int, ESMCI::SearchResult&, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:507:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < num_nodes_to_search; ++p) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_2D_2D_cart(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:691:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:703:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:550:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt p = 0; p < dst_size; ++p) {
                    ~~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:606:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<proc_lists[i].size(); j++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:817:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:843:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:674:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<snd_inds[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C: In function ‘void ESMCI::ParSearchNearestDstToSrc(const ESMCI::Mesh&, const ESMCI::Mesh&, int, ESMCI::SearchResult&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:520:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i<src_nlist.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_2D_3D_sph_orig(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:937:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:951:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:565:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<src_nlist.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:969:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:566:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<proc_lists[i].size(); j++) {
                     ~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:998:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:638:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<snd_inds[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1139:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1155:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestNPntsLGC.C:830:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CommDataBack>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<rcv_results_array[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_make_nbr_elems_cntrclk_2D_2D_cart(double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:164:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int n=0; n<nbrs->size(); n++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:171:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       if (elem_id > max_nbr_id) {
           ~~~~~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_2D_3D_sph_src_pnts(int, double*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1287:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1319:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:203:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int n=0; n<nbrs->size(); n++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_2D_3D_sph(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1549:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1561:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:752:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i< rcv_pets.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:773:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i< rcv_pets.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:775:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CommData>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int j=0; j<rcv_results[i].size(); j++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1686:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:1712:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_SearchNearestDToSLGC.C:836:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i<src_nlist.size(); i++) {
                 ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C: In function ‘void ESMCI::calc_1st_order_weights_3D_3D_cart(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<double>*, ESMCI::Mesh*, std::vector<ESMCI::sintd_node*>*, std::vector<ESMCI::sintd_cell*>*, ESMCI::interp_mapp, Zoltan_Struct*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:2142:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:2158:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<dst_elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:2178:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:2252:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_ConserveInterp.C:2267:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<dst_elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:391:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<creep_levels[l-1].size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_calc_centroid_from_sm_cells_2D_2D_cart(std::vector<ESMCI::SM_CELL>*, double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:228:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::SM_CELL>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sm_cells->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_WMat.C: In member function ‘void ESMCI::WMat::InsertRowMerge(const ESMCI::WMat::Entry&, const std::vector<ESMCI::WMat::Entry>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_WMat.C:278:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=1; i<tmp_cols.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘bool ESMCI::_set_grad_info_using_greens_2D_2D_cart(double*, double*, std::vector<ESMCI::NBR_ELEM>*, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:260:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:274:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:287:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:324:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_convert_creep_levels_to_weights(int, std::vector<ESMCI::CreepNode*>*, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:546:18: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   for (int i=0; i<creep_levels[1].size(); i++) {
                 ~^~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:568:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<creep_levels[l].size(); i++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_set_grad_info_to_0_2D_2D_cart(double*, double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:350:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_calc_donor_weights_from_CreepNode(ESMCI::CreepNode*, std::vector<ESMCI::WMat::Entry>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:750:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int d=0; d<cnode->donors[dl].size(); d++) {
                   ~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_debug_calc_gradient_2D_2D_cart(double*, double*, std::vector<ESMCI::NBR_ELEM>*, double (*)(double*), double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:373:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int n=0; n<nbrs->size(); n++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_convert_creep_levels_to_dst_status(int, std::vector<ESMCI::CreepNode*>*, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:778:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<creep_levels[l].size(); i++) {
                     ~^~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_replace_src_ids_in_cols_with_their_weights(std::vector<ESMCI::WMat::Entry>&, ESMCI::WMat&, std::vector<ESMCI::WMat::Entry>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:810:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<cols.size(); i++) {
                   ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘bool ESMCI::_is_src_cntr_in_nbr_poly_2D_2D_cart(double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:407:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:830:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int j=0; j<tmp_cols.size(); j++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_get_node_nbrs_in_elem(ESMCI::MeshObj*, ESMCI::MeshObj*, ESMCI::MeshObj**, ESMCI::MeshObj**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:851:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const UInt’ {aka ‘const unsigned int’} [-Wsign-compare]
    for (int s = 0; s < topo->num_nodes; s++) {
                    ~~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::calc_2nd_order_weights_2D_2D_cart(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<ESMCI::HC_WGHT>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<ESMCI::SM_CELL>*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:559:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::SM_CELL>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sm_cells->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:874:16: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
    if (node_ind==topo->num_nodes-1) {
        ~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_recursively_add_CreepNode_to_snd_lists(ESMCI::CreepNode*, std::vector<unsigned int>&, std::vector<ESMCI::CreepNode*>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:886:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<unsigned int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int p=0; p<shared_procs.size(); p++) {
                   ~^~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:891:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::vector<ESMCI::CreepNode*> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int dl=0; dl<cnode->donors.size(); dl++) {
                    ~~^~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:892:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int d=0; d<cnode->donors[dl].size(); d++) {
                     ~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_propagate_level_to_other_procs(ESMCI::Mesh&, std::vector<ESMCI::CreepNode*>&, std::map<int, ESMCI::CreepNode>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:915:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<level.size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:975:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<snd_to_procs[p].size(); i++) {
                       ~^~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:593:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int n=0; n<nbrs->size(); n++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C: In function ‘void ESMCI::_write_level(const char*, ESMCI::Mesh&, std::vector<ESMCI::CreepNode*>&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_CreepFill.C:1081:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::CreepNode*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<level.size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_make_nbr_elems_cntrclk(double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:743:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int n=0; n<nbrs->size(); n++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:750:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
       if (elem_id > max_nbr_id) {
           ~~~~~~~~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:787:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int n=0; n<nbrs->size(); n++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_calc_centroid_from_sm_cells(std::vector<ESMCI::SM_CELL>*, double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:812:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::SM_CELL>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sm_cells->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘bool ESMCI::_set_grad_info_using_greens(double*, double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:844:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:886:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:899:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:941:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_set_grad_info_to_0(double*, double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:1071:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::_debug_calc_gradient(double*, double*, std::vector<ESMCI::NBR_ELEM>*, double (*)(double*), double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:1095:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int n=0; n<nbrs->size(); n++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘bool ESMCI::_is_src_cntr_in_nbr_poly_2D_3D_sph(double*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:1131:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<nbrs->size(); i++) {
                   ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C: In function ‘void ESMCI::calc_2nd_order_weights_2D_3D_sph(const ESMCI::MeshObj*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, std::vector<const ESMCI::MeshObj*>, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, ESMCI::MEField<ESMCI::_field>*, double*, std::vector<int>*, std::vector<ESMCI::HC_WGHT>*, std::vector<double>*, std::vector<double>*, std::vector<int>*, std::vector<double>*, std::vector<double>*, std::vector<ESMCI::SM_CELL>*, std::vector<ESMCI::NBR_ELEM>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:1305:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::SM_CELL>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sm_cells->size(); i++) {
                   ~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Conserve2ndInterp.C:1339:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::NBR_ELEM>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int n=0; n<nbrs->size(); n++) {
                     ~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In constructor ‘ESMCI::dof_add_col::dof_add_col(std::vector<ESMCI::WMat::Entry>&, ESMCI::UInt, double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:640:6: warning: ‘ESMCI::dof_add_col::fdim’ will be initialized after [-Wreorder]
 UInt fdim;
      ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:639:9: warning:   ‘double* ESMCI::dof_add_col::sens’ [-Wreorder]
 double *sens;
         ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:614:1: warning:   when initialized here [-Wreorder]
 dof_add_col(std::vector<IWeights::Entry> &_col, UInt _fdim, double *_sens) :
 ^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::calc_2nd_order_conserve_mat_serial_2D_3D_sph(ESMCI::Mesh&, ESMCI::Mesh&, ESMCI::Mesh*, ESMCI::SearchResult&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&, Zoltan_Struct*, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:828:25: warning: comparison of integer expressions of different signedness: ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (sr.elems.size() > max_num_dst_elems) max_num_dst_elems=sr.elems.size();
         ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:903:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:916:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:929:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:956:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:995:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::HC_WGHT>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<wgts.size(); i++) {
                     ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1012:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::HC_WGHT>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<wgts.size(); i++) {
                   ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1033:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1052:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1070:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::calc_2nd_order_conserve_mat_serial_2D_2D_cart(ESMCI::Mesh&, ESMCI::Mesh&, ESMCI::Mesh*, ESMCI::SearchResult&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&, Zoltan_Struct*, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1146:25: warning: comparison of integer expressions of different signedness: ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (sr.elems.size() > max_num_dst_elems) max_num_dst_elems=sr.elems.size();
         ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1221:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1234:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1247:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1274:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1313:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::HC_WGHT>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<wgts.size(); i++) {
                     ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1330:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::HC_WGHT>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<wgts.size(); i++) {
                   ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1351:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1370:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1388:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::calc_conserve_mat_serial_2D_2D_cart(ESMCI::Mesh&, ESMCI::Mesh&, ESMCI::Mesh*, ESMCI::SearchResult&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&, Zoltan_Struct*, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1541:25: warning: comparison of integer expressions of different signedness: ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (sr.elems.size() > max_num_dst_elems) max_num_dst_elems=sr.elems.size();
         ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1597:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1607:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1620:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1639:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1656:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1680:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1698:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1724:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::calc_conserve_mat_serial_2D_3D_sph(ESMCI::Mesh&, ESMCI::Mesh&, ESMCI::Mesh*, ESMCI::SearchResult&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&, Zoltan_Struct*, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1827:25: warning: comparison of integer expressions of different signedness: ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (sr.elems.size() > max_num_dst_elems) max_num_dst_elems=sr.elems.size();
         ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1882:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1892:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1905:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1925:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1943:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1967:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:1986:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2012:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
        for (int i=0; i<sr.elems.size(); i++) {
                      ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::calc_conserve_mat_serial_3D_3D_cart(ESMCI::Mesh&, ESMCI::Mesh&, ESMCI::Mesh*, ESMCI::SearchResult&, ESMCI::IWeights&, ESMCI::IWeights&, ESMCI::IWeights&, Zoltan_Struct*, bool, ESMCI::WMat&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2134:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2144:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2157:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<sr.elems.size(); i++) {
                       ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2177:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2195:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2218:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2237:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.elems.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2263:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<const ESMCI::MeshObj*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.elems.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::calc_nearest_npnts_mat_serial(ESMCI::PointList*, ESMCI::PointList*, ESMC_R8, ESMCI::SearchResult&, ESMCI::IWeights&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2455:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<sr.nodes.size(); i++) {
                   ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2478:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.nodes.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2511:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Search_node_result>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       for (int i=0; i<sr.nodes.size(); i++) {
                     ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2541:20: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::WMat::Entry>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for (int i=0; i<cols.size(); i++) {
                   ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In function ‘void ESMCI::mat_point_serial_transfer(ESMCI::MEField<ESMCI::_field>&, ESMCI::SearchResult&, ESMCI::IWeights&, ESMCI::PointList*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2603:26: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI::UInt’ {aka ‘unsigned int’} [-Wsign-compare]
     if (dstpointlist_dim != sfield.dim())
         ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:12:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h: In constructor ‘ESMCI::Interp::Interp(ESMCI::Mesh*, ESMCI::PointList*, ESMCI::Mesh*, ESMCI::PointList*, ESMCI::Mesh*, bool, int, bool, ESMCI::WMat&, ESMCI::MAP_TYPE, int, int, ESMC_R8)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:207:14: warning: ‘ESMCI::Interp::dstpointlist’ will be initialized after [-Wreorder]
   PointList *dstpointlist;
              ^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:205:14: warning:   ‘ESMCI::PointList* ESMCI::Interp::srcpointlist’ [-Wreorder]
   PointList *srcpointlist;
              ^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:2715:1: warning:   when initialized here [-Wreorder]
 Interp::Interp(Mesh *src, PointList *srcplist, Mesh *dest, PointList *dstplist, Mesh *midmesh,
 ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In member function ‘void ESMCI::Interp::interpL2csrvM_serial(const ESMCI::IWeights&, ESMCI::IWeights*, const ESMCI::MEField<ESMCI::_field>*, const ESMCI::MEField<ESMCI::_field>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:3271:29: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
         if ((wi2->first).id == rowT) {
             ~~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:3275:29: warning: comparison of integer expressions of different signedness: ‘ESMCI::WMat::Entry::id_type’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
             if(_col2[c2].id == colT) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C: In member function ‘void ESMCI::Interp::interpL2csrvM_parallel(ESMCI::IWeights&, ESMCI::IWeights*, const ESMCI::MEField<ESMCI::_field>*, const ESMCI::MEField<ESMCI::_field>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:3361:29: warning: comparison of integer expressions of different signedness: ‘const id_type’ {aka ‘const unsigned int’} and ‘int’ [-Wsign-compare]
         if ((wi2->first).id == rowT) {
             ~~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Regridding/ESMCI_Interp.C:3365:29: warning: comparison of integer expressions of different signedness: ‘ESMCI::WMat::Entry::id_type’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
             if(_col2[c2].id == colT) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c: In function ‘int read_chaco_file(int, int, PROB_INFO_PTR, PARIO_INFO_PTR, MESH_INFO_PTR)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c:105:22: warning: ‘%s’ directive writing up to 4103 bytes into a region of size 211 [-Wformat-overflow=]
       sprintf(cmesg, "warning:  Could not open Chaco geometry file %s; "
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               "no geometry data will be read",
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               chaco_fname);
               ~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c:105:14: note: ‘sprintf’ output between 77 and 4180 bytes into a destination of size 256
       sprintf(cmesg, "warning:  Could not open Chaco geometry file %s; "
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               "no geometry data will be read",
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               chaco_fname);
               ~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c:123:24: warning: ‘%s’ directive writing up to 4103 bytes into a region of size 211 [-Wformat-overflow=]
         sprintf(cmesg, "Error:  Could not open Chaco assignment file %s; "
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 "initial distribution cannot be read",
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 chaco_fname);
                 ~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c:123:16: note: ‘sprintf’ output between 83 and 4186 bytes into a destination of size 256
         sprintf(cmesg, "Error:  Could not open Chaco assignment file %s; "
         ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 "initial distribution cannot be read",
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 chaco_fname);
                 ~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c:86:20: warning: ‘%s’ directive writing up to 4103 bytes into a region of size 216 [-Wformat-overflow=]
     sprintf(cmesg, "fatal:  Could not open Chaco graph file %s",
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             chaco_fname);
             ~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_chaco_io.c:86:12: note: ‘sprintf’ output between 41 and 4144 bytes into a destination of size 256
     sprintf(cmesg, "fatal:  Could not open Chaco graph file %s",
     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             chaco_fname);
             ~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c: In function ‘int get_elem_info(int, E_Type, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:372:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:388:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:407:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:423:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:496:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:511:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:530:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:545:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:699:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:714:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:733:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:748:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:767:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
       switch (sid)
       ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_elem.c:783:5: note: here
     default:
     ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_random_io.c: In function ‘int create_random_input(int, int, PROB_INFO_PTR, PARIO_INFO_PTR, MESH_INFO_PTR)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_random_io.c:100:25: warning: ‘%s’ directive writing up to 4096 bytes into a region of size 256 [-Wformat-overflow=]
       sprintf(filename, "%s.graph", pio_info->pexo_fname);
                         ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_random_io.c:100:14: note: ‘sprintf’ output between 7 and 4103 bytes into a destination of size 256
       sprintf(filename, "%s.graph", pio_info->pexo_fname);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_random_io.c:102:25: warning: ‘%s’ directive writing up to 4096 bytes into a region of size 256 [-Wformat-overflow=]
       sprintf(filename, "%s.coords", pio_info->pexo_fname);
                         ^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_random_io.c:102:14: note: ‘sprintf’ output between 8 and 4104 bytes into a destination of size 256
       sprintf(filename, "%s.coords", pio_info->pexo_fname);
       ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_input.c: In function ‘int read_cmd_file(const char*, PROB_INFO_PTR, PARIO_INFO_PTR, UNDEFINED_INFO_PTR)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_input.c:474:13: warning: ‘%s’ directive writing up to 4096 bytes into a region of size 155 [-Wformat-overflow=]
             "fatal error, too many unrecognized commands: %s\n", line);
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_input.c:473:19: note: ‘sprintf’ output between 47 and 4143 bytes into a destination of size 200
           sprintf (buffer,
           ~~~~~~~~^~~~~~~~
             "fatal error, too many unrecognized commands: %s\n", line);
             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/hsfc_box_assign.c: In function ‘double next_query_2d(ZZ*, double*, double*, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/hsfc_box_assign.c:333:34: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
          if  (prune && (quadrant > startbits))
                         ~~~~~~~~~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/hsfc_box_assign.c: In function ‘double next_query_3d(ZZ*, double*, double*, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/hsfc_box_assign.c:482:34: warning: comparison of integer expressions of different signedness: ‘int’ and ‘unsigned int’ [-Wsign-compare]
          if  (prune && (quadrant > startbits))
                         ~~~~~~~~~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_loadbal.c: In function ‘int setup_zoltan(Zoltan_Struct*, int, PROB_INFO_PTR, MESH_INFO_PTR)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_loadbal.c:123:15: warning: ‘%s’ directive writing up to 127 bytes into a region of size 72 [-Wformat-overflow=]
               "fatal: error in Zoltan_Set_Param when setting parameter %s\n",
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/dr_loadbal.c:122:14: note: ‘sprintf’ output between 58 and 185 bytes into a destination of size 128
       sprintf(errmsg,
       ~~~~~~~^~~~~~~~
               "fatal: error in Zoltan_Set_Param when setting parameter %s\n",
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               prob->params[i].Name);
               ~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_build_calls.c: In function ‘int distribute_edges(ZZ*, int*, int*, ZOLTAN_ID_TYPE**, ZOLTAN_ID_TYPE**, int**, ZOLTAN_ID_TYPE**, int, int, char*, int, void*, float**)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_build_calls.c:564:16: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} [-Wsign-compare]
     for (i=0; i< egid[0]; i++) {   /* former number of edges */
               ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_build_calls.c:588:28: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} [-Wsign-compare]
       for (i=0, v=0, e=0; i< egid[0]; i++) {
                           ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_build_calls.c:629:16: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} [-Wsign-compare]
     for (i=0; i< egid[0]; i++) {
               ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_rdivide.c: In function ‘int split_hypergraph(int**, HGraph*, HGraph*, Partition, int, ZZ*, double*, double*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_rdivide.c:622:7: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
       for (i = ohg->hindex[edge]; i < ohg->hindex[edge+1]; ++i)
       ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_rdivide.c:627:9: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
         if (nhg->ewgt)
         ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_serialpartition.c: In function ‘int pick_best(ZZ*, PHGPartParams*, PHGComm*, HGraph*, int, int, int*, float*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_serialpartition.c:967:3: warning: this ‘else’ clause does not guard... [-Wmisleading-indentation]
   else
   ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_serialpartition.c:970:5: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘else’
     if (err < 0) {
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_Vcycle.c: In function ‘double Zoltan_PHG_Compute_NetCut(PHGComm*, HGraph*, Partition, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_Vcycle.c:545:8: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
        for (++j; j < hg->hindex[i+1]  &&  part[hg->hvertex[j]] == netpart[i]; ++j);
        ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_Vcycle.c:546:10: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
          if (j != hg->hindex[i+1])
          ^~
In file included from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_comm.h:16,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_util.h:18,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg.h:21,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_Vcycle.c:14:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_Vcycle.c: In function ‘double Zoltan_PHG_Compute_ConCut(PHGComm*, HGraph*, Partition, int, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_const.h:54:39: warning: comparison of integer expressions of different signedness: ‘long unsigned int’ and ‘int’ [-Wsign-compare]
 #define MIN(A,B)                (((A) < (B)) ? (A) : (B))
                                   ~~~~^~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/phg_Vcycle.c:603:17: note: in expansion of macro ‘MIN’
         nEdge = MIN(MAXMEMORYALLOC / (2*sizeof(int)*p), hg->nEdge);
                 ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c: In function ‘int Zoltan_Generate_Files(ZZ*, const char*, int, int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c:200:31: warning: comparison of integer expressions of different signedness: ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         if (edgeIds[i*lenGID] < minid) minid = edgeIds[i*lenGID];
             ~~~~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c:201:31: warning: comparison of integer expressions of different signedness: ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         if (edgeIds[i*lenGID] > maxid) maxid = edgeIds[i*lenGID];
             ~~~~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c:208:34: warning: comparison of integer expressions of different signedness: ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         if (global_ids[i*lenGID] < minid) minid = global_ids[i*lenGID];
             ~~~~~~~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c:209:34: warning: comparison of integer expressions of different signedness: ‘ZOLTAN_ID_TYPE’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
         if (global_ids[i*lenGID] > maxid) maxid = global_ids[i*lenGID];
             ~~~~~~~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c: In function ‘int fan_in_edge_global_ids(ZZ*, int, ZOLTAN_ID_PTR)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Zoltan/zz_gen_files.c:673:22: warning: comparison of integer expressions of different signedness: ‘int’ and ‘long unsigned int’ [-Wsign-compare]
   for (nbits=0; nbits<(sizeof(int)*8); nbits++){
                 ~~~~~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dbdsqr.F90:393:13:

          IF( SMINOA.EQ.ZERO ) &
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dbdsqr.F90:399:16:

             IF( SMINOA.EQ.ZERO ) &
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dbdsqr.F90:609:10:

       IF( SHIFT.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dbdsqr.F90:843:13:

          IF( E( I ).NE.ZERO ) &
             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlascl.F90:205:15:

       ELSE IF( CFROM.EQ.ZERO .OR. DISNAN(CFROM) ) THEN
               1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlascl.F90:250:10:

       IF( CFROM1.EQ.CFROMC ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlascl.F90:258:13:

          IF( CTO1.EQ.CTOC ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlascl.F90:264:52:

          ELSE IF( ABS( CFROM1 ).GT.ABS( CTOC ) .AND. CTOC.NE.ZERO ) THEN
                                                    1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlassq.F90:137:16:

             IF( X( IX ).NE.ZERO ) THEN
                1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlalsd.F90:258:13:

          IF( D( 1 ).EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlalsd.F90:298:10:

       IF( ORGNRM.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarf.F90:165:10:

       IF( TAU.NE.ZERO ) THEN
          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarf.F90:179:35:

          DO WHILE( LASTV.GT.0 .AND. V( I ).EQ.ZERO )
                                   1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq1.F90:174:10:

       IF( SIGMX.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasd4.F90:352:13:

          IF( C.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasd4.F90:648:16:

             IF( C.EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasd4.F90:649:19:

                IF( A.EQ.ZERO ) THEN
                   1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasd4.F90:815:19:

                IF( C.EQ.ZERO ) THEN
                   1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasd4.F90:816:22:

                   IF( A.EQ.ZERO ) THEN
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasv2.F90:206:10:

       IF( GA.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasv2.F90:242:16:

             IF( D.EQ.FA ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasv2.F90:267:16:

             IF( L.EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasv2.F90:281:16:

             IF( MM.EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasv2.F90:285:19:

                IF( L.EQ.ZERO ) THEN
                   1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlamch.F90:104:10:

       IF( ONE.EQ.RND ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarfg.F90:152:10:

       IF( XNORM.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq2.F90:251:10:

       IF( E.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq2.F90:264:10:

       IF( TRACE.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:118:10:

       IF( NEGZRO.NE.ZERO ) THEN
          1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:130:10:

       IF( NEWZRO.NE.ZERO ) THEN
          1
Warning: Inequality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:173:10:

       IF( NAN1.EQ.NAN1 ) THEN
          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:178:10:

       IF( NAN2.EQ.NAN2 ) THEN
          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:183:10:

       IF( NAN3.EQ.NAN3 ) THEN
          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:188:10:

       IF( NAN4.EQ.NAN4 ) THEN
          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:193:10:

       IF( NAN5.EQ.NAN5 ) THEN
          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/ieeeck.F90:198:10:

       IF( NAN6.EQ.NAN6 ) THEN
          1
Warning: Equality comparison for REAL(4) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarft.F90:210:16:

             IF( TAU( I ).EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarft.F90:226:25:

                      IF( V( LASTV, I ).NE.ZERO ) EXIT
                         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarft.F90:238:25:

                      IF( V( I, LASTV ).NE.ZERO ) EXIT
                         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarft.F90:265:16:

             IF( TAU( I ).EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarft.F90:282:28:

                         IF( V( LASTV, I ).NE.ZERO ) EXIT
                            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarft.F90:298:28:

                         IF( V( I, LASTV ).NE.ZERO ) EXIT
                            1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq3.F90:386:13:

          IF( TAU.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/iladlc.F90:108:35:

       ELSE IF( A(1, N).NE.ZERO .OR. A(M, N).NE.ZERO ) THEN
                                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/iladlc.F90:108:15:

       ELSE IF( A(1, N).NE.ZERO .OR. A(M, N).NE.ZERO ) THEN
               1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/iladlc.F90:114:19:

                IF( A(I, ILADLC).NE.ZERO ) RETURN
                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlartg.F90:148:10:

       IF( G.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlartg.F90:152:15:

       ELSE IF( F.EQ.ZERO ) THEN
               1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:202:28:

          IF( DMIN.EQ.DN .OR. DMIN.EQ.DN1 ) THEN
                            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:202:13:

          IF( DMIN.EQ.DN .OR. DMIN.EQ.DN1 ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:210:32:

             IF( DMIN.EQ.DN .AND. DMIN1.EQ.DN1 ) THEN
                                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:210:16:

             IF( DMIN.EQ.DN .AND. DMIN1.EQ.DN1 ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:235:19:

                IF( DMIN.EQ.DN ) THEN
                   1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:259:22:

                   IF( B2.EQ.ZERO ) &
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:277:18:

          ELSE IF( DMIN.EQ.DN2 ) THEN
                  1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:300:22:

                   IF( B2.EQ.ZERO ) &
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:335:31:

          IF( DMIN1.EQ.DN1 .AND. DMIN2.EQ.DN2 ) THEN
                               1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:335:13:

          IF( DMIN1.EQ.DN1 .AND. DMIN2.EQ.DN2 ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:345:16:

             IF( B2.EQ.ZERO ) &
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:371:16:

             IF( DMIN1.EQ.DN1 ) &
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:382:13:

          IF( DMIN2.EQ.DN2 .AND. TWO*Z( NN-5 ).LT.Z( NN-7 ) ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq4.F90:389:16:

             IF( B2.EQ.ZERO ) &
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/iladlr.F90:108:35:

       ELSE IF( A(M, 1).NE.ZERO .OR. A(M, N).NE.ZERO ) THEN
                                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/iladlr.F90:108:15:

       ELSE IF( A(M, 1).NE.ZERO .OR. A(M, N).NE.ZERO ) THEN
               1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/iladlr.F90:115:23:

             DO WHILE ((A(I,J).NE.ZERO).AND.(I.GE.1))
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dgelsd.F90:403:15:

       ELSE IF( ANRM.EQ.ZERO ) THEN
               1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaed6.F90:220:13:

          IF( C.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaed6.F90:229:46:

          IF( D(1).EQ.TAU .OR. D(2).EQ.TAU .OR. D(3).EQ.TAU ) THEN
                                              1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaed6.F90:229:29:

          IF( D(1).EQ.TAU .OR. D(2).EQ.TAU .OR. D(3).EQ.TAU ) THEN
                             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaed6.F90:229:13:

          IF( D(1).EQ.TAU .OR. D(2).EQ.TAU .OR. D(3).EQ.TAU ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaed6.F90:354:13:

          IF( C.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dgelsy.F90:330:15:

       ELSE IF( ANRM.EQ.ZERO ) THEN
               1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dgelsy.F90:371:10:

       IF( ABS( A( 1, 1 ) ).EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaic1.F90:185:13:

          IF( SEST.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaic1.F90:187:16:

             IF( S1.EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaic1.F90:268:13:

          IF( SEST.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaic1.F90:270:16:

             IF( MAX( ABSGAM, ABSALP ).EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlapy2.F90:96:10:

       IF( Z.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarz.F90:182:13:

          IF( TAU.NE.ZERO ) THEN
             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarz.F90:208:13:

          IF( TAU.NE.ZERO ) THEN
             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq6.F90:167:16:

             IF( Z( J4-2 ).EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq6.F90:187:16:

             IF( Z( J4-3 ).EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq6.F90:213:10:

       IF( Z( J4-2 ).EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasq6.F90:233:10:

       IF( Z( J4-2 ).EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaisnan.F90:90:23:

       DLAISNAN = (DIN1.NE.DIN2)
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaqp2.F90:235:16:

             IF( VN1( J ).NE.ZERO ) THEN
                1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlarzt.F90:234:13:

          IF( TAU( I ).EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:274:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:274:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:286:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:286:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:300:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:300:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:312:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:312:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:326:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:326:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:338:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:338:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:357:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:357:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:369:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:369:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:383:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:383:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:395:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:395:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:409:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:409:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:421:45:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                                             1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlasr.F90:421:23:

                   IF( ( CTEMP.NE.ONE ) .OR. ( STEMP.NE.ZERO ) ) THEN
                       1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:387:44:

                IF( ( Z( J ).EQ.ZERO ) .OR. ( POLES( J, 2 ).EQ.ZERO ) ) &
                                            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:387:20:

                IF( ( Z( J ).EQ.ZERO ) .OR. ( POLES( J, 2 ).EQ.ZERO ) ) &
                    1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:396:23:

      &                ( POLES( I, 2 ).EQ.ZERO ) ) THEN
                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:395:23:

                   IF( ( Z( I ).EQ.ZERO ) .OR. &
                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:406:23:

      &                ( POLES( I, 2 ).EQ.ZERO ) ) THEN
                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:405:23:

                   IF( ( Z( I ).EQ.ZERO ) .OR. &
                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:440:19:

                IF( Z( J ).EQ.ZERO ) THEN
                   1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:447:22:

                   IF( Z( J ).EQ.ZERO ) THEN
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlals0.F90:456:22:

                   IF( Z( J ).EQ.ZERO ) THEN
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlas2.F90:143:10:

       IF( FHMN.EQ.ZERO ) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlas2.F90:145:13:

          IF( FHMX.EQ.ZERO ) THEN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlas2.F90:161:16:

             IF( AU.EQ.ZERO ) THEN
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Lapack/dlaqps.F90:302:19:

                IF( VN1( J ).NE.ZERO ) THEN
                   1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dger.F90:185:39:

       IF ((M.EQ.0) .OR. (N.EQ.0) .OR. (ALPHA.EQ.ZERO)) RETURN
                                       1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dger.F90:197:18:

               IF (Y(JY).NE.ZERO) THEN
                  1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dger.F90:212:18:

               IF (Y(JY).NE.ZERO) THEN
                  1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dnrm2.F90:95:18:

               IF (X(IX).NE.ZERO) THEN
                  1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:259:10:

       IF (ALPHA.EQ.ZERO) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:278:30:

                           IF (B(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:291:30:

                           IF (B(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:343:30:

                           IF (A(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:359:30:

                           IF (A(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:375:30:

                           IF (A(J,K).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:384:26:

                       IF (TEMP.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:393:30:

                           IF (A(J,K).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmm.F90:402:26:

                       IF (TEMP.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmv.F90:233:26:

                       IF (X(J).NE.ZERO) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmv.F90:244:26:

                       IF (X(JX).NE.ZERO) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmv.F90:259:26:

                       IF (X(J).NE.ZERO) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrmv.F90:271:26:

                       IF (X(JX).NE.ZERO) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:220:33:

      &    ((ALPHA.EQ.ZERO).AND. (BETA.EQ.ONE))) RETURN
                                 1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:220:12:

      &    ((ALPHA.EQ.ZERO).AND. (BETA.EQ.ONE))) RETURN
            1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:248:10:

       IF (BETA.NE.ONE) THEN
          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:250:18:

               IF (BETA.EQ.ZERO) THEN
                  1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:261:18:

               IF (BETA.EQ.ZERO) THEN
                  1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:274:10:

       IF (ALPHA.EQ.ZERO) RETURN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:282:22:

                   IF (X(JX).NE.ZERO) THEN
                      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemv.F90:292:22:

                   IF (X(JX).NE.ZERO) THEN
                      1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:276:48:

      &    (((ALPHA.EQ.ZERO).OR. (K.EQ.0)).AND. (BETA.EQ.ONE))) RETURN
                                                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:276:13:

      &    (((ALPHA.EQ.ZERO).OR. (K.EQ.0)).AND. (BETA.EQ.ONE))) RETURN
             1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:280:10:

       IF (ALPHA.EQ.ZERO) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:281:14:

           IF (BETA.EQ.ZERO) THEN
              1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:305:22:

                   IF (BETA.EQ.ZERO) THEN
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:309:27:

                   ELSE IF (BETA.NE.ONE) THEN
                           1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:315:26:

                       IF (B(L,J).NE.ZERO) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:333:26:

                       IF (BETA.EQ.ZERO) THEN
                          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:347:22:

                   IF (BETA.EQ.ZERO) THEN
                      1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:351:27:

                   ELSE IF (BETA.NE.ONE) THEN
                           1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:357:26:

                       IF (B(J,L).NE.ZERO) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dgemm.F90:375:26:

                       IF (BETA.EQ.ZERO) THEN
                          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:263:10:

       IF (ALPHA.EQ.ZERO) THEN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:281:26:

                       IF (ALPHA.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:287:30:

                           IF (B(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:297:26:

                       IF (ALPHA.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:303:30:

                           IF (B(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:347:26:

                       IF (ALPHA.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:353:30:

                           IF (A(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:368:26:

                       IF (ALPHA.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:374:30:

                           IF (A(K,J).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:401:30:

                           IF (A(J,K).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:408:26:

                       IF (ALPHA.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:423:30:

                           IF (A(J,K).NE.ZERO) THEN
                              1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/dtrsm.F90:430:26:

                       IF (ALPHA.NE.ONE) THEN
                          1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/BLAS/daxpy.F90:78:10:

       IF (DA.EQ.0.0d0) RETURN
          1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/BitPage.cpp: In constructor ‘moab::BitPage::BitPage(int, unsigned char)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/BitPage.cpp:28:22: warning: this statement may fall through [-Wimplicit-fallthrough=]
     case 1: init_val |= (unsigned char)(init_val << 1);
             ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/BitPage.cpp:29:5: note: here
     case 2: init_val |= (unsigned char)(init_val << 2);
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/BitPage.cpp:29:22: warning: this statement may fall through [-Wimplicit-fallthrough=]
     case 2: init_val |= (unsigned char)(init_val << 2);
             ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/BitPage.cpp:30:5: note: here
     case 4: init_val |= (unsigned char)(init_val << 4);
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp: In function ‘bool moab::edge_node_intersect(moab::EntityHandle, const moab::CartVect&, moab::GeomUtil::intersection_type, const std::vector<long unsigned int>&, const std::vector<int>&, const moab::Interface*, std::vector<long unsigned int>*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:65:41: warning: enum constant in boolean context [-Wint-in-bool-context]
   if(MB_SUCCESS!=rval || 3!=len) return MB_FAILURE;
                                         ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:84:45: warning: enum constant in boolean context [-Wint-in-bool-context]
       if(MB_SUCCESS!=rval || 3!=len) return MB_FAILURE;
                                             ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:93:14: warning: enum constant in boolean context [-Wint-in-bool-context]
       return MB_FAILURE;
              ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:115:45: warning: enum constant in boolean context [-Wint-in-bool-context]
       if(MB_SUCCESS!=rval || 3!=len) return MB_FAILURE;
                                             ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:137:12: warning: enum constant in boolean context [-Wint-in-bool-context]
     return MB_FAILURE;
            ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:152:43: warning: enum constant in boolean context [-Wint-in-bool-context]
     if(MB_SUCCESS!=rval || 3!=len) return MB_FAILURE;
                                           ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/OrientedBoxTreeTool.cpp:155:35: warning: enum constant in boolean context [-Wint-in-bool-context]
     if(MB_SUCCESS != rval) return MB_FAILURE;
                                   ^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/HigherOrderFactory.cpp: In member function ‘moab::ErrorCode moab::HigherOrderFactory::convert_sequence(moab::ElementSequence*, moab::EntityHandle, moab::EntityHandle, bool, bool, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/HigherOrderFactory.cpp:149:22: warning: this statement may fall through [-Wimplicit-fallthrough=]
       mid_face_nodes = false;
       ~~~~~~~~~~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/HigherOrderFactory.cpp:150:5: note: here
     case MBTRI:
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/ScdElementData.cpp: In static member function ‘static moab::EntityID moab::ScdElementData::calc_num_entities(moab::EntityHandle, int, int, int, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/ScdElementData.cpp:34:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
     case 3: result *= krange;
             ~~~~~~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/ScdElementData.cpp:35:5: note: here
     case 2: result *= (is_periodic && is_periodic[1] ? (jrange+1) : jrange);
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/ScdElementData.cpp:35:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
     case 2: result *= (is_periodic && is_periodic[1] ? (jrange+1) : jrange);
             ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/ScdElementData.cpp:36:5: note: here
     case 1: result *= (is_periodic && is_periodic[0] ? (irange+1) : irange);
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/SweptElementData.cpp: In static member function ‘static moab::EntityID moab::SweptElementData::calc_num_entities(moab::EntityHandle, int, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/SweptElementData.cpp:33:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
     case 3: result *= krange;
             ~~~~~~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/SweptElementData.cpp:34:5: note: here
     case 2: result *= jrange;
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/SweptElementData.cpp:34:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
     case 2: result *= jrange;
             ~~~~~~~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/SweptElementData.cpp:35:5: note: here
     case 1: result *= irange;
     ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp: In constructor ‘moab::AdjSides<CORNERS>::Side::Side(const EntityHandle*, int, moab::EntityHandle, short unsigned int) [with unsigned int CORNERS = 2]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp:1214:17: warning: this statement may fall through [-Wimplicit-fallthrough=]
         case 3: handles[1] = array[(idx+2)%CORNERS];
                 ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp:1215:9: note: here
         case 2: handles[0] = array[(idx+1)%CORNERS]; break;
         ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp: In constructor ‘moab::AdjSides<CORNERS>::Side::Side(const EntityHandle*, int, moab::EntityHandle, short unsigned int) [with unsigned int CORNERS = 3]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp:1214:17: warning: this statement may fall through [-Wimplicit-fallthrough=]
         case 3: handles[1] = array[(idx+2)%CORNERS];
                 ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp:1215:9: note: here
         case 2: handles[0] = array[(idx+1)%CORNERS]; break;
         ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp: In constructor ‘moab::AdjSides<CORNERS>::Side::Side(const EntityHandle*, int, moab::EntityHandle, short unsigned int, const short int*) [with unsigned int CORNERS = 3]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp:1239:17: warning: this statement may fall through [-Wimplicit-fallthrough=]
         case 3: handles[1] = array[indices[(idx+2)%CORNERS]];
                 ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/src/Moab/Skinner.cpp:1240:9: note: here
         case 2: handles[0] = array[indices[(idx+1)%CORNERS]]; break;
         ^~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMC_Mesh.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMCI_Mesh_F.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:5141:9:

       if(area1(i) /= area2(i)) then
         1
Warning: Inequality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:2371:16:

             if (varbuffer(i) == missingvalue) elementMask(i)=0
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:2387:16:

             if (varbuffer(i) == missingvalue) glbNodeMask(i)=0
                1
Warning: Equality comparison for REAL(8) at (1) [-Wcompare-reals]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:5411:0:

                                  ESMF_CONTEXT, rcToReturn=rc)) return
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:4465:0:

 end function ESMF_MeshCreateCubedSphere
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:3658:0:

 end function ESMF_MeshCreateDual
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:3550:0:

 end function ESMF_MeshCreateRedist
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:2905:0:

 end function ESMF_MeshCreateFromScrip
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:2751:0:

 end function ESMF_MeshCreateFromUnstruct
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Mesh/interface/ESMF_Mesh.F90:2074:0:

 end function ESMF_MeshCreateFromFile
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGridGeomBase/src/ESMF_XGridGeomBase.F90:1169:0:

     end function ESMF_XGridGeomBaseDeserialize
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGridGeomBase/src/ESMF_XGridGeomBase.F90:943:0:

 end function ESMF_XGridGeomBaseMatch
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGridGeomBase/src/ESMF_XGridGeomBase.F90:466:0:

     ESMF_INIT_CHECK_DEEP_SHORT(ESMF_MeshGetInit, mesh, rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGridGeomBase/src/ESMF_XGridGeomBase.F90:396:0:

     ESMF_INIT_CHECK_DEEP_SHORT(ESMF_GridGetInit, grid, rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/src/../include/ESMCI_GridToMesh.h:24,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/src/ESMCI_GridToMesh.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C: In function ‘void c_esmc_meshio_(ESMCI::VM**, ESMCI::Grid**, int*, int*, char*, int*, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C:89:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt i = 0; i < *num_arrays; ++i)
                    ~~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C: In function ‘void c_esmc_gridio_(ESMCI::Grid**, int*, int*, char*, int*, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, int*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C:160:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt i = 0; i < *num_arrays; ++i)
                    ~~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C: In function ‘void c_esmc_gridcellio_(ESMCI::Grid**, int*, char*, int*, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI::Array**, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMCI_GridUtil_F.C:210:22: warning: comparison of integer expressions of different signedness: ‘ESMCI::UInt’ {aka ‘unsigned int’} and ‘int’ [-Wsign-compare]
   for (UInt i = 0; i < *num_arrays; ++i)
                    ~~^~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMF_GridUtil.F90:535:0:

     end function ESMF_GridToMeshCell
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GridUtil/interface/ESMF_GridUtil.F90:469:0:

     end function ESMF_GridToMesh
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:2173:6:

       function ESMF_LocStreamCreateFromFile(filename, keywordEnforcer, &
      1
Warning: Return value of function ‘esmf_locstreamcreatefromfile’ at (1) not set [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:4595:0:

      end function ESMF_LocStreamCreatePetList
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:4106:0:

      end function ESMF_LocStreamDeserialize
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:2163:0:

       end function ESMF_LocStreamCreateReg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:2011:0:

       end function ESMF_LocStreamCreateFromNewDG
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:1845:0:

       end function ESMF_LocStreamCreateFromLocal
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:1695:0:

       end function ESMF_LocStreamCreateIrreg
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:1550:0:

       end function ESMF_LocStreamCreateFromDG
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:1391:0:

       end function ESMF_LocStreamCreateByBkgMesh
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/src/ESMF_LocStream.F90:1170:0:

    end function ESMF_LocStreamCreateByBkgGrid
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_DistGrid.h:36,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/interface/ESMCI_LocStream_F.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/interface/../include/ESMCI_LocStream.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/interface/ESMC_LocStream.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/interface/../include/ESMCI_LocStream.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/LocStream/interface/ESMCI_LocStream.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/src/ESMF_XGrid.F90:486:0:

       fp1 = xgrid1%xgtypep
 
Warning: ‘fp1’ may be used uninitialized in this function [-Wmaybe-uninitialized]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/src/ESMF_XGrid.F90:487:0:

       fp2 = xgrid2%xgtypep
 
Warning: ‘fp2’ may be used uninitialized in this function [-Wmaybe-uninitialized]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/src/ESMF_XGridCreate.F90:2245:0:

 end function ESMF_XGridDGOverlay
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/src/ESMF_XGridCreate.F90:1715:0:

 end function ESMF_XGridCreateFromSparseMat
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/src/ESMF_XGridCreate.F90:1229:0:

 end function ESMF_XGridCreate
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/ESMCI_XGrid_F.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/../include/ESMCI_XGrid.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/ESMC_XGrid.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/../include/ESMCI_XGrid.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/ESMCI_XGrid.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/ESMCI_XGrid_F.C: In function ‘void c_esmc_xgridserialize_(int*, int*, int*, int*, int*, char*, int*, int*, ESMC_InquireFlag*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/ESMCI_XGrid_F.C:99:5: warning: this ‘if’ clause does not guard... [-Wmisleading-indentation]
     if (linquireflag != ESMF_INQUIREONLY)
     ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/XGrid/interface/ESMCI_XGrid_F.C:101:7: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘if’
       ptr += sizeof(int);
       ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GeomBase/src/ESMF_GeomBase.F90:1645:0:

       end function ESMF_GeomBaseDeserialize
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GeomBase/src/ESMF_GeomBase.F90:685:0:

     ESMF_INIT_CHECK_DEEP_SHORT(ESMF_XGridGetInit, xgrid, rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GeomBase/src/ESMF_GeomBase.F90:608:0:

     ESMF_INIT_CHECK_DEEP_SHORT(ESMF_LocStreamGetInit, locstream, rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GeomBase/src/ESMF_GeomBase.F90:532:0:

     ESMF_INIT_CHECK_DEEP_SHORT(ESMF_MeshGetInit, mesh, rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/GeomBase/src/ESMF_GeomBase.F90:462:0:

     ESMF_INIT_CHECK_DEEP_SHORT(ESMF_GridGetInit, grid, rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/PointList/src/ESMCI_PointList.C:44:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Grid.h:35,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/PointList/interface/ESMCI_PointList_F.C:22:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/PointList/interface/ESMF_PointList.F90:705:0:

       ESMF_CONTEXT, rcToReturn=rc)) return
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/PointList/interface/ESMF_PointList.F90:656:0:

   end function ESMF_PointListCreateFrmLocStream
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/PointList/interface/ESMF_PointList.F90:355:0:

   end function ESMF_PointListCreateFrmMesh
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/PointList/interface/ESMF_PointList.F90:284:0:

   end function ESMF_PointListCreateFrmGrid
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Regrid/interface/ESMCI_Regrid_F.C:21:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldGetAllocBounds.F90:856:0:

        if(l_g2fm(i) .lt. 0 .and. l_g2fm(i) .gt. arrayrank) then
 
Warning: ‘arrayrank’ may be used uninitialized in this function [-Wmaybe-uninitialized]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33770:0:

  end function ESMF_FieldCreateXGDataPtr7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33712:0:

  end function ESMF_FieldCreateXGDataPtr7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33654:0:

  end function ESMF_FieldCreateXGDataPtr7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33596:0:

  end function ESMF_FieldCreateXGDataPtr7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33538:0:

  end function ESMF_FieldCreateXGDataPtr6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33480:0:

  end function ESMF_FieldCreateXGDataPtr6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33422:0:

  end function ESMF_FieldCreateXGDataPtr6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33364:0:

  end function ESMF_FieldCreateXGDataPtr6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33305:0:

  end function ESMF_FieldCreateXGDataPtr5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33247:0:

  end function ESMF_FieldCreateXGDataPtr5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33188:0:

  end function ESMF_FieldCreateXGDataPtr5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33129:0:

  end function ESMF_FieldCreateXGDataPtr5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33070:0:

  end function ESMF_FieldCreateXGDataPtr4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:33012:0:

  end function ESMF_FieldCreateXGDataPtr4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32953:0:

  end function ESMF_FieldCreateXGDataPtr4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32894:0:

  end function ESMF_FieldCreateXGDataPtr4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32836:0:

  end function ESMF_FieldCreateXGDataPtr3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32778:0:

  end function ESMF_FieldCreateXGDataPtr3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32719:0:

  end function ESMF_FieldCreateXGDataPtr3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32660:0:

  end function ESMF_FieldCreateXGDataPtr3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32602:0:

  end function ESMF_FieldCreateXGDataPtr2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32544:0:

  end function ESMF_FieldCreateXGDataPtr2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32485:0:

  end function ESMF_FieldCreateXGDataPtr2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32426:0:

  end function ESMF_FieldCreateXGDataPtr2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32368:0:

  end function ESMF_FieldCreateXGDataPtr1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32310:0:

  end function ESMF_FieldCreateXGDataPtr1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32251:0:

  end function ESMF_FieldCreateXGDataPtr1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:32192:0:

  end function ESMF_FieldCreateXGDataPtr1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:31220:0:

  end function ESMF_FieldCreateXGData7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:31140:0:

  end function ESMF_FieldCreateXGData7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:31060:0:

  end function ESMF_FieldCreateXGData7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30980:0:

  end function ESMF_FieldCreateXGData7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30900:0:

  end function ESMF_FieldCreateXGData6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30820:0:

  end function ESMF_FieldCreateXGData6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30740:0:

  end function ESMF_FieldCreateXGData6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30660:0:

  end function ESMF_FieldCreateXGData6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30579:0:

  end function ESMF_FieldCreateXGData5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30499:0:

  end function ESMF_FieldCreateXGData5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30418:0:

  end function ESMF_FieldCreateXGData5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30337:0:

  end function ESMF_FieldCreateXGData5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30256:0:

  end function ESMF_FieldCreateXGData4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30176:0:

  end function ESMF_FieldCreateXGData4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30095:0:

  end function ESMF_FieldCreateXGData4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:30014:0:

  end function ESMF_FieldCreateXGData4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29934:0:

  end function ESMF_FieldCreateXGData3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29854:0:

  end function ESMF_FieldCreateXGData3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29773:0:

  end function ESMF_FieldCreateXGData3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29692:0:

  end function ESMF_FieldCreateXGData3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29612:0:

  end function ESMF_FieldCreateXGData2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29532:0:

  end function ESMF_FieldCreateXGData2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29451:0:

  end function ESMF_FieldCreateXGData2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29370:0:

  end function ESMF_FieldCreateXGData2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29290:0:

  end function ESMF_FieldCreateXGData1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29210:0:

  end function ESMF_FieldCreateXGData1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29129:0:

  end function ESMF_FieldCreateXGData1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:29048:0:

  end function ESMF_FieldCreateXGData1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27729:0:

   end function ESMF_FieldCreateXGArray
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27590:0:

   end function ESMF_FieldCreateXGArraySpec
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27457:0:

 end function ESMF_FieldCreateXGTKR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27300:0:

  end function ESMF_FieldCreateMeshDataPtr7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27243:0:

  end function ESMF_FieldCreateMeshDataPtr7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27186:0:

  end function ESMF_FieldCreateMeshDataPtr7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27129:0:

  end function ESMF_FieldCreateMeshDataPtr7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27072:0:

  end function ESMF_FieldCreateMeshDataPtr6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:27015:0:

  end function ESMF_FieldCreateMeshDataPtr6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26958:0:

  end function ESMF_FieldCreateMeshDataPtr6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26901:0:

  end function ESMF_FieldCreateMeshDataPtr6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26843:0:

  end function ESMF_FieldCreateMeshDataPtr5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26786:0:

  end function ESMF_FieldCreateMeshDataPtr5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26728:0:

  end function ESMF_FieldCreateMeshDataPtr5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26670:0:

  end function ESMF_FieldCreateMeshDataPtr5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26612:0:

  end function ESMF_FieldCreateMeshDataPtr4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26555:0:

  end function ESMF_FieldCreateMeshDataPtr4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26497:0:

  end function ESMF_FieldCreateMeshDataPtr4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26439:0:

  end function ESMF_FieldCreateMeshDataPtr4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26382:0:

  end function ESMF_FieldCreateMeshDataPtr3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26325:0:

  end function ESMF_FieldCreateMeshDataPtr3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26267:0:

  end function ESMF_FieldCreateMeshDataPtr3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26209:0:

  end function ESMF_FieldCreateMeshDataPtr3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26152:0:

  end function ESMF_FieldCreateMeshDataPtr2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26095:0:

  end function ESMF_FieldCreateMeshDataPtr2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:26037:0:

  end function ESMF_FieldCreateMeshDataPtr2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:25979:0:

  end function ESMF_FieldCreateMeshDataPtr2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:25922:0:

  end function ESMF_FieldCreateMeshDataPtr1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:25865:0:

  end function ESMF_FieldCreateMeshDataPtr1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:25807:0:

  end function ESMF_FieldCreateMeshDataPtr1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:25749:0:

  end function ESMF_FieldCreateMeshDataPtr1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24794:0:

  end function ESMF_FieldCreateMeshData7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24732:0:

  end function ESMF_FieldCreateMeshData7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24670:0:

  end function ESMF_FieldCreateMeshData7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24608:0:

  end function ESMF_FieldCreateMeshData7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24546:0:

  end function ESMF_FieldCreateMeshData6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24484:0:

  end function ESMF_FieldCreateMeshData6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24422:0:

  end function ESMF_FieldCreateMeshData6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24360:0:

  end function ESMF_FieldCreateMeshData6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24297:0:

  end function ESMF_FieldCreateMeshData5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24235:0:

  end function ESMF_FieldCreateMeshData5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24172:0:

  end function ESMF_FieldCreateMeshData5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24109:0:

  end function ESMF_FieldCreateMeshData5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:24046:0:

  end function ESMF_FieldCreateMeshData4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23984:0:

  end function ESMF_FieldCreateMeshData4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23921:0:

  end function ESMF_FieldCreateMeshData4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23858:0:

  end function ESMF_FieldCreateMeshData4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23796:0:

  end function ESMF_FieldCreateMeshData3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23734:0:

  end function ESMF_FieldCreateMeshData3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23671:0:

  end function ESMF_FieldCreateMeshData3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23608:0:

  end function ESMF_FieldCreateMeshData3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23546:0:

  end function ESMF_FieldCreateMeshData2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23484:0:

  end function ESMF_FieldCreateMeshData2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23421:0:

  end function ESMF_FieldCreateMeshData2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23358:0:

  end function ESMF_FieldCreateMeshData2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23296:0:

  end function ESMF_FieldCreateMeshData1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23234:0:

  end function ESMF_FieldCreateMeshData1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23171:0:

  end function ESMF_FieldCreateMeshData1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:23108:0:

  end function ESMF_FieldCreateMeshData1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:22062:0:

   end function ESMF_FieldCreateMeshArray
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21936:0:

   end function ESMF_FieldCreateMeshArraySpec
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21821:0:

 end function ESMF_FieldCreateMeshTKR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21648:0:

  end function ESMF_FieldCreateLSDataPtr7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21592:0:

  end function ESMF_FieldCreateLSDataPtr7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21536:0:

  end function ESMF_FieldCreateLSDataPtr7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21480:0:

  end function ESMF_FieldCreateLSDataPtr7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21424:0:

  end function ESMF_FieldCreateLSDataPtr6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21368:0:

  end function ESMF_FieldCreateLSDataPtr6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21312:0:

  end function ESMF_FieldCreateLSDataPtr6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21256:0:

  end function ESMF_FieldCreateLSDataPtr6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21199:0:

  end function ESMF_FieldCreateLSDataPtr5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21143:0:

  end function ESMF_FieldCreateLSDataPtr5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21086:0:

  end function ESMF_FieldCreateLSDataPtr5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:21029:0:

  end function ESMF_FieldCreateLSDataPtr5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20972:0:

  end function ESMF_FieldCreateLSDataPtr4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20916:0:

  end function ESMF_FieldCreateLSDataPtr4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20859:0:

  end function ESMF_FieldCreateLSDataPtr4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20802:0:

  end function ESMF_FieldCreateLSDataPtr4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20746:0:

  end function ESMF_FieldCreateLSDataPtr3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20690:0:

  end function ESMF_FieldCreateLSDataPtr3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20633:0:

  end function ESMF_FieldCreateLSDataPtr3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20576:0:

  end function ESMF_FieldCreateLSDataPtr3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20520:0:

  end function ESMF_FieldCreateLSDataPtr2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20464:0:

  end function ESMF_FieldCreateLSDataPtr2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20407:0:

  end function ESMF_FieldCreateLSDataPtr2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20350:0:

  end function ESMF_FieldCreateLSDataPtr2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20294:0:

  end function ESMF_FieldCreateLSDataPtr1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20238:0:

  end function ESMF_FieldCreateLSDataPtr1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20181:0:

  end function ESMF_FieldCreateLSDataPtr1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:20124:0:

  end function ESMF_FieldCreateLSDataPtr1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:19189:0:

  end function ESMF_FieldCreateLSData7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:19128:0:

  end function ESMF_FieldCreateLSData7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:19067:0:

  end function ESMF_FieldCreateLSData7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:19006:0:

  end function ESMF_FieldCreateLSData7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18945:0:

  end function ESMF_FieldCreateLSData6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18884:0:

  end function ESMF_FieldCreateLSData6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18823:0:

  end function ESMF_FieldCreateLSData6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18762:0:

  end function ESMF_FieldCreateLSData6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18700:0:

  end function ESMF_FieldCreateLSData5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18639:0:

  end function ESMF_FieldCreateLSData5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18577:0:

  end function ESMF_FieldCreateLSData5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18515:0:

  end function ESMF_FieldCreateLSData5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18453:0:

  end function ESMF_FieldCreateLSData4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18392:0:

  end function ESMF_FieldCreateLSData4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18330:0:

  end function ESMF_FieldCreateLSData4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18268:0:

  end function ESMF_FieldCreateLSData4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18207:0:

  end function ESMF_FieldCreateLSData3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18146:0:

  end function ESMF_FieldCreateLSData3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18084:0:

  end function ESMF_FieldCreateLSData3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:18022:0:

  end function ESMF_FieldCreateLSData3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17961:0:

  end function ESMF_FieldCreateLSData2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17900:0:

  end function ESMF_FieldCreateLSData2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17838:0:

  end function ESMF_FieldCreateLSData2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17776:0:

  end function ESMF_FieldCreateLSData2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17715:0:

  end function ESMF_FieldCreateLSData1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17654:0:

  end function ESMF_FieldCreateLSData1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17592:0:

  end function ESMF_FieldCreateLSData1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:17530:0:

  end function ESMF_FieldCreateLSData1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:16504:0:

   end function ESMF_FieldCreateLSArray
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:16391:0:

   end function ESMF_FieldCreateLSArraySpec
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:16284:0:

 end function ESMF_FieldCreateLSTKR
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:16152:0:

  end function ESMF_FieldCreateGridDataPtr7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:16053:0:

  end function ESMF_FieldCreateGridDataPtr7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15954:0:

  end function ESMF_FieldCreateGridDataPtr7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15855:0:

  end function ESMF_FieldCreateGridDataPtr7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15756:0:

  end function ESMF_FieldCreateGridDataPtr6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15657:0:

  end function ESMF_FieldCreateGridDataPtr6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15558:0:

  end function ESMF_FieldCreateGridDataPtr6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15459:0:

  end function ESMF_FieldCreateGridDataPtr6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15359:0:

  end function ESMF_FieldCreateGridDataPtr5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15260:0:

  end function ESMF_FieldCreateGridDataPtr5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15160:0:

  end function ESMF_FieldCreateGridDataPtr5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:15060:0:

  end function ESMF_FieldCreateGridDataPtr5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14960:0:

  end function ESMF_FieldCreateGridDataPtr4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14861:0:

  end function ESMF_FieldCreateGridDataPtr4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14761:0:

  end function ESMF_FieldCreateGridDataPtr4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14661:0:

  end function ESMF_FieldCreateGridDataPtr4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14562:0:

  end function ESMF_FieldCreateGridDataPtr3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14463:0:

  end function ESMF_FieldCreateGridDataPtr3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14363:0:

  end function ESMF_FieldCreateGridDataPtr3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14263:0:

  end function ESMF_FieldCreateGridDataPtr3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14164:0:

  end function ESMF_FieldCreateGridDataPtr2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:14065:0:

  end function ESMF_FieldCreateGridDataPtr2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:13965:0:

  end function ESMF_FieldCreateGridDataPtr2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:13865:0:

  end function ESMF_FieldCreateGridDataPtr2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:13766:0:

  end function ESMF_FieldCreateGridDataPtr1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:13667:0:

  end function ESMF_FieldCreateGridDataPtr1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:13567:0:

  end function ESMF_FieldCreateGridDataPtr1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:13467:0:

  end function ESMF_FieldCreateGridDataPtr1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11851:0:

  end function ESMF_FieldCreateGridData7Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11746:0:

  end function ESMF_FieldCreateGridData7Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11641:0:

  end function ESMF_FieldCreateGridData7Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11536:0:

  end function ESMF_FieldCreateGridData7Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11431:0:

  end function ESMF_FieldCreateGridData6Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11326:0:

  end function ESMF_FieldCreateGridData6Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11221:0:

  end function ESMF_FieldCreateGridData6Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11116:0:

  end function ESMF_FieldCreateGridData6Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:11010:0:

  end function ESMF_FieldCreateGridData5Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10905:0:

  end function ESMF_FieldCreateGridData5Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10799:0:

  end function ESMF_FieldCreateGridData5Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10693:0:

  end function ESMF_FieldCreateGridData5Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10587:0:

  end function ESMF_FieldCreateGridData4Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10482:0:

  end function ESMF_FieldCreateGridData4Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10376:0:

  end function ESMF_FieldCreateGridData4Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10270:0:

  end function ESMF_FieldCreateGridData4Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10165:0:

  end function ESMF_FieldCreateGridData3Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:10060:0:

  end function ESMF_FieldCreateGridData3Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9954:0:

  end function ESMF_FieldCreateGridData3Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9848:0:

  end function ESMF_FieldCreateGridData3Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9743:0:

  end function ESMF_FieldCreateGridData2Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9638:0:

  end function ESMF_FieldCreateGridData2Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9532:0:

  end function ESMF_FieldCreateGridData2Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9426:0:

  end function ESMF_FieldCreateGridData2Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9321:0:

  end function ESMF_FieldCreateGridData1Dr8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9216:0:

  end function ESMF_FieldCreateGridData1Dr4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9110:0:

  end function ESMF_FieldCreateGridData1Di8
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:9004:0:

  end function ESMF_FieldCreateGridData1Di4
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:7280:0:

   end function ESMF_FieldCreateGridArray
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:7077:0:

   end function ESMF_FieldCreateGridArraySpec
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/src/ESMF_FieldCreate.F90:6880:0:

 end function ESMF_FieldCreateGridTKR
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/interface/ESMCI_Field_F.C:25:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/interface/../include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/interface/ESMCI_Field.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/interface/../include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Field/interface/ESMC_Field.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_RHandle.h:39,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Field.h:42,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Container/interface/ESMCI_Container_F.C:23:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Container/interface/ESMCI_Container_F.C: In function ‘void esmf_containergetudtbyindex_(ESMCI::Container<std::__cxx11::basic_string<char>, ESMCI::F90ClassHolder>**, const int*, void**, ESMC_ItemOrder_Flag*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Container/interface/ESMCI_Container_F.C:1003:33: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::F90ClassHolder, std::allocator<ESMCI::F90ClassHolder> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if ((index < 0) || (index >= vector.size())){
                           ~~~~~~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Container/interface/ESMCI_Container_F.C: In function ‘void esmf_containergarbagegetudt_(ESMCI::Container<std::__cxx11::basic_string<char>, ESMCI::F90ClassHolder>**, const int*, void**, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Container/interface/ESMCI_Container_F.C:1086:30: warning: comparison of integer expressions of different signedness: ‘const int’ and ‘std::vector<ESMCI::F90ClassHolder, std::allocator<ESMCI::F90ClassHolder> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (*item < 1 || *item > garbage.size()){
                        ~~~~~~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Container/interface/ESMF_Container.F90:464:0:

       ESMF_CONTEXT, rcToReturn=rc)) return
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/FieldBundle/src/ESMF_FieldBundle.F90:18033:0:

   end function ESMF_FieldBundleToAB
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/FieldBundle/src/ESMF_FieldBundle.F90:1080:0:

       ESMF_INIT_CHECK_DEEP(ESMF_FieldGetInit, fieldList(i), rc)
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/FieldBundle/interface/ESMF_FieldBundle_C.F90:47:5:

      bundlep => thebundle
     1
Warning: Pointer at (1) in pointer assignment might outlive the pointer target [-Wtarget-lifetime]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:34:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:29:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:29:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWrite.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteXML.C:29:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_IO_XML.h:46,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteTab.C: In member function ‘int ESMCI::Attribute::AttributeWriteTab(const string&, const string&, const string&, const string&, const string&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteTab.C:110:16: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for (i=0; i<columns; i++) attrLens[i] = 0;
               ~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteTab.C:129:16: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for (i=0; i<columns; i++) {
               ~^~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteTab.C: In member function ‘int ESMCI::Attribute::AttributeWriteTabBuffer(FILE*, int&, const int&, int*, const std::vector<std::__cxx11::basic_string<char> >&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteTab.C:252:33: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             if (attrLens[index] < attrNames.at(index).size())
                 ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C: In member function ‘int ESMCI::Attribute::AttributeUpdate(ESMCI::VM*, const std::vector<int>&, ESMCI::InterArray<int>*, bool)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:113:15: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for(i=0; i<petList->extent[0]; ++i) {
              ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:119:15: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for(i=0; i<petCount; ++i) {
              ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C: In member function ‘int ESMCI::Attribute::AttributeUpdateBufRecv(char*, int, int*, const int&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:375:14: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (i=0; i<attrChange; ++i) {
             ~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:411:14: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (i=0; i<valueChange; ++i) {
             ~^~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:485:14: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (i=0; i<packChange; ++i) {
             ~^~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C: In member function ‘int ESMCI::Attribute::AttributeUpdateComm(ESMCI::VM*, int, int*, char*, char*, const std::vector<int>&, const std::vector<int>&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:1097:16: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for (i=0; i<ceilID; ++i) {
               ~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeUpdate.C:1101:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (indSend < nonroots.size()) {
           ~~~~~~~~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMmodelComp(ESMCI::IO_XML*, const string&, int, bool, std::__cxx11::string) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:432:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for(int i=0; i<linkList.size(); i++) {
                  ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:434:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for(int j=0; j<linkList.at(i)->packList.size(); j++) {
                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMRP(ESMCI::IO_XML*, int) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1304:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for(int i=0; i<packList.size(); i++) {
                  ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMCP(ESMCI::IO_XML*, const string&, const string&, int) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1656:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for(int i=0; i<attpack->attrList.size(); i++) {
                  ~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1669:31: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::__cxx11::basic_string<char> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                 for(int j=0; j<valuevector.size(); j++) {
                              ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1690:31: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::__cxx11::basic_string<char> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                 for(int j=0; j<valuevector.size(); j++) {
                              ~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMCPfield(ESMCI::IO_XML*, const string&, int) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1744:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for(int i=0; i<linkList.size(); i++) {
                  ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1755:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for(int j=0; j<linkList.at(i)->packList.size(); j++) {
                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMcitation(ESMCI::IO_XML*, int) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:1943:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for(int i=0; i<packList.size(); i++) {
                  ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMinput(ESMCI::IO_XML*, const string&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:2446:19: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     for(int i=0; i<linkList.size(); i++) {
                  ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIM.C:2447:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for(int j=0; j<linkList.at(i)->packList.size(); j++) {
                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C: In member function ‘int ESMCI::Attribute::AttributeWriteCIMgrids(ESMCI::IO_XML*, std::__cxx11::string, std::__cxx11::string, int, bool) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:126:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for(int i=0; i<linkList.size(); i++) {
                      ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:138:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             for(int j=0; j<linkList.at(i)->packList.size(); j++) {
                          ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:206:33: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                 for (int i=0;  i<attpack->attrList.size(); ++i) {
                                ~^~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In member function ‘int ESMCI::Attribute::streamAttributeListToJSON(std::vector<ESMCI::Attribute*>, ESMC_Logical, ESMC_Logical, std::__cxx11::string&, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:247:35: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                 for (int i = 0; i < attrVector.size(); i++) {
                                 ~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C: In member function ‘bool ESMCI::Attribute::AttributeWriteCIMgridPresent(std::__cxx11::string) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:332:23: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for(int i=0; i<linkList.size(); i++) {
                      ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:348:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             for(int j=0; j<linkList.at(i)->packList.size(); j++) {
                          ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In member function ‘int ESMCI::Attribute::streamAttributePackToJSON(std::vector<ESMCI::Attribute*>, ESMC_Logical, ESMC_Logical, ESMC_Logical, std::__cxx11::string&, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:340:35: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                 for (int i = 0; i < attrVector.size(); i++) {
                                 ~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In member function ‘int ESMCI::Attribute::streamAttributeLinksToJSON(std::vector<ESMCI::Attribute*>, ESMC_Logical, ESMC_Logical, std::__cxx11::string&, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:380:35: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                 for (int i = 0; i < attrVector.size(); i++) {
                                 ~~^~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C: In member function ‘std::__cxx11::string ESMCI::Attribute::AttributeGetInternalGridInt(std::__cxx11::string) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:612:28: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             for (int i=0; i<attrList.size(); ++i) {
                           ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C: In member function ‘std::__cxx11::string ESMCI::Attribute::AttributeGetInternalGridString(std::__cxx11::string) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteCIMgrids.C:688:28: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
             for (int i=0; i<attrList.size(); ++i) {
                           ~^~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In instantiation of ‘std::__cxx11::string ESMCI::Attribute::attrValuesToString(const std::vector<T>*) const [with T = std::__cxx11::basic_string<char>; std::__cxx11::string = std::__cxx11::basic_string<char>]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:263:71:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:413:43: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::__cxx11::basic_string<char> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                         for (int i = 0; i < vec->size(); i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:415:39: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<std::__cxx11::basic_string<char> >::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                                 if (i < vec->size()-1) {
                                     ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In instantiation of ‘std::__cxx11::string ESMCI::Attribute::attrValuesToString(const std::vector<T>*) const [with T = int; std::__cxx11::string = std::__cxx11::basic_string<char>]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:269:71:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:413:43: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                         for (int i = 0; i < vec->size(); i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:415:39: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                                 if (i < vec->size()-1) {
                                     ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In instantiation of ‘std::__cxx11::string ESMCI::Attribute::attrValuesToString(const std::vector<T>*) const [with T = long long int; std::__cxx11::string = std::__cxx11::basic_string<char>]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:275:71:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:413:43: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long long int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                         for (int i = 0; i < vec->size(); i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:415:39: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<long long int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                                 if (i < vec->size()-1) {
                                     ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In instantiation of ‘std::__cxx11::string ESMCI::Attribute::attrValuesToString(const std::vector<T>*) const [with T = float; std::__cxx11::string = std::__cxx11::basic_string<char>]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:281:71:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:413:43: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<float>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                         for (int i = 0; i < vec->size(); i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:415:39: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<float>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                                 if (i < vec->size()-1) {
                                     ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In instantiation of ‘std::__cxx11::string ESMCI::Attribute::attrValuesToString(const std::vector<T>*) const [with T = double; std::__cxx11::string = std::__cxx11::basic_string<char>]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:287:71:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:413:43: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<double>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                         for (int i = 0; i < vec->size(); i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:415:39: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<double>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                                 if (i < vec->size()-1) {
                                     ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C: In instantiation of ‘std::__cxx11::string ESMCI::Attribute::attrValuesToString(const std::vector<T>*) const [with T = ESMC_Logical; std::__cxx11::string = std::__cxx11::basic_string<char>]’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:293:71:   required from here
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:413:43: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMC_Logical>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                         for (int i = 0; i < vec->size(); i++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_AttributeWriteJSON.C:415:39: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMC_Logical>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
                                 if (i < vec->size()-1) {
                                     ~~^~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘int ESMCI::Attribute::AttPackCreateStandard(const string&, const string&, const string&, const std::vector<std::__cxx11::basic_string<char> >&, const std::vector<std::__cxx11::basic_string<char> >&, const std::vector<int>&, int, std::vector<std::__cxx11::basic_string<char> >&, int&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:882:13: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for(i=0; i<nestCount; i++) {
            ~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:891:15: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘const value_type’ {aka ‘const int’} [-Wsign-compare]
     for(j=0; j<nestAttPackInstanceCountList[i]; j++) {
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘int ESMCI::Attribute::AttPackNest(const string&, const string&, const string&, int, const std::vector<std::__cxx11::basic_string<char> >&, const std::vector<std::__cxx11::basic_string<char> >&)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:1042:13: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for(i=0; i<nestCount; i++) {
            ~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:1099:14: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (i=0; i<nestCount; i++) {
             ~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘ESMCI::Attribute* ESMCI::Attribute::AttPackGetAttribute(const int&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:1353:11: warning: comparison of integer expressions of different signedness: ‘const int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   if (num >= attrList.size()) {
       ~~~~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘ESMCI::Attribute* ESMCI::Attribute::AttPackGetAttribute(const int&, ESMC_AttNest_Flag) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:1440:11: warning: comparison of integer expressions of different signedness: ‘const int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   if (num < attrList.size())
       ~~~~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘int ESMCI::Attribute::AttributeCountTreeLensAttpack(int&, int*, std::vector<std::__cxx11::basic_string<char> >&) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:2575:50: warning: comparison of integer expressions of different signedness: ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
           if ((attrList.at(i)->vcpp[0].size()+3) > attrLens[index])
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘int ESMCI::Attribute::get(int*, int) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:2895:16: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for (i=0; i<count; i++)
               ~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:2908:27: warning: comparison of integer expressions of different signedness: ‘int’ and ‘const unsigned int’ [-Wsign-compare]
   if (count < 0 || (count > items)) {
                     ~~~~~~^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:2916:14: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
   for (i=0; i<count; i++)
             ~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘ESMCI::Attribute* ESMCI::Attribute::AttributeGet(int) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:3069:31: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<ESMCI::Attribute*>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
   if ((number < 0) || (number >= attrList.size())) {
                        ~~~~~~~^~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘int ESMCI::Attribute::AttrModifyValue(const ESMC_TypeKind_Flag&, int, void*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4302:22: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
           for (i=0; i<numitems; i++)
                     ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4308:22: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
           for (i=0; i<numitems; i++)
                     ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4314:22: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
           for (i=0; i<numitems; i++)
                     ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4320:22: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
           for (i=0; i<numitems; i++)
                     ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4326:22: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
           for (i=0; i<numitems; i++)
                     ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4332:22: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
           for (i=0; i<numitems; i++)
                     ~^~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C: In member function ‘int ESMCI::Attribute::ESMC_Deserialize(char*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4600:16: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for (i=0; i<attrCount; i++) {
               ~^~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/src/ESMCI_Attribute.C:4615:16: warning: comparison of integer expressions of different signedness: ‘unsigned int’ and ‘int’ [-Wsign-compare]
     for (i=0; i<packCount; i++) {
               ~^~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:30:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpackget_(ESMC_Base**, ESMCI::Attribute**, int*, char*, int*, ESMC_AttNest_Flag*, ESMC_Logical*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:149:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > slen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpackaddattribute_(ESMC_Base**, char*, int*, char*, int*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:317:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > slen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpackcreatecustom_(ESMC_Base**, int*, char*, int*, ESMCI::Attribute**, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:403:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > slen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpackcreatestandard_(ESMC_Base**, int*, char*, int*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:477:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > slen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpacknest_(ESMC_Base**, int*, char*, int*, int*, char*, char*, int*, int*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:600:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > slen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpackcreatestdnest_(ESMC_Base**, char*, char*, char*, char*, char*, int*, int*, int*, int*, char*, int*, int*, int*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:910:35: warning: comparison of integer expressions of different signedness: ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (cnapinamelist[i].length() > nestAttPackInstanceNameLens[i]) {
         ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpackgetapinstnames_(ESMC_Base**, ESMCI::Attribute**, char*, int*, int*, int*, ESMC_AttNest_Flag*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:1507:34: warning: comparison of integer expressions of different signedness: ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} and ‘int’ [-Wsign-compare]
     if (capinamelist[i].length() > attPackInstanceNameLens[i]) {
         ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpacksetcharlist_(ESMC_Base**, char*, ESMC_TypeKind_Flag*, int*, char*, int*, ESMCI::Attribute**, ESMC_AttNest_Flag*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:1853:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > vlen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attpacksetvalue_(ESMC_Base**, char*, ESMC_TypeKind_Flag*, int*, void*, ESMCI::Attribute**, ESMC_AttNest_Flag*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:1983:9: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
         for (int i=0; i<*count; i++)
         ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:1985:11: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
           status = attr->AttrModifyValue(*tk, *count, &temp);
           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:1992:9: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
         for (int i=0; i<*count; i++)
         ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:1994:11: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
           status = attr->AttrModifyValue(*tk, *count, &temp);
           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:2001:9: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
         for (int i=0; i<*count; i++)
         ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:2003:11: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
           status = attr->AttrModifyValue(*tk, *count, &temp);
           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:2010:9: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
         for (int i=0; i<*count; i++)
         ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:2012:11: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
           status = attr->AttrModifyValue(*tk, *count, &temp);
           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:2019:9: warning: this ‘for’ clause does not guard... [-Wmisleading-indentation]
         for (int i=0; i<*count; i++)
         ^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:2021:11: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘for’
           status = attr->AttrModifyValue(*tk, *count, &temp);
           ^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C: In function ‘void c_esmc_attributesetcharlist_(ESMC_Base**, char*, ESMC_TypeKind_Flag*, int*, char*, int*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Attribute/interface/ESMCI_Attribute_F.C:3366:11: warning: comparison of integer expressions of different signedness: ‘int’ and ‘ESMCI_FortranStrLenArg’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (j > vlen) {
         ~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/src/ESMF_StateAPI.F90:2438:0:

         end function ESMF_StateCreate
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/interface/../include/ESMCI_State.h:37,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/interface/ESMCI_State_F.C:24:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/interface/../include/ESMCI_State.h:37,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/interface/ESMCI_State.C:27:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Array.h:38,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/interface/../include/ESMCI_State.h:37,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/State/interface/ESMC_State.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/../include/ESMCI_FTable.h:36,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_FTable.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/../include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/../include/ESMCI_CompTunnel.h:34,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_CompTunnel.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C: In function ‘void c_esmc_methodtableadd_(ESMCI::MethodTable**, const char*, int*, void*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C:85:17: warning: comparison of unsigned expression >= 0 is always true [-Wtype-limits]
     if (labelLen>=0){
         ~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C: In function ‘void c_esmc_methodtableaddshobj_(ESMCI::MethodTable**, const char*, int*, const char*, const char*, int*, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C:122:17: warning: comparison of unsigned expression >= 0 is always true [-Wtype-limits]
     if (labelLen>=0){
         ~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C: In function ‘void c_esmc_methodtableremove_(ESMCI::MethodTable**, const char*, int*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C:160:17: warning: comparison of unsigned expression >= 0 is always true [-Wtype-limits]
     if (labelLen>=0){
         ~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C: In function ‘void c_esmc_methodtableexecute_(ESMCI::MethodTable**, const char*, int*, void*, int*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C:195:17: warning: comparison of unsigned expression >= 0 is always true [-Wtype-limits]
     if (labelLen>=0){
         ~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C: In function ‘void c_esmc_methodtableexecuteef_(ESMCI::MethodTable**, const char*, int*, void*, ESMC_Logical*, int*, int*, ESMCI_FortranStrLenArg)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_MethodTable.C:231:17: warning: comparison of unsigned expression >= 0 is always true [-Wtype-limits]
     if (labelLen>=0){
         ~~~~~~~~^~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_CompTunnel.C: In member function ‘int ESMCI::CompTunnel::dual2actual(void*, int, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_CompTunnel.C:824:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<localSendToPetList.size(); i++)
                       ~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_CompTunnel.C: In member function ‘int ESMCI::CompTunnel::actual2dual(void*, int, double)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMCI_CompTunnel.C:939:24: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::vector<int>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
         for (int i=0; i<localSendToPetList.size(); i++)
                       ~^~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMF_CplComp.F90:479:0:

   end function ESMF_CplCompCreate
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/src/ESMF_GridComp.F90:593:0:

   end function ESMF_GridCompCreate
 
Warning: control reaches end of non-void function [-Wreturn-type]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/../include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:26:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/../include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C:33:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C: In function ‘int ESMC_GridCompSetServices(ESMC_GridComp, void (*)(ESMC_GridComp, int*), int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C:114:63: warning: cast between incompatible function types from ‘void (*)(ESMC_GridComp, int*)’ to ‘void (*)(ESMCI::Comp*, int*)’ [-Wcast-function-type]
   localrc = compp->setServices((void(*)(ESMCI::Comp *, int *))func, userRc);
                                                               ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C: In function ‘int ESMC_GridCompSetEntryPoint(ESMC_GridComp, ESMC_Method, void (*)(ESMC_GridComp, ESMC_State, ESMC_State, ESMC_Clock*, int*), int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C:143:12: warning: cast between incompatible function types from ‘void (*)(ESMC_GridComp, ESMC_State, ESMC_State, ESMC_Clock*, int*)’ to ‘void (*)(ESMCI::Comp*, ESMCI::State*, ESMCI::State*, ESMCI::Clock**, int*)’ [-Wcast-function-type]
     int *))func, phase);
            ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C: In function ‘int ESMC_CplCompSetServices(ESMC_CplComp, void (*)(ESMC_CplComp, int*), int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C:379:63: warning: cast between incompatible function types from ‘void (*)(ESMC_CplComp, int*)’ to ‘void (*)(ESMCI::Comp*, int*)’ [-Wcast-function-type]
   localrc = compp->setServices((void(*)(ESMCI::Comp *, int *))func, userRc);
                                                               ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C: In function ‘int ESMC_CplCompSetEntryPoint(ESMC_CplComp, ESMC_Method, void (*)(ESMC_CplComp, ESMC_State, ESMC_State, ESMC_Clock*, int*), int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMC_Comp.C:408:12: warning: cast between incompatible function types from ‘void (*)(ESMC_CplComp, ESMC_State, ESMC_State, ESMC_Clock*, int*)’ to ‘void (*)(ESMCI::Comp*, ESMCI::State*, ESMCI::State*, ESMCI::Clock**, int*)’ [-Wcast-function-type]
     int *))func, phase);
            ^~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In static member function ‘static int ESMCI::Comp::getComplianceCheckerDepth(int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:851:15: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (index == std::string::npos)
         ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:853:15: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (index != std::string::npos){
         ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In static member function ‘static int ESMCI::Comp::getComplianceCheckerJSON(int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:901:15: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (index == std::string::npos)
         ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:903:15: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
     if (index != std::string::npos){
         ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In static member function ‘static int ESMCI::Comp::getComplianceCheckerTrace(int*, int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:947:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (index == std::string::npos)
           ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:949:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (index != std::string::npos){
           ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:961:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (index == std::string::npos)
           ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:963:17: warning: comparison of integer expressions of different signedness: ‘int’ and ‘std::__cxx11::basic_string<char>::size_type’ {aka ‘long unsigned int’} [-Wsign-compare]
       if (index != std::string::npos){
           ~~~~~~^~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::setServices(void (*)(ESMCI::Comp*, int*), int*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:191:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::setEntryPoint(ESMCI::method, void (*)(ESMCI::Comp*, ESMCI::State*, ESMCI::State*, ESMCI::Clock**, int*), int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:236:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘void* ESMCI::Comp::getInternalState(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:294:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::setInternalState(void*)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:348:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::execute(ESMCI::method, ESMCI::State*, ESMCI::State*, ESMCI::Clock*, ESMC_BlockingFlag, int, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:408:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getCurrentPhase(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:457:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getTimeout(int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:500:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getVmInfo(void**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:543:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getVm(ESMCI::VM**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:586:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getVmParent(ESMCI::VM**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:629:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getVmPlan(ESMCI::VMPlan**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:672:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getFTable(ESMCI::FTable**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:715:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getBase(ESMC_Base**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:758:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::Comp::getTunnel(ESMCI::CompTunnel**) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:801:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::GridComp::initialize(ESMCI::State*, ESMCI::State*, ESMCI::Clock*, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1138:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::GridComp::run(ESMCI::State*, ESMCI::State*, ESMCI::Clock*, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1193:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::GridComp::finalize(ESMCI::State*, ESMCI::State*, ESMCI::Clock*, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1248:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::GridComp::print() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1298:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::CplComp::initialize(ESMCI::State*, ESMCI::State*, ESMCI::Clock*, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1432:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::CplComp::run(ESMCI::State*, ESMCI::State*, ESMCI::Clock*, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1487:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::CplComp::finalize(ESMCI::State*, ESMCI::State*, ESMCI::Clock*, int, int*) const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1542:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::CplComp::print() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1592:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C: In member function ‘int ESMCI::SciComp::print() const’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/Component/interface/ESMCI_Comp.C:1724:3: warning: nonnull argument ‘this’ compared to NULL [-Wnonnull-compare]
   if (this==NULL){
   ^~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/../include/ESMCI_WebServComponentSvr.h:23,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/ESMCI_WebServComponentSvr.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/../include/ESMCI_WebServ.h:21,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/ESMCI_WebServ_F.C:28:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/ESMCI_WebServProcCtrlClient.C: In member function ‘int ESMCI::ESMCI_WebServProcCtrlClient::newClient()’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/ESMCI_WebServProcCtrlClient.C:204:51: warning: comparison of integer expressions of different signedness: ‘int’ and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
         if ((bytesSent = sendString(theUserName)) != (strlen(theUserName) + 1))
             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/WebServices/src/ESMCI_WebServProcCtrlClient.C:214:51: warning: comparison of integer expressions of different signedness: ‘int’ and ‘size_t’ {aka ‘long unsigned int’} [-Wsign-compare]
         if ((bytesSent = sendString(thePassword)) != (strlen(thePassword) + 1))
             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/IOAPI/interface/ESMFIO.F90:273:0:

   end function ESMFIO_Create
 
Warning: control reaches end of non-void function [-Wreturn-type]
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/PreESMFMod/src/ESMF_RegridWeightGen.F90:3905:29:

                 A(:,right) = tempI
                             1
Warning: Possible change of value in conversion from REAL(4) to INTEGER(4) at (1) [-Wconversion]
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/ESMFMod/interface/../include/ESMCI.h:25,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Superstructure/ESMFMod/interface/ESMC_Init.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI.h:25,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:32:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C: In function ‘bool ESMCI::TestMaxPETs(int, char*, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:247:21: warning: ‘%s’ directive writing up to 159 bytes into a region of size 154 [-Wformat-overflow=]
     sprintf(msgbuf, "SKIP  %s, %s, line %d\n", failMsg, file, line);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:247:12: note: ‘sprintf’ output 18 or more bytes (assuming 177) into a destination of size 160
     sprintf(msgbuf, "SKIP  %s, %s, line %d\n", failMsg, file, line);
     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C: In function ‘bool ESMCI::TestMinPETs(int, char*, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:319:21: warning: ‘%s’ directive writing up to 159 bytes into a region of size 154 [-Wformat-overflow=]
     sprintf(msgbuf, "SKIP  %s, %s, line %d\n", failMsg, file, line);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:319:12: note: ‘sprintf’ output 18 or more bytes (assuming 177) into a destination of size 160
     sprintf(msgbuf, "SKIP  %s, %s, line %d\n", failMsg, file, line);
     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C: In function ‘bool ESMCI::TestNumPETs(int, char*, int, int)’:
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:391:21: warning: ‘%s’ directive writing up to 159 bytes into a region of size 154 [-Wformat-overflow=]
     sprintf(msgbuf, "SKIP  %s, %s, line %d\n", failMsg, file, line);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~
/work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/epilogue/src/ESMCI_Test.C:391:12: note: ‘sprintf’ output 18 or more bytes (assuming 177) into a destination of size 160
     sprintf(msgbuf, "SKIP  %s, %s, line %d\n", failMsg, file, line);
     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/preload/../include/ESMCI_Trace.h:17,
                 from wrappers_mpi.C:19:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/preload/../include/ESMCI_Trace.h:17,
                 from wrappers.C:8:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/preload/../include/ESMCI_Trace.h:17,
                 from wrappers_io.C:22:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/preload/../include/ESMCI_Trace.h:17,
                 from preload_mpi.C:31:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/preload/../include/ESMCI_Trace.h:17,
                 from preload_io.C:33:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
In file included from /apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/strstream:50,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VMKernel.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_VM.h:41,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Base.h:27,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/include/ESMCI_Comp.h:32,
                 from /work/noaa/da/mpotts/gfortran_8.3.0_openmpi_g/src/Infrastructure/Trace/preload/../include/ESMCI_Trace.h:17,
                 from preload.C:8:
/apps/gcc-8/gcc-8.3.0/include/c++/8.3.0/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
