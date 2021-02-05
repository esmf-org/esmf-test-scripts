
Currently Loaded Modules:
  1) python/3.7.5   3) openmpi/4.0.4   5) hdf5/1.10.6      7) netcdf/4.7.4
  2) pgi/2019       4) szip/2.1.1      6) pnetcdf/1.12.1

 

dirname: missing operand
Try 'dirname --help' for more information.
Using built-in specs.
COLLECT_GCC=/bin/gfortran
Target: x86_64-redhat-linux
Configured with: ../configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --with-bugurl=http://bugzilla.redhat.com/bugzilla --enable-bootstrap --enable-shared --enable-threads=posix --enable-checking=release --with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions --enable-gnu-unique-object --enable-linker-build-id --with-linker-hash-style=gnu --enable-languages=c,c++,objc,obj-c++,java,fortran,ada,go,lto --enable-plugin --enable-initfini-array --disable-libgcj --with-isl=/builddir/build/BUILD/gcc-4.8.5-20150702/obj-x86_64-redhat-linux/isl-install --with-cloog=/builddir/build/BUILD/gcc-4.8.5-20150702/obj-x86_64-redhat-linux/cloog-install --enable-gnu-indirect-function --with-tune=generic --with-arch_32=x86-64 --build=x86_64-redhat-linux
Thread model: posix
gcc version 4.8.5 20150623 (Red Hat 4.8.5-36) (GCC) 
/work/noaa/da/mpotts/pgi_2019_openmpi_g/scripts/version.pgf90: line 14: /pgf90: No such file or directory
dirname: missing operand
Try 'dirname --help' for more information.
Using built-in specs.
COLLECT_GCC=/bin/g++
Target: x86_64-redhat-linux
Configured with: ../configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --with-bugurl=http://bugzilla.redhat.com/bugzilla --enable-bootstrap --enable-shared --enable-threads=posix --enable-checking=release --with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions --enable-gnu-unique-object --enable-linker-build-id --with-linker-hash-style=gnu --enable-languages=c,c++,objc,obj-c++,java,fortran,ada,go,lto --enable-plugin --enable-initfini-array --disable-libgcj --with-isl=/builddir/build/BUILD/gcc-4.8.5-20150702/obj-x86_64-redhat-linux/isl-install --with-cloog=/builddir/build/BUILD/gcc-4.8.5-20150702/obj-x86_64-redhat-linux/cloog-install --enable-gnu-indirect-function --with-tune=generic --with-arch_32=x86-64 --build=x86_64-redhat-linux
Thread model: posix
gcc version 4.8.5 20150623 (Red Hat 4.8.5-36) (GCC) 
basename: missing operand
Try 'basename --help' for more information.
/work/noaa/da/mpotts/pgi_2019_openmpi_g/scripts/version.pgCC: line 17: [: =: unary operator expected
/work/noaa/da/mpotts/pgi_2019_openmpi_g/scripts/version.pgCC: line 19: [: =: unary operator expected
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMC_Util.h:23:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Util.h:26,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C:29:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:29:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 16)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:35:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 12)
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMC_Util.h:23:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Util.h:26,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C:29:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:68:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:78:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17) || ((ESMF_PGIVERSION_MAJOR == 17) && (ESMF_PGIVERSION_MINOR < 9))
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Macros.h:25:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_Util.C:37:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:23:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:35:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 11)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:39:28: error: operator '==' has no left operand
 #if (ESMF_PGIVERSION_MAJOR == 11) && (ESMF_PGIVERSION_MINOR < 2)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:48:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 12)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:58:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:68:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:77:49: error: operator '<' has no left operand
 #if defined(ESMF_PIO) && (ESMF_PGIVERSION_MAJOR < 8)
                                                 ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:80:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 10) || ((ESMF_PGIVERSION_MAJOR == 10) && (ESMF_PGIVERSION_MINOR == 0))
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:89:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 15) || ((ESMF_PGIVERSION_MAJOR == 15) && (ESMF_PGIVERSION_MINOR < 7))
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:99:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17) || ((ESMF_PGIVERSION_MAJOR == 17) && (ESMF_PGIVERSION_MINOR < 9))
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMC_Util.h:23:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Fraction.h:52,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_Fraction.C:25:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:29:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 16)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:35:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 12)
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMC_Util.h:23:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Fraction.h:52,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_Fraction.C:25:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:68:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:78:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17) || ((ESMF_PGIVERSION_MAJOR == 17) && (ESMF_PGIVERSION_MINOR < 9))
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Macros.h:25:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_Fraction.C:34:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:23:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:35:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 11)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:39:28: error: operator '==' has no left operand
 #if (ESMF_PGIVERSION_MAJOR == 11) && (ESMF_PGIVERSION_MINOR < 2)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:48:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 12)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:58:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:68:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:77:49: error: operator '<' has no left operand
 #if defined(ESMF_PIO) && (ESMF_PGIVERSION_MAJOR < 8)
                                                 ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:80:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 10) || ((ESMF_PGIVERSION_MAJOR == 10) && (ESMF_PGIVERSION_MINOR == 0))
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:89:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 15) || ((ESMF_PGIVERSION_MAJOR == 15) && (ESMF_PGIVERSION_MINOR < 7))
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:99:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17) || ((ESMF_PGIVERSION_MAJOR == 17) && (ESMF_PGIVERSION_MINOR < 9))
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Macros.h:25:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_F90Interface.C:17:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:23:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:35:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 11)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:39:28: error: operator '==' has no left operand
 #if (ESMF_PGIVERSION_MAJOR == 11) && (ESMF_PGIVERSION_MINOR < 2)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:48:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 12)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:58:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:68:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 8)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:77:49: error: operator '<' has no left operand
 #if defined(ESMF_PIO) && (ESMF_PGIVERSION_MAJOR < 8)
                                                 ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:80:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 10) || ((ESMF_PGIVERSION_MAJOR == 10) && (ESMF_PGIVERSION_MINOR == 0))
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:89:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 15) || ((ESMF_PGIVERSION_MAJOR == 15) && (ESMF_PGIVERSION_MINOR < 7))
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMF_Conf.inc:99:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17) || ((ESMF_PGIVERSION_MAJOR == 17) && (ESMF_PGIVERSION_MINOR < 9))
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Macros.h:26:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_F90Interface.C:17:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:29:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 16)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:35:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 12)
                            ^
In file included from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/../include/ESMCI_Macros.h:26:0,
                 from /work/noaa/da/mpotts/pgi_2019_openmpi_g/src/Infrastructure/Util/src/ESMCI_F90Interface.C:17:
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:68:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17)
                            ^
/work/noaa/da/mpotts/pgi_2019_openmpi_g/build_config/Linux.pgi.default/ESMC_Conf.h:78:28: error: operator '<' has no left operand
 #if (ESMF_PGIVERSION_MAJOR < 17) || ((ESMF_PGIVERSION_MAJOR == 17) && (ESMF_PGIVERSION_MINOR < 9))
                            ^
make[8]: *** [/work/noaa/da/mpotts/pgi_2019_openmpi_g/obj/objg/Linux.pgi.64.openmpi.default/ESMCI_Util.o] Error 1
make[8]: *** Waiting for unfinished jobs....
make[8]: *** [/work/noaa/da/mpotts/pgi_2019_openmpi_g/obj/objg/Linux.pgi.64.openmpi.default/ESMCI_Fraction.o] Error 1
make[8]: *** [/work/noaa/da/mpotts/pgi_2019_openmpi_g/obj/objg/Linux.pgi.64.openmpi.default/ESMCI_F90Interface.o] Error 1
make[8]: *** wait: No child processes.  Stop.
make[7]: *** [esmflib] Error 2
make[6]: *** [tree_lib] Error 2
make[5]: *** [tree] Error 1
make[4]: *** [tree] Error 1
make[3]: *** [tree] Error 1
make[2]: *** [tree] Error 1
make[1]: *** [build_libs] Error 2
make: *** [lib] Error 2
