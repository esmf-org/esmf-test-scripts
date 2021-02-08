gcc/7.2.0(41):ERROR:105: Unable to locate a modulefile for 'None'
Warning, to be used with gcc/7.3.0
Currently Loaded Modulefiles:
  1) modules/3.2.11.4
  2) alps/6.6.43-6.0.7.1_5.61__ga796da32.ari
  3) nodestat/2.3.85-6.0.7.1_5.38__gc6218bb.ari
  4) sdb/3.3.777-6.0.7.1_6.17__g5ddb0ab.ari
  5) udreg/2.3.2-6.0.7.1_5.22__g5196236.ari
  6) ugni/6.0.14.0-6.0.7.1_3.22__gea11d3d.ari
  7) gni-headers/5.0.12.0-6.0.7.1_3.20__g3b1768f.ari
  8) dmapp/7.1.1-6.0.7.1_6.16__g45d1b37.ari
  9) xpmem/2.2.15-6.0.7.1_5.20__g7549d06.ari
 10) llm/21.3.530-6.0.7.1_5.8__g3b4230e.ari
 11) nodehealth/5.6.14-6.0.7.1_8.59__gd6a82f3.ari
 12) system-config/3.5.2796-6.0.7.1_10.4__g5b8a27c5.ari
 13) Base-opts/2.4.135-6.0.7.1_5.11__g718f891.ari
 14) java/jdk1.8.0_152
 15) isvaccel/6.0.0-6.0.7.1_5.56__gf0c05b4.ari
 16) ccm/2.5.4-6.0.7.1_5.41__g394754f.ari
 17) cray-mpich/7.6.3
 18) pbs
 19) gcc/7.2.0
 20) craype-broadwell
 21) craype-hugepages2M
 22) craype-network-aries
 23) craype/2.5.13
 24) cray-libsci/17.11.1
 25) pmi/5.0.15
 26) atp/2.1.1
 27) rca/2.2.18-6.0.7.1_5.61__g2aa4f39.ari
 28) perftools-base/6.5.2
 29) PrgEnv-gnu/6.0.4
 30) netcdf/gcc-7.3.0/4.6.2
sed: can't read /p/work/mpotts/gfortran_7.2.0_mpiuni_O/test/testO/Unicos.gfortran.64.mpiuni.default/unit_tests.config: No such file or directory
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI.h:25,
                 from ESMCI_WordsizeSubr.C:24:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI.h:25,
                 from ESMCI_FeatureSubr.C:21:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI.h:25,
                 from ESMCI_FeatureUTest.C:14:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from ESMC_LogErrPerfUTest.C:19:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from ESMC_TraceRegionUTest.C:27:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/IO/tests/../include/ESMCI_IO_NetCDF.h:39,
                 from ESMCI_IO_NetCDFUTest.C:18:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/Regridding/ESMCI_Interp.h:17,
                 from ESMCI_IntegrateUTest.C:19:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearUTest.C:25:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearParUTest.C:25:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh_Glue.h:31,
                 from ESMC_MBMesh_BilinearSingleElemUTest.C:24:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCasesUTest.C:25:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MeshCXX.h:16,
                 from ESMC_MBMeshTestUtilMesh.C:25,
                 from ESMC_MBMesh_BilinearEdgeCases3DUTest.C:25:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateUTest.C:26:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_CreateParUTest.C:26:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousUTest.C:26:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_RendezvousParUTest.C:25:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_SearchUTest.C:26:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilUTest.C:26:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
In file included from /opt/gcc/7.2.0/snos/include/g++/backward/strstream:50:0,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VMKernel.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_VM.h:41,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_Base.h:27,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/include/ESMCI_RHandle.h:39,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Field/include/ESMCI_Field.h:42,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/ESMCI_Mesh.h:23,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Legacy/ESMCI_GeomRendezvous.h:18,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/include/Regridding/ESMCI_Interp.h:17,
                 from /p/work/mpotts/gfortran_7.2.0_mpiuni_O/src/Infrastructure/Mesh/tests/../include/ESMCI_MBMesh_Bilinear.h:31,
                 from ESMC_MBMeshTestUtilMBMesh.C:27,
                 from ESMC_MBMesh_UtilParUTest.C:25:
/opt/gcc/7.2.0/snos/include/g++/backward/backward_warning.h:32:2: warning: #warning This file includes at least one deprecated or antiquated header which may be removed without further notice at a future date. Please use a non-deprecated interface with equivalent functionality instead. For a listing of replacement headers and interfaces, consult the file backward_warning.h. To disable this warning use -Wno-deprecated. [-Wcpp]
 #warning \
  ^~~~~~~
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_WebServLowLevelSocket.o): in function `ESMCI::ESMCI_WebServLowLevelSocket::clientConnect(char const*, int)':
ESMCI_WebServLowLevelSocket.C:(.text+0x3f2): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_WebServLowLevelSocket.o): in function `ESMCI::ESMCI_WebServLowLevelSocket::clientConnect(char const*, int)':
ESMCI_WebServLowLevelSocket.C:(.text+0x3f2): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_WebServLowLevelSocket.o): in function `ESMCI::ESMCI_WebServLowLevelSocket::clientConnect(char const*, int)':
ESMCI_WebServLowLevelSocket.C:(.text+0x3f2): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_WebServLowLevelSocket.o): in function `ESMCI::ESMCI_WebServLowLevelSocket::clientConnect(char const*, int)':
ESMCI_WebServLowLevelSocket.C:(.text+0x3f2): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_WebServLowLevelSocket.o): in function `ESMCI::ESMCI_WebServLowLevelSocket::clientConnect(char const*, int)':
ESMCI_WebServLowLevelSocket.C:(.text+0x3f2): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_WebServLowLevelSocket.o): in function `ESMCI::ESMCI_WebServLowLevelSocket::clientConnect(char const*, int)':
ESMCI_WebServLowLevelSocket.C:(.text+0x3f2): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
cat: './PET*MBMesh_DualUTest.Log': No such file or directory
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
/usr/bin/ld: /p/work/mpotts/gfortran_7.2.0_mpiuni_O/lib/libO/Unicos.gfortran.64.mpiuni.default/libesmf.a(ESMCI_VMKernel.o): in function `ESMCI::socketClientInit(char const*, int, double)':
ESMCI_VMKernel.C:(.text+0x7610): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking
=>> PBS: job killed: walltime 3626 exceeded limit 3600
make[3]: *** Deleting file '/p/work/mpotts/gfortran_7.2.0_mpiuni_O/test/testO/Unicos.gfortran.64.mpiuni.default/ESMF_FieldBundleSMMSTest'
make[1]: *** [build_system_tests] Terminated
make[2]: *** [tree] Terminated
make: *** [all_tests] Terminated
make[3]: *** [/p/work/mpotts/gfortran_7.2.0_mpiuni_O/test/testO/Unicos.gfortran.64.mpiuni.default/ESMF_FieldBundleSMMSTest] Terminated
