Lmod has detected the following error: The following module(s) are unknown:
"gcc/10.1.0"

Please check the spelling or version number. Also try "module spider ..."
It is also possible your cache file is out-of-date; it may help to try:
  $ module --ignore-cache load "gcc/10.1.0"

Also make sure that all modulefiles written in TCL start with the string
#%Module



slurmstepd: error: *** JOB 42380585 ON borgq192 CANCELLED AT 2021-02-05T15:52:17 ***
