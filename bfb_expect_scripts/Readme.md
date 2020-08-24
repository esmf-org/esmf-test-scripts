How to run:

nohup ./runTest config > output_log & 

Script info:

runTest : consist of commands to execute the whole bfb test 
input_eof : interactive input for runTest expect script (Tcl)
test_execution : consist of commands to execute esmf-extended-tests 
config : the input configuration about compiler , mpi , HPC system and error logs .
platform_script: this is a generic version of platform related script in which user needs to load appropriate compiler , mpi, netcdf , nccmp module .
