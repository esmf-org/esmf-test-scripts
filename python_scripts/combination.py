
class Combination:
    """
    And individual test case (configuration).
    """

    def __init__(self):
        self.compiler = None
        self.compiler_module = None
        self.compiler_version = None
        self.mpi = None
        self.mpi_module = None
        self.mpi_version = None
        self.netcdf_module = None
        self.bopt = None
        self.test_time = None
        self.build_time = None
        self.unload_module = None
        self.extra_module = None
        self.mpi_env_vars = None
        self.hdf5 = None
        self.hdf5_module = None
        self.netcdf_fortran_module = None
        self.extra_commands = None
        self.extra_env_vars = None
        self.module_path = None
        self.esmpy_env_vars = None
        self.python_conda_env = None

    def label(self):
        return f"{self.compiler} {self.compiler_version} / {self.mpi} {self.mpi_version} / {self.netcdf_module} / {self.bopt}"
