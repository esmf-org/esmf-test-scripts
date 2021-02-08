Lmod has detected the following error: The following module(s) are unknown:
"None"

Please check the spelling or version number. Also try "module spider ..."
It is also possible your cache file is out-of-date; it may help to try:
  $ module --ignore-cache load "None"

Also make sure that all modulefiles written in TCL start with the string
#%Module




Currently Loaded Modules:
  1) python/3.7.5

 

In file included from ESMCI_StringSubr.C:27:0:
ESMCI_StringSubr.C:103:14: warning: unused parameter ‘str1’ [-Wunused-parameter]
   void FTN_X(c_5strings)(char *str1, char *str2, char *str3, char *str4,
              ^
/work/noaa/da/mpotts/gfortran_8.3.0_mpiuni_g/build_config/Linux.gfortran.default/ESMC_Conf.h:22:21: note: in definition of macro ‘FTN_X’
 #define FTN_X(func) func##_
                     ^
ESMCI_StringSubr.C:103:14: warning: unused parameter ‘str2’ [-Wunused-parameter]
   void FTN_X(c_5strings)(char *str1, char *str2, char *str3, char *str4,
              ^
/work/noaa/da/mpotts/gfortran_8.3.0_mpiuni_g/build_config/Linux.gfortran.default/ESMC_Conf.h:22:21: note: in definition of macro ‘FTN_X’
 #define FTN_X(func) func##_
                     ^
ESMCI_StringSubr.C:103:14: warning: unused parameter ‘str3’ [-Wunused-parameter]
   void FTN_X(c_5strings)(char *str1, char *str2, char *str3, char *str4,
              ^
/work/noaa/da/mpotts/gfortran_8.3.0_mpiuni_g/build_config/Linux.gfortran.default/ESMC_Conf.h:22:21: note: in definition of macro ‘FTN_X’
 #define FTN_X(func) func##_
                     ^
ESMCI_StringSubr.C:103:14: warning: unused parameter ‘str4’ [-Wunused-parameter]
   void FTN_X(c_5strings)(char *str1, char *str2, char *str3, char *str4,
              ^
/work/noaa/da/mpotts/gfortran_8.3.0_mpiuni_g/build_config/Linux.gfortran.default/ESMC_Conf.h:22:21: note: in definition of macro ‘FTN_X’
 #define FTN_X(func) func##_
                     ^
ESMCI_StringSubr.C:103:14: warning: unused parameter ‘str5’ [-Wunused-parameter]
   void FTN_X(c_5strings)(char *str1, char *str2, char *str3, char *str4,
              ^
/work/noaa/da/mpotts/gfortran_8.3.0_mpiuni_g/build_config/Linux.gfortran.default/ESMC_Conf.h:22:21: note: in definition of macro ‘FTN_X’
 #define FTN_X(func) func##_
                     ^
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
