import job.request as _job


def test_read_yaml():
    expected = {
        "type": "7.4.0",
        "compiler": "gnu/7.4.0",
        "netcdf": "netcdf/4.7.3",
        "mpi": {"openmpi": {"module": "openmpi/4.0.3"}},
        "extra_env_vars": {"var1": "ESMF_F90COMPILER=mpif90"},
    }

    job = _job.read_yaml()
    compiler = list(job.compilers)[0]
    actual = list(compiler.versions)[0].__dict__

    assert actual == expected
