## ESMF Automated Testing Framework

A set of Python scripts to facilitate testing of ESMF across many platforms.
Includes options for running the tests, collecting results, and summarizing them.

## Run test suite and collect artifacts (test_esmf.py)

The `test_esmf.py` script is used to create test directories and submit jobs for building/testing ESMF on HPC platforms.

### Prerequisites

 - Python 3
 - [PyYAML](https://pyyaml.org/)  (pip install pyyaml)

### Usage

```
./test_esmf.py --help
usage: test_esmf.py [-h] -r ROOT [-m MACHINE] [-y YAML] [--check] [--debug] [--show-machine] [-l] [--no-submit] [--only-resubmit] [--no-artifacts]
                    [--filter FILTER] [--throttle N]

A tool to facilitate automated and manual testing of ESMF

optional arguments:
  -h, --help            show this help message and exit
  -r ROOT, --root ROOT  Root directory to use for testing (scratch space)
  -m MACHINE, --machine MACHINE
                        Name of this machine. Used to find a config YAML file under ./configs/<machine>.yaml
  -y YAML, --yaml YAML  Explicit path to YAML config file. Overrides --machine if present.
  --check               Run some checks
  --debug               Output debug messages
  --show-machine        Print out machine attributes and exit
  -l, --list            List the test combinations in the YAML for this machine and exit
  --no-submit           Create test directories and batch scripts but do not submit any jobs
  --only-resubmit       Assume test directories and scripts are already present and only resubmit build/test jobs
  --no-artifacts        Do not copy or push test artifacts.
  --filter FILTER       Limit combinations to test. Use -l (or --list) to get a list of combinations with indexes. The format is a comma separated list,
                        e.g. --filter 1,5,6,11 will only include combinations 1, 5, 6, and 11 in the testing.
  --throttle N          Limit the number of maximum number of active tests cases submitted to N. This option is provided to limit CPU intensity on login
                        nodes. The script will block until all jobs have been submitted. The default is no throttling (all cases submitted).
```

### Example: List all test combinations for a machine

  - The `-m cheyenne` will instruct the script to look for the config file `../config/cheyenne.yaml`.
  - The `-r` should point to large scratch space to use for testing.
  - The `-l` or `--list` prints the *test matrix* - an enumerated list of test combos.

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

### Example: Submit build/test jobs for all the combinations in the test matrix
```
./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne
```

### Example: Only submit jobs for some combinations
 - The `--filter 1,8,10` submits jobs only for combinations 1, 8 and 10 from the test matrix (from --list option).
```
./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne --filter 1,8,10
```

### Example: Create the test directories but don't submit any jobs.
This option is handy to generate all the job scripts, but allow you to manually submit them.
```
./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne --no-submit
```

### Example: Submit the build/test jobs but don't push any test artifacts.
By default, test artifacts are pushed to a git repository defined in ../config/global.yaml. The `--no-artifacts`
option will submit all the build/test jobs, but just leave the results in place for you to examine.
```
./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne --no-artifacts
```

### Example: Only re-submit from existing test directories
By default, existing test directories will be cleaned out and recreated.  This option will leave the existing
directories untouched, and just resubmit the build/test jobs.  This is handy if you need to make some manual
changes, e.g., such as a code change in ESMF, and want to resubmit the jobs.

```
# only resubmit combination 9 (from --list)
./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne --only-resubmit --filter 9
```

### Example: Limit number of active job submissions
If the test matrix is large, then the number of cases may lead to high CPU utilization
on the HPC login nodes, raising alarms for sys admins.
- The `--throttle 4` option below will make sure there is at most 4 active test cases at one time. 
  The script will block in this case until all jobs have been submitted.
- The default behavior is to submit all the jobs for the full test matrix.
```
./test_esmf.py -r ~/esmfdev/esmf-testing-scratch -m cheyenne --throttle 4
```



## Summarize results (summarize_artifacts.py)

