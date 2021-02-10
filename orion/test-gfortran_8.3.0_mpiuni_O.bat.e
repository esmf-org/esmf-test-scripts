Lmod has detected the following error: The following module(s) are unknown:
"None"

Please check the spelling or version number. Also try "module spider ..."
It is also possible your cache file is out-of-date; it may help to try:
  $ module --ignore-cache load "None"

Also make sure that all modulefiles written in TCL start with the string
#%Module




Currently Loaded Modules:
  1) python/3.7.5

 

ESMF_StringUTest.F90:17.8:

    use ESMF
        1
Fatal Error: File 'esmf.mod' opened at (1) is not a GNU Fortran module file
make[5]: *** [ESMF_StringUTest.o] Error 1
make[4]: *** [tree] Error 1
make[3]: *** [tree] Error 1
make[2]: *** [tree] Error 1
make[1]: *** [build_unit_tests] Error 2
make: *** [all_tests] Error 2
