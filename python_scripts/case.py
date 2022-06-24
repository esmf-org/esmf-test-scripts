import logging
import os
import re
from io import StringIO
from environment import Environment
import cmd


class Case:
    """
    A particular test case that can be run.
    A test case is associated with an environment (compiler, mpi, etc.)
      and a particular branch of ESMF to test.
    """

    def __init__(self, env: Environment, root_dir, repos, esmf_branch, nuopc_branch, scheduler):
        self.env = env
        self.root_dir = root_dir
        self.repos = repos  # map of repository locations
        self.scheduler = scheduler
        self.esmf_branch = esmf_branch
        self.nuopc_branch = nuopc_branch

        self.subdir = "{}_{}_{}_{}_{}".format(self.env.compiler,
                                              self.env.compiler_version,
                                              self.env.mpi,
                                              self.env.bopt,
                                              esmf_branch)
        self.subdir = re.sub("/", "_", self.subdir)  # Some branches have a slash, so replace that with underscore
        self.base_path = os.path.join(self.root_dir, self.subdir)
        self.esmf_clone_path = os.path.join(self.base_path, "esmf")
        self.build_script = os.path.join(self.base_path, f"build-{self.subdir}.bat")
        self.test_script = os.path.join(self.base_path, f"test-{self.subdir}.bat")

    def set_up(self):
        """
        Clone repositories needed for testing, e.g., ESMF and nuopc-app-prototypes.
        Generate test scripts to submit.
        """
        cmd.chdir(self.root_dir)
        cmd.runcmd(f"rm -rf {self.base_path}")
        cmd.runcmd(f"mkdir -p {self.base_path}")
        cmd.chdir(self.base_path)

        # generate build script
        with open(self.build_script, "w") as _file:
            _file.write(self._create_build_script())

        # generate test script
        with open(self.test_script, "w") as _file:
            _file.write(self._create_test_script())

        # clone repositories
        cmd.clone_repo(url=self.repos["esmf"], local_name="esmf", branch=self.esmf_branch)
        cmd.clone_repo(url=self.repos["nuopc"], local_name="nuopc-app-prototypes", branch=self.nuopc_branch)

    def submit(self, no_artifacts=False):
        """
        Submit the jobs to run this test case.
          - no_artifacts: whether to skip copying and pushing the test artifacts
        """
        build_job_num = self.scheduler.submit_job(script_file=self.build_script)
        logging.debug(f"Submitted build job: {build_job_num}")

        if not no_artifacts:
            logging.debug("ARTIFACTS COLLECTION NOT SUPPORTED - BUILD")

        test_job_num = self.scheduler.submit_job(script_file=self.test_script, after=build_job_num)
        logging.debug(f"Submitted test job: {test_job_num}")

        if not no_artifacts:
            logging.debug("ARTIFACTS COLLECTION NOT SUPPORTED - TEST")

        # monitor_cmd_build = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
        #    test.scripts_path,
        #    jobnum,
        #    subdir,
        #    test.machine_name,
        #    self.type,
        #    test.test_root,
        #    test.artifacts_root,
        #    mpiver,
        #    branch,
        #    test.dryrun,

    def _create_modules_fragment(self):
        """
        Create the module load section used at the top of both the build and test scripts.
        """
        e = self.env
        with StringIO() as out:
            if e.unload_module is not None:
                out.write(f"module unload {e.unload_module}\n")
            if e.module_path is not None:
                out.write(f"module use {e.module_path}\n")
            if e.extra_module is not None:
                out.write(f"module load {e.extra_module}\n")
            if e.mpi_env_vars is not None:
                for _var in e.mpi_env_vars:
                    out.write(f"export {_var}\n")
            if e.mpi_module.lower() == "none":
                _mpi_module = ""
            else:
                _mpi_module = e.mpi_module
            out.write(f"module load {e.compiler_module} {_mpi_module}\n")
            if e.netcdf_module.lower() != "none":
                out.write(f"module load {e.netcdf_module}\n")

            if e.hdf5_module is not None:
                out.write(f"module load {e.hdf5_module}\n")
            if e.netcdf_fortran_module is not None:
                out.write(f"module load {e.netcdf_fortran_module} \n")

            out.write("\nset -x\n")
            if e.extra_env_vars is not None:
                for _var in e.extra_env_vars:
                    out.write(f"export {_var}\n")
            if e.extra_commands is not None:
                for _cmd in e.extra_commands:
                    out.write(f"{_cmd}\n")

            out.write(f"export ESMF_DIR={self.esmf_clone_path}\n")
            out.write(f"export ESMF_COMPILER={e.compiler}\n")
            out.write(f"export ESMF_COMM={e.mpi}\n")
            if e.netcdf_module.lower() != "none":
                out.write("export ESMF_NETCDF=nc-config\n")
            out.write(f"export ESMF_BOPT='{e.bopt}'\n")
            out.write(f"export ESMF_TESTEXHAUSTIVE='ON'\n")
            out.write(f"export ESMF_TESTWITHTHREADS='ON'\n")
            if e.mpi_module.lower() == "none":
                _esmf_path = os.path.join(self.esmf_clone_path, "src/Infrastructure/stubs/mpiuni/mpirun")
                out.write(f"export ESMF_MPIRUN={_esmf_path}\n")

            return out.getvalue()

    def _create_build_script(self):
        """
        Create the script that will build ESMF.
        """
        with StringIO() as out:
            out.write(self.scheduler.create_headers(script_file=self.build_script, timeout=self.env.build_time))
            out.write(self._create_modules_fragment())
            _module_file = os.path.join(self.base_path, "module-build.log")
            out.write(f"module list >& {_module_file}\n")
            out.write(f"cd {self.esmf_clone_path}\n")
            out.write(f"make -j {self.scheduler.tasks_per_node} 2>&1| tee ../build_$JOBID.log\n")
            return out.getvalue()

    def _create_test_script(self):
        """
        Create the script that will run all of the ESMF tests and the NUOPC app tests.
        """
        with StringIO() as out:
            out.write(self.scheduler.create_headers(script_file=self.test_script, timeout=self.env.test_time))
            out.write(self._create_modules_fragment())
            _module_file = os.path.join(self.base_path, "module-test.log")
            out.write(f"module list >& {_module_file}\n")
            out.write(f"cd {self.esmf_clone_path}\n")
            out.write(f"make info 2>&1| tee ../info.log\nmake install 2>&1| tee ../install_$JOBID.log\n" +
                      "make all_tests 2>&1| tee ../test_$JOBID.log\n")
            if self.env.mpi_module.lower() != "none":
                out.write(f"export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n")
                out.write("cd ../nuopc-app-prototypes\n./testProtos.sh 2>&1| tee ../nuopc_$JOBID.log\n")
            return out.getvalue()
