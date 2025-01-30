## ESMF Automated Testing Framework

A set of Python scripts to facilitate testing of ESMF across many platforms.
Includes options for running the tests, collecting results, and summarizing them.


## Adding a machine to nightly testing

The steps are as follows:
  1.  Create some scratch space to be the test root.  Assume this is $ESMF_TEST_ROOT.
  2.  Clone the test scripts and test artifacts repos into $ESMF_TEST_ROOT. Make sure your GitHub SSH keys are set up to allow pushes.
  
  ```bash
   cd $ESMF_TEST_ROOT
   git clone git@github.com:esmf-org/esmf-test-scripts.git
   git clone -c feature.manyFiles=true git@github.com:esmf-org/esmf-test-artifacts.git --branch main --single-branch
   - or if a specific `machine branch` already exists -
   git clone -c feature.manyFiles=true git@github.com:esmf-org/esmf-test-artifacts.git --branch <machine branch> --single-branch
  ``` 
  3.  If this is an entirely new machine that has never been tested with ESMF, create a new config YAML 
      file under `esmf-test-scripts/config/<machine>.yaml`.
      The recommended approach is to copy an existing YAML config file and modify as needed.
  4.  Ensure you have a recent Python 3 module loaded and have the pyyaml dependency installed.
  4.  Run `--check` option to verify your YAML file is working:
  
  ```bash
   cd $ESMF_TEST_ROOT/esmf-test-scripts/python_scripts
   ./test_esmf.py -r $ESMF_TEST_ROOT -m <machine_name> --check
  ```
  
  5.  Run some manual ESMF tests using the [`--list`](#example-list-all-test-combinations-for-a-machine) 
      and [`--filter`](#example-only-submit-jobs-for-some-combinations) options.
  
  6.  Once local testing looks good it is time to add a machine specific branch to the esmf-test-artifacts repository.
  
  ```bash
  cd esmf-test-artifacts
  git checkout -b <machine_name>
  git push -u origin <machine_name>
  ```
         
  7.  When all is good, add a run script under `esmf-test-scripts/runscripts/`
      (again, start with an existing one as a template) and put this script under a cron job.

## Enabling ESMPy testing on a machine

### One-time setup needed for a machine

To avoid needing to re-download the ESMPy test data every time the ESMPy testing is run, we typically set up an `ESMPY_DATA_DIR`. This can be done either by doing a `git clone` of the `esmf-test-data` repository (which is simple, but leads to an unnecessarily large amount of disk usage) or by doing a manual run of the ESMPy testing while setting `ESMPY_DATA_NEW_DIR` and then running `make download`.

The following commands can be used to set up an `ESMPY_DATA_DIR`; this needs to be done after building ESMF from source; replace the capitalized paths (`FILL/IN/PATH/TO/...`) with appropriate paths:

```bash
export ESMFMKFILE=/FILL/IN/PATH/TO/LOCATION/FROM/BUILD/OF/esmf.mk
export ESMPY_DATA_NEW_DIR=/FILL/IN/PATH/TO/DESIRED/LOCATION/OF/esmf-test-data/grids
mkdir -p $ESMPY_DATA_NEW_DIR
cd /FILL/IN/PATH/TO/ESMF/src/addon/esmpy
python -m venv esmpy_venv
. esmpy_venv/bin/activate
pip install .
make download
deactivate
rm -r esmpy_venv
```

(The contents of this `ESMPY_DATA_DIR` may need to be updated periodically if the test inputs change, but this should generally only be needed infrequently.)

### Additions needed in the given machine's config file

A few pieces need to be added to enable ESMPy testing on a machine:

1. `head_node_name` needs to be specified under the machine block (this is needed because the ESMPy testing ssh's to the head node to do the ESMPy installation).

2. Under any combo where ESMPy testing will be run, add `ESMPY_DATA_DIR` under the `extra_env_vars` section, pointing to the directory set up above.

3. Under any combo where ESMPy testing will be run, add an `esmpy` section with a single element specifying the python version to be used. This needs to correspond to one of the supported versions in a yml file in the `py_env_creation` directory (e.g., for `environment-python3.11.yml`, specify `python: python3.11`).

4. If the use of conda requires loading a module, then add this to the modules loaded for the given combo.

For example, here were the diffs to add python testing to two combos on derecho:

```diff
diff --git a/config/derecho.yaml b/config/derecho.yaml
index 77ccf68..048346d 100644
--- a/config/derecho.yaml
+++ b/config/derecho.yaml
@@ -1,6 +1,7 @@
 machine:
   name: derecho
   cores_per_node: 128
+  head_node_name: derecho6
   scheduler:
     type: pbs
     account: p93300606
@@ -35,7 +36,7 @@ matrix:
       12.2.0_pio2.6.2:
         compiler: gcc/12.2.0
         netcdf: netcdf/4.9.2
-        extra_module: ncarenv/23.09 cmake parallelio/2.6.2
+        extra_module: ncarenv/23.09 cmake parallelio/2.6.2 conda/latest
         mpi:
           mpi:
             module: cray-mpich/8.1.27
@@ -44,6 +45,11 @@ matrix:
               - ESMF_PIO=external
               - ESMF_PIO_INCLUDE="$PIO/include"
               - ESMF_PIO_LIBPATH="$PIO/lib"
+        extra_env_vars:
+          - ESMPY_DATA_DIR="/glade/work/theurich/esmf-test-data/grids"
+        esmpy:
+          # This python version corresponds to the suffix in environment-python3.11.yml
+          python: python3.11

   intel:
     build_time: "2:00:00"
@@ -52,7 +58,7 @@ matrix:
       2023.2.1:
         compiler: intel/2023.2.1
         netcdf: netcdf/4.9.2
-        extra_module: ncarenv/23.09 cmake
+        extra_module: ncarenv/23.09 cmake conda/latest
         mpi:
           mpiuni:
             module: None
@@ -60,6 +66,11 @@ matrix:
             module: cray-mpich/8.1.27
             mpi_env_vars:
               - ESMF_MPIRUN=mpiexec
+        extra_env_vars:
+          - ESMPY_DATA_DIR="/glade/work/theurich/esmf-test-data/grids"
+        esmpy:
+          # This python version corresponds to the suffix in environment-python3.11.yml
+          python: python3.11
       2023.2.1-classic:
         compiler: intel-classic/2023.2.1
         netcdf: netcdf/4.9.2
```

## Archiving and creating a new esmf-test-artifacts repository

The esmf-test-artifacts repository must be regularly archived and replaced with a new one. This is
primarily to keep the repository at a reasonable size (say, under 8GB or so). We typically replace
the esmf-test-artifacts repository after a release of ESMF. The existing artifacts repository is
renamed with an archive date (e.g., esmf-test-artifacts-2022-10). The supported platform tables
that are included with ESMF releases point into the archived artifacts to allow users to reference
details of the tested configurations for the release.

Use the following steps to start with a fresh esmf-test-artifacts:

  1. In GitHub, rename the `esmf-test-artifacts` respository to `esmf-test-artifacts-YYYY-MM`. This is the first field under Settings/General.
  2. Also under Settings/General, all the way down in the "Danger Zone", select "Archive this repository". This will make the repo read-only, which is recommended.
  3. Create a new `esmf-test-artifacts` repository with a single "main" branch and a README.md.
  4. Under Settings/Collaborators-and-teams, in section "Manage access", explicitly add `mark-a-potts` and `mathomp4` with role "maintain"! Without this, Mark's and Matt's scripts cannot push to the new artifacts repo!
  5.  Under Settings/Collaborators-and-teams, in section "Manage access", explicitly add `mathomp4` with role "write". Without this, Matt's scripts cannot push to the new artifacts repo!
  6. Update the `esmf-test-scripts/config/global.yaml` file and set `reclone-artifacts: True`. This will cause
     each test platform to delete their local `esmf-test-artifacts` and reclone the new one. After all platforms
     have done this, set `reclone-artifacts: False`.
  7. Each test platform will automatically create the needed branch of the `esmf-test-artifacts` repository
     and start pushing artifacts to the new branch.
  8. Manually start the [ESMF summarizer](https://github.com/esmf-org/esmf-test-summary/actions/workflows/generate-esmf-summaries.yml) 
     and select the `Rebuild database` option. This will clear out the old results and create a fresh database from the
     new `esmf-test-artifacts` repository.


## Run test suite and collect artifacts (test_esmf.py)

The `test_esmf.py` script is used to create test directories and submit jobs for building/testing ESMF on HPC platforms.

### Prerequisites

 - Python 3
 - [PyYAML](https://pyyaml.org/)  (pip install pyyaml)

### Usage

```
./test_esmf.py --help
usage: test_esmf.py [-h] -r ROOT [-m MACHINE] [-y YAML] [--check] [--debug]
                    [--show-machine] [-l] [--branch BRANCH] [--no-submit]
                    [--only-resubmit] [--no-artifacts] [--filter FILTER]
                    [--throttle N]

A tool to facilitate automated and manual testing of ESMF

optional arguments:
  -h, --help            show this help message and exit
  -r ROOT, --root ROOT  Root directory to use for testing (scratch space)
  -m MACHINE, --machine MACHINE
                        Name of this machine. Used to find a config YAML file
                        under ./configs/<machine>.yaml
  -y YAML, --yaml YAML  Explicit path to YAML config file. Overrides --machine
                        if present.
  --check               Run some checks
  --debug               Output debug messages
  --show-machine        Print out machine attributes and exit
  -l, --list            List the test combinations in the YAML for this
                        machine and exit
  --branch BRANCH       Ignore branches in the YAML and use these branches
                        instead. Accepts a comma separated list, e.g.,
                        --branch develop,feature/X,fork:feature_Z
  --no-submit           Create test directories and batch scripts but do not
                        submit any jobs
  --only-resubmit       Assume test directories and scripts are already
                        present and only resubmit build/test jobs
  --no-artifacts        Do not copy or push test artifacts.
  --filter FILTER       Limit combinations to test. Use -l (or --list) to get
                        a list of combinations with indexes. The format is a
                        comma separated list, e.g. --filter 1,5,6,11 will only
                        include combinations 1, 5, 6, and 11 in the testing.
  --throttle N          Limit the number of maximum number of active tests
                        cases submitted to N. This option is provided to limit
                        CPU intensity on login nodes. The script will block
                        until all jobs have been submitted. The default is no
                        throttling (all cases submitted).
```

### Example: List all test combinations for a machine

  - The `-m cheyenne` will instruct the script to look for the config file `../config/cheyenne.yaml`.
  - The `-r` should point to large scratch space to use for testing.
  - The `-l` or `--list` prints the *test matrix* - an enumerated list of test combos from the machine's YAML file.

```
 ./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne -l

Matrix of test combinations:
===========================================
  [1] gfortran 7.4.0 / openmpi 4.0.3 / netcdf/4.7.3 / O
  [2] gfortran 7.4.0 / openmpi 4.0.3 / netcdf/4.7.3 / g
  [3] gfortran 9.1.0 / openmpi 4.0.5 / netcdf/4.7.3 / O
  [4] gfortran 9.1.0 / openmpi 4.0.5 / netcdf/4.7.3 / g
  [5] gfortran 9.1.0 / mpt 2.22 / netcdf/4.7.3 / O
  [6] gfortran 9.1.0 / mpt 2.22 / netcdf/4.7.3 / g
  [7] gfortran 10.1.0 / openmpi 4.0.5 / netcdf/4.7.4 / O
  [8] gfortran 10.1.0 / openmpi 4.0.5 / netcdf/4.7.4 / g
  [9] gfortran 10.1.0 / mpt 2.23 / netcdf/4.7.4 / O
  [10] gfortran 10.1.0 / mpt 2.23 / netcdf/4.7.4 / g
  [11] intel 18.0.5 / mpiuni None / netcdf/4.6.3 / O
  [12] intel 18.0.5 / mpiuni None / netcdf/4.6.3 / g
  [13] intel 18.0.5 / mpt 2.19 / netcdf/4.6.3 / O
  [14] intel 18.0.5 / mpt 2.19 / netcdf/4.6.3 / g
  [15] intel 18.0.5 / openmpi 3.1.4 / netcdf/4.6.3 / O
  [16] intel 18.0.5 / openmpi 3.1.4 / netcdf/4.6.3 / g
  [17] intel 18.0.5 / intelmpi 2018.4.274 / netcdf/4.6.3 / O
  [18] intel 18.0.5 / intelmpi 2018.4.274 / netcdf/4.6.3 / g
  [19] nvhpc 22.2 / mpt 2.25 / netcdf/4.8.1 / O
  [20] nvhpc 22.2 / mpt 2.25 / netcdf/4.8.1 / g
```

### Example: Run some checks to make sure the scripts are working and machine config file is valid
```
./test_esmf.py -r /path/to/scratch -m cheyenne --check
INFO: Running checks
INFO: Check: Can I clone artifacts repo?
INFO: ...PASS
INFO: Check:  Can I push to artifacts repo?
INFO: ...PASS
INFO: Check: Can I clone ESMF repo?
INFO: ...PASS
INFO: Check:  Can I submit a job to the batch system?
INFO: ...PASS
```

### Example: Submit build/test jobs for all the combinations in the test matrix
 - Each combination in the matrix will have its own subdirectory under `/path/to/scratch`
```
./test_esmf.py -r /path/to/scratch -m cheyenne
```

### Example: Override ESMF branch to test
 - The --branch option will ignore the branches in the YAML file and use the command line branch(es) intead.
   This is helpful for manual testing of an ESMF branch.
```
./test_esmf.py -r /path/to/scratch -m cheyenne --branch feature/mybranch1,feature/mybranch2
```

### Example: Only submit jobs for some combinations
 - The `--filter 1,8,10` submits jobs only for combinations 1, 8 and 10 from the test matrix (from --list option).
```
./test_esmf.py -r /path/to/scratch -m cheyenne --filter 1,8,10
```

### Example: Create the test directories but don't submit any jobs.
This option is handy to generate all the job scripts, but allow you to manually submit them.
```
./test_esmf.py -r /path/to/scratch -m cheyenne --no-submit
```

### Example: Submit the build/test jobs but don't push any test artifacts.
By default, test artifacts are pushed to a git repository defined in ../config/global.yaml. The `--no-artifacts`
option will submit all the build/test jobs, but just leave the results in place for you to examine.
```
./test_esmf.py -r /path/to/scratch -m cheyenne --no-artifacts
```

### Example: Only re-submit from existing test directories
By default, existing test directories will be cleaned out and recreated.  This option will leave the existing
directories untouched, and just resubmit the build/test jobs.  This is handy if you need to make some manual
changes, e.g., such as a code change in ESMF, and want to resubmit the jobs.
- The command below will only resubmit the build/test jobs combination 9 in the test matrix
```
./test_esmf.py -r /path/to/scratch -m cheyenne --only-resubmit --filter 9
```

### Example: Limit number of active job submissions
If the test matrix is large, then the number of cases may lead to high CPU utilization
on the HPC login nodes, raising alarms for sys admins.
- The `--throttle 4` option below will make sure there is at most 4 active test cases at one time. 
  The script will block in this case until all jobs have been submitted.
- The default behavior is to submit all the jobs for the full test matrix.
```
./test_esmf.py -r /path/to/scratch -m cheyenne --throttle 4
```


### Example: Manually push test artifacts
If you use the `--no-artifacts` option, then the test results will be left in each combination's
test directory.  If you decide you want to push those test artifacts, you can run the `collect_artifacts.sh`
script manually.
```
# go into specific combination directory and run collection script
cd /path/to/scratch/gfortran_10.3.0_openmpi_g_develop
./collect_artifacts.sh
```



## Summarize results (summarize_artifacts.py)

The summarizer script is used to generate a set of HTML tables for easily viewing the status
of a large number of test results coming in from many platforms.

**Note: This script is run automatically so most developers typically do not need to run
this manually, unless developing the summarizer script itself.**

  - Test results are available at:  http://earthsystemmodeling.org/esmf-test-summary/
  - This site is backed by the repo: https://github.com/esmf-org/esmf-test-summary/

### Usage

```
./summarizer_artifacts.py --help

usage: summarize_artifacts.py [-h] -a ARTIFACTS_REPO -d DATABASE_ROOT
                              [-e ESMF_REPO] [-c CONFIG] [-l]
                              [--output-dir DIR] [--no-update] [--refresh]
                              [--debug]

A tool to summarize ESMF test artifacts

optional arguments:
  -h, --help            show this help message and exit
  -a ARTIFACTS_REPO, --artifacts-repo ARTIFACTS_REPO
                        Location of artifacts
  -d DATABASE_ROOT, --database-root DATABASE_ROOT
                        Directory to store internal results database. If the
                        DB exists in this directory it will be updated with
                        the most recent results. Otherwise, a new one will be
                        created.
  -e ESMF_REPO, --esmf-repo ESMF_REPO
                        Path to clone of the ESMF repository. If provided,
                        summary tables will be annotated with commit messages,
                        authors, and dates from each hash.
  -c CONFIG, --config CONFIG
                        Path to optional configuration YAML file to customize
                        summarizer output.
  -l, --list            Only list the tested tags/hashes and exit.
  --output-dir DIR      Path to output directory.
  --no-update           By default, the latest test artifacts are pulled in.
                        This option skips that step and only queries the test
                        results already stored in the internal database.
  --refresh             Delete the internal database and re-process the full
                        artifacts history. If not provided, the default
                        behavior is to only process commits to the artifacts
                        repository that do not already exist in the database.
  --debug               Turn on verbose debugging output.

```

### Filtering Summary Tables

A configuration file can be provided that allows you to filter the results shown in the
summary table by machine, ESMF hash, and/or ESMF branch.  This is helpful to reduce 
clutter in the test summary tables as older branches are merged and are no longer relevant.

The production summarizer.yaml file is located in the root directory of the
[esmf-test-summary](https://github.com/esmf-org/esmf-test-summary/) repository on GitHub.

The format of the summary config file is:

```yaml
exclude:
  esmf_hash:
    - v8.4.0b09-*
    - v8.4.0b08*
    - v8.4.0b07-*
  machine:
    - hera
    - cheyenne
  esmf_branch:
    - feature/already_merged
    - feature/major_upgrade
```

