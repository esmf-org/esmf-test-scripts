Run ESMF pseudo-tests using a test outfile.

Requirements:
* `pytest`

To run:
```
cd ${ESMF_DIR} || exit 1
make all_tests 2>&1 | tee make-all_tests.out
export ESMF_TESTTARGET=${ESMF_DIR}/make-all_tests.out
cd <path-to>/etsumm/sh || exit 1
bash run.sh
```

To check only specific test targets, configure using:
```
export ESMF_TESTTARGET="examples;system tests"
```
