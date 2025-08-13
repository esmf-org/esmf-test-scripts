#!/bin/bash -l

esmftestroot=/usr/local/esmf/esmf-testing
cd ${esmftestroot}/esmf-test-scripts
git remote update
git pull -X theirs --no-edit

cd ${esmftestroot}

# TODO: For now we load a single environment via spack loads. Eventually replace this with either:
# (1) Use of modules
# (2) Spack loads triggered by the config file, by extending the esmf test scripts to be
#     able to handle spack loads as an alternative to module loads
#
# I identified the appropriate hashes via `spack find -l -d`. For example, I found the
# netcdf-c that depends on this openmpi by doing `spack find -l -d netcdf` and searching
# for the hash `baycfop` (i.e., the hash of this openmpi).
#
# (Note that this cmake is independent of compiler, etc., so we can use this same one for
# all test configurations.)
spack load gcc/kykcamd
spack load openmpi/baycfop
spack load netcdf-c/fwi4w4n
spack load netcdf-fortran/etm2w4u
spack load cmake/tw2cvya

# Wrap the python script in a call from an AppleScript to get the cron job to run faster
# (From https://stackoverflow.com/questions/74793041/why-does-selenium-python-script-run-really-slow-in-cron-compared-to-vscode)
# In previous testing on a different Mac, this led to about a 2.5x speedup in test time
osascript -e "tell application \"Terminal\" to do script \"cd ${esmftestroot} && python3 ./esmf-test-scripts/python_scripts/test_esmf.py -m fairy -r ${esmftestroot} >& ${esmftestroot}/test_esmf_fairy.log\""
