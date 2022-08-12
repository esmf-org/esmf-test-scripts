from combination import Combination


class Matrix:
    """
    Manages a matrix of test case combinations.  These are essentially
    different compiler / mpi / netcdf / bopt combinations.
    """

    def __init__(self, config, bopts, module_path=None):
        """
        Initialize test case matrix from the YAML configuration.
          - config: the "matrix" portion of the YAML
          - bopts: list of build opts (e.g., ['O', 'g']) to generate
          - module_path: if "module use <module_path>" is required on this machine
        """

        self.combinations = []

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
                        combo = Combination()
                        combo.compiler = compiler
                        combo.compiler_module = compiler_module
                        combo.compiler_version = str(compiler_version)
                        combo.mpi = mpi
                        combo.mpi_module = mpi_module
                        combo.netcdf_module = netcdf_module
                        combo.bopt = bopt
                        combo.test_time = test_time
                        combo.build_time = build_time
                        combo.module_path = module_path

                        if mpi_module != "":
                            combo.mpi_version = str(mpi_module.split('/')[-1])
                        if "unload_module" in versions[compiler_version]:
                            combo.unload_module = versions[compiler_version]["unload_module"]
                        if "extra_module" in versions[compiler_version]:
                            combo.extra_module = versions[compiler_version]["extra_module"]
                        if "mpi_env_vars" in mpis[mpi]:
                            combo.mpi_env_vars = mpis[mpi]["mpi_env_vars"]
                        if "hdf5" in versions[compiler_version]:
                            combo.hdf5_module = versions[compiler_version]["hdf5"]
                        if "netcdf-fortran" in versions[compiler_version]:
                            combo.netcdf_fortran_module = versions[compiler_version]["netcdf-fortran"]
                        if "extra_commands" in versions[compiler_version]:
                            combo.extra_commands = versions[compiler_version]["extra_commands"]
                        if "extra_env_vars" in versions[compiler_version]:
                            combo.extra_env_vars = versions[compiler_version]["extra_env_vars"]

                        self.combinations.append(combo)

    def print(self):
        """
        Print out an enumerated list of test combinations in the test matrix.
        """
        print("\nMatrix of test combinations:")
        print("===========================================")
        for i, e in enumerate(self.combinations, start=1):
            print(f"  [{i}] {e.label()}")
        print("\n")
