# pylint: disable=missing-function-docstring
import json
from pathlib import Path
import job.request as _job


def test_read_yaml():
    expected = {
        "type": "7.4.0",
        "compiler": "gnu/7.4.0",
        "netcdf": "netcdf/4.7.3",
        "mpi": {"openmpi": {"module": "openmpi/4.0.3"}},
        "extra_env_vars": {"var1": "ESMF_F90COMPILER=mpif90"},
    }

    job = _job.read_yaml(Path("./tests/fixtures/cheyenne.yaml"))
    compiler = list(job.compilers)[0]
    actual = list(compiler.versions)[0].__dict__

    assert actual == expected


def test_to_json():

    with open(Path("./tests/fixtures/cheyenne.json")) as _file:

        expected = json.load(_file)
        actual = json.loads(
            _job.read_yaml(Path("./tests/fixtures/cheyenne.yaml")).to_json()
        )

        assert actual == expected
