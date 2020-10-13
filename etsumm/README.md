# ESMF Testing Summarization (`etsumm`)

Run ESMF pseudo-testing against ESMF-related test output.

# Installation

See the project [Dockerfile](Dockerfile).

## Docker Build

```
ETSUMM_BRANCH=<GitHub branch, if not provided defaults to master>
ETSUMM_RUNTESTS="OFF"  # If "ON" run unit tests when building.
docker build -t etsumm --build-arg   ETSUMM_BRANCH=${ETSUMM_BRANCH} \
                       --build-arg ETSUMM_RUNTESTS=${ETSUMM_RUNTESTS} .
```

# `etcli` (ESMF Testing Command Line Interface)

The [etcli.py](src/etsumm/etcli.py) command line interface is the primary entry point for using the test summarization procedures. Any functionality added to `etsumm` should have a subcommand associated with it.

```
docker run --rm etsumm --help
```

## Run ESMF Out File Tests

Run a test suite against a single ESMF test out file to find any failures.

```
OUTFILE_DIR=<path to directory containing the test out files>
OUTFILE_NAME=<filename in OUTFILE_DIR to run tests against>
docker run --rm -v ${OUTFILE_DIR}:/opt/mount:ro etsumm check-outfile --outfile /opt/mount/${OUTFILE_NAME}
```

## Run ESMF Artifact Tests

Run a test suite against the [ESMF test artifacts](https://github.com/esmf-org/esmf-test-artifacts) repository to identify any failures. The test suite will create a directory containing XML output in `xunit` format that may be ingested by testing platforms such as CircleCI.

```
ESMF_ARTIFACTS=<path to ESMF test artifacts repository containing folder>
docker run --rm -v ${ESMF_ARTIFACTS}:/opt/mount: etsumm artifact-tests --artifacts /opt/mount/esmf-test-artifacts --xmlout /opt/mount/xml-artifact-tests --branch develop --platform cheyenne --compiler gfortran --comm mpich3
```
