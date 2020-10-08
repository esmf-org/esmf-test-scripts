#!/usr/bin/env bash
set -Eeuxo pipefail


: "${ESMF_TESTOUTFILE?Need to set}"

#export ESMF_DIR=~/l/esmf
#export ESMF_TESTOUTFILE=~/l/notes/scratch/esmf-make-all_tests.out
#export ESMF_TESTTARGET="all_tests"
#export ESMF_TESTTARGET="examples"
#export ESMF_TESTTARGET="system tests;examples;unit tests"
TEST_TARGET=../src/etsumm/run.py


mkdir -p /tmp/artifacts
pytest --junitxml=/tmp/artifacts/junit.xml ${TEST_TARGET}
