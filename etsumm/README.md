Run ESMF pseudo-tests using a test outfile.

# Installation

See the project [Dockerfile](Dockerfile) for installation. It is recommended that the Docker entrypoint is used. The recipe steps can be easily adapted for a local installation.

## Docker Build

```
BRANCH=<GitHub branch, if not provided defaults to master>
docker build -t etsumm --build-arg BRANCH=${BRANCH} .
```

## Getting Help from `etcli`

```
docker run --rm etsumm --help
docker run --rm etsumm check-outfile --help
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

## Run _etsumm_ Project Unit Tests

```
docker run --rm --entrypoint pytest etsumm src
```
