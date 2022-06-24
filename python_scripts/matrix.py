from environment import Environment


class Matrix:
    """
    Manages a matrix of test case environments.  These are essentially
    different compiler / mpi / netcdf / bopt combinations.
    """

    def __init__(self, config, bopts, module_path=None):
        """
        Initialize test case matrix from the YAML configuration.
          - config: the "matrix" portion of the YAML
          - bopts: list of build opts (e.g., ['O', 'g']) to generate
          - module_path: if "module use <module_path>" is required on this machine
        """

        self.environments = []

        for compiler in config:
            versions = config[compiler]['versions']
            test_time = config[compiler].get('test_time', "1:00:00")
            build_time = config[compiler].get('build_time', "1:00:00")
            for compiler_version in versions:
                compiler_module = versions[compiler_version]['compiler']
                mpis = versions[compiler_version]['mpi']
                netcdf_module = versions[compiler_version]['netcdf']
                for mpi in mpis:
                    mpi_module = mpis[mpi]['module']
                    for bopt in bopts:
                        env = Environment()
                        env.compiler = compiler
                        env.compiler_module = compiler_module
                        env.compiler_version = compiler_version
                        env.mpi = mpi
                        env.mpi_module = mpi_module
                        env.netcdf_module = netcdf_module
                        env.bopt = bopt
                        env.test_time = test_time
                        env.build_time = build_time
                        env.module_path = module_path

                        if mpi_module != "":
                            env.mpi_version = mpi_module.split('/')[-1]
                        if "unload_module" in versions[compiler_version]:
                            env.unload_module = versions[compiler_version]["unload_module"]
                        if "extra_module" in versions[compiler_version]:
                            env.extra_module = versions[compiler_version]["extra_module"]
                        if "mpi_env_vars" in mpi:
                            env.mpi_env_vars = mpi["mpi_env_vars"]
                        if "hdf5" in versions[compiler_version]:
                            env.hdf5_module = versions[compiler_version]["hdf5"]
                        if "netcdf-fortran" in versions[compiler_version]:
                            env.netcdf_fortran_module = versions[compiler_version]["netcdf-fortran"]
                        if "extra_commands" in versions[compiler_version]:
                            env.extra_commands = versions[compiler_version]["extra_commands"]
                        if "extra_env_vars" in versions[compiler_version]:
                            env.extra_env_vars = versions[compiler_version]["extra_env_vars"]

                        self.environments.append(env)

    def print(self):
        """
        Print out an enumerated list of test environments in the test matrix.
        """
        print("\nMatrix of test environments:")
        print("===========================================")
        for i, e in enumerate(self.environments, start=1):
            print(f"  [{i}] {e.label()}")
        print("\n")