import logging
import os
import re
from io import StringIO
from machine import Machine
from combination import Combination
import cmd


class Case:
    """
    A particular test case that can be run.
    A test case is associated with a combination (compiler, mpi, etc.)
      and a particular branch of ESMF to test.
    """

    def __init__(self, combo: Combination, scripts_root, root_dir, artifacts_root, repos, esmf_branch, nuopc_branch,
                 machine: Machine):
        self.combo = combo
        self.scripts_root = scripts_root
        self.root_dir = root_dir
        self.artifacts_root = artifacts_root
        self.repos = repos  # map of repository locations
        self.machine = machine
        self.esmf_branch = esmf_branch
        self.nuopc_branch = nuopc_branch
        self.subdir = "{}_{}_{}_{}_{}".format(self.combo.compiler,
                                              self.combo.compiler_version,
                                              self.combo.mpi,
                                              self.combo.bopt,
                                              re.sub(":", "_", esmf_branch))
        self.subdir = re.sub("/", "_", self.subdir)  # Some branches have a slash, so replace that with underscore
        self.base_path = os.path.join(self.root_dir, self.subdir)
        self.temp_path = os.path.join(self.root_dir, self.subdir)
        self.rsync = False
        if self.machine.rsync:
            self.rsync = True
            self.temp_path = os.path.join(self.machine.rsync, self.subdir)
        self.esmf_clone_path = os.path.join(self.base_path, "esmf")
        self.build_script = os.path.join(self.base_path, "build.bat")
        self.test_script = os.path.join(self.base_path, "test.bat")
        self.collect_script = os.path.join(self.base_path, "collect_artifacts.sh")
        self.esmpy_install_script = os.path.join(self.base_path, "esmpy_install.bat")
        self.build_job_num = 0
        self.test_job_num = 0
        self.collect_build_process = 0
        self.collect_test_process = 0

    def label(self):
        """
        Returns a string representation of this object.
        """
        return "[" + self.combo.label() + " / " + self.esmf_branch + "]"

    def set_up(self):
        """
        Set up test directory for this case.
        Clone repositories needed for testing, e.g., ESMF and nuopc-app-prototypes.
        Generate test scripts to submit.
        """
        cmd.chdir(self.root_dir)
        if self.machine.lustre and os.path.isfile(self.base_path):
            cmd.runcmd(f"lfs find {self.base_path} -t f -print0 | xargs -0 munlink")
        cmd.runcmd(f"rm -rf {self.base_path}")
        cmd.runcmd(f"mkdir -p {self.base_path}")
        cmd.chdir(self.base_path)

        # generate build script
        with open(self.build_script, "w") as _file:
            _file.write(self._create_build_script())

        # generate build artifacts collection script
        with open(self.collect_script, "w") as _file:
            _file.write(self._create_collect_artifacts_script())
        cmd.runcmd(f"chmod u+x {self.collect_script}")

        # generate test script
        with open(self.test_script, "w") as _file:
            _file.write(self._create_test_script())

        # conditionally generate ESMPy install scripts
        if self.combo.python_module is not None:
            with open(self.esmpy_install_script, "w") as _file:
                _file.write(self._create_esmpy_install_script())
            cmd.runcmd(f"chmod u+x {self.esmpy_install_script}")

        # determine if a fork of ESMF is used
        if ":" in self.esmf_branch:
            _split = self.esmf_branch.split(":")
            _fork = re.sub("esmf-org", _split[0].strip(), self.repos["esmf"])
            _branch = _split[1]
            logging.debug(f"Pulling from fork of ESMF: {_fork}:{_branch}")
        else:
            _fork = self.repos["esmf"]
            _branch = self.esmf_branch

        # clone repositories
        cmd.clone_repo(url=_fork, local_name="esmf", branch=_branch)
        cmd.clone_repo(url=self.repos["nuopc"], local_name="nuopc-app-prototypes", branch=self.nuopc_branch)

    def submit(self, no_artifacts=False):
        """
        Submit the jobs to run this test case.
          - no_artifacts: whether to skip copying and pushing the test artifacts
        """
        cmd.chdir(self.base_path)

        self.build_job_num = self.machine.scheduler.submit_job(script_file=self.build_script)
        logging.debug(f"Submitted build job: {self.build_job_num}")

        if not no_artifacts:
            logging.debug("Starting artifacts monitor for build phase")
            self.collect_build_process = cmd.start_process(f"{self.collect_script} {self.build_job_num} build")

        self.test_job_num = self.machine.scheduler.submit_job(script_file=self.test_script, after=self.build_job_num)
        logging.debug(f"Submitted test job: {self.test_job_num}")

        if not no_artifacts:
            logging.debug("Starting artifacts monitor for test phase")
            self.collect_test_process = cmd.start_process(f"{self.collect_script} {self.test_job_num} test")

    def finished(self):
        """
        Query whether all the jobs have finished for this case.
        """
        return self.machine.scheduler.check_queue(self.test_job_num)

    def _create_modules_fragment(self):
        """
        Create the module load section used at the top of both the build and test scripts.
        """
        e = self.combo
        with StringIO() as out:
            if e.unload_module is not None:
                out.write(f"module unload {e.unload_module}\n")
            if e.module_path is not None:
                out.write(f"module use {e.module_path}\n")
            if e.extra_module is not None:
                out.write(f"module load {e.extra_module}\n")
            if e.mpi_module.lower() == "none":
                _mpi_module = ""
            else:
                _mpi_module = e.mpi_module
            out.write(f"module load {e.compiler_module} {_mpi_module}\n")
            if e.hdf5_module is not None:
                out.write(f"module load {e.hdf5_module}\n")
            if e.netcdf_module.lower() != "none":
                out.write(f"module load {e.netcdf_module}\n")
            if e.netcdf_fortran_module is not None:
                out.write(f"module load {e.netcdf_fortran_module}\n")
            if e.python_module is not None:
                out.write(f"module load {e.python_module}\n")

            out.write("\nset -x\n")
            if e.extra_env_vars is not None:
                for _var in e.extra_env_vars:
                    out.write(f"export {_var}\n")
            if e.extra_commands is not None:
                for _cmd in e.extra_commands:
                    out.write(f"{_cmd}\n")
            if e.mpi_env_vars is not None:
                for _var in e.mpi_env_vars:
                    out.write(f"export {_var}\n")

            out.write(f"export ESMF_DIR={self.esmf_clone_path}\n")
            out.write(f"export ESMF_COMPILER={e.compiler}\n")
            out.write(f"export ESMF_COMM={e.mpi}\n")
            if e.netcdf_module.lower() != "none":
                out.write("export ESMF_NETCDF=nc-config\n")
            out.write(f"export ESMF_BOPT='{e.bopt}'\n")
            out.write(f"export ESMF_TESTEXHAUSTIVE='ON'\n")
            out.write(f"export ESMF_TESTWITHTHREADS='ON'\n")
            if e.mpi_module.lower() == "none":
                if e.mpi_env_vars is None or not any(filter(lambda x: "MPIRUN=" in x, e.mpi_env_vars)):
                    _esmf_path = os.path.join(self.esmf_clone_path, "src/Infrastructure/stubs/mpiuni/mpirun")
                    out.write(f"export ESMF_MPIRUN={_esmf_path}\n")

            return out.getvalue()

    def _create_build_script(self):
        """
        Create the script that will build ESMF.
        """
        with StringIO() as out:
            out.write(
                self.machine.scheduler.create_headers(script_file=self.build_script, timeout=self.combo.build_time))
            out.write(self._create_modules_fragment())
            _module_file = os.path.join(self.base_path, "module-build.log")
            out.write(f"module list >& {_module_file}\n")
            out.write(f"export WORK_ROOT={self.base_path}\n")
            out.write(f"export TEMP_ROOT={self.temp_path}\n")
            if self.rsync:
                out.write(f"rsync -a $WORK_ROOT/esmf $TEMP_ROOT\n")
            out.write(f"cd $TEMP_ROOT/esmf\n")
            out.write(f"export ESMF_DIR=`pwd`\n")
            out.write(f"set -o pipefail\n")
            out.write(f"make info 2>&1| tee $WORK_ROOT/info.log\n")
            out.write(f"make -j {self.machine.scheduler.tasks_per_node} 2>&1| tee $WORK_ROOT/build.log\n")
            if self.rsync:
                out.write(f"cd\n")
                out.write(f"rsync -a $TEMP_ROOT/esmf $WORK_ROOT\n")
                out.write(f"rm -rf $TEMP_ROOT\n")

            return out.getvalue()

    def _create_test_script(self):
        """
        Create the script that will run the ESMF tests and the NUOPC app tests.
        """
        with StringIO() as out:
            out.write(self.machine.scheduler.create_headers(script_file=self.test_script, timeout=self.combo.test_time))
            out.write(self._create_modules_fragment())
            _module_file = os.path.join(self.base_path, "module-test.log")
            out.write(f"module list >& {_module_file}\n")
            out.write(f"export WORK_ROOT={self.base_path}\n")
            out.write(f"export TEMP_ROOT={self.temp_path}\n")
            if self.rsync:
                out.write(f"rsync -a $WORK_ROOT/esmf $TEMP_ROOT\n")
                out.write(f"rsync -a $WORK_ROOT/nuopc-app-prototypes $TEMP_ROOT\n")
            out.write(f"cd $TEMP_ROOT/esmf\n")
            out.write(f"export ESMF_DIR=`pwd`\n")
            out.write(f"make install 2>&1| tee $WORK_ROOT/install.log\n")
            out.write(f"make all_tests 2>&1| tee $WORK_ROOT/test.log\n")
            out.write(f"export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n")
            if self.combo.mpi.lower() != "mpiuni":
                out.write("cd ../nuopc-app-prototypes\n")
                out.write("./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log\n")
            if self.rsync:
                out.write(f"cd\n")
                out.write(f"rsync -a $TEMP_ROOT/esmf $WORK_ROOT\n")
                out.write(f"rsync -a $TEMP_ROOT/nuopc-app-prototypes $WORK_ROOT\n")
                out.write(f"rm -rf $TEMP_ROOT\n")
            if self.combo.python_module:
                out.write(f"ssh {self.machine.head_node_name} {self.esmpy_install_script}\n")
                out.write(f"cd {self.base_path}\n")
                out.write(f". esmpy_venv/bin/activate\n")
                _esmpy_path = os.path.join(self.esmf_clone_path, "src", "addon", "esmpy")
                out.write(f"cd {_esmpy_path}\n")
                _esmpy_test_log = os.path.join(self.base_path, "esmpy-test.log")
                out.write(f"make test 2>&1| tee {_esmpy_test_log}\n")
                out.write(f"deactivate\n")

            return out.getvalue()

    def _create_esmpy_install_script(self):
        """
        Create the script that installs ESMPy. This may be called by the head node
        since pip install will want to access the internet.
        """

        with StringIO() as out:
            out.write("#!/bin/sh\n")
            out.write(self._create_modules_fragment())
            out.write(f"cd {self.esmf_clone_path}\n")
            out.write(f"export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n")

            out.write(f"cd {self.base_path}\n")
            out.write(f"rm -rf esmpy_venv\n")
            out.write(f"python3 -m venv esmpy_venv\n")
            out.write(f". esmpy_venv/bin/activate\n")

            _esmpy_path = os.path.join(self.esmf_clone_path, "src", "addon", "esmpy")
            out.write(f"cd {_esmpy_path}\n")
            _esmpy_install_log = os.path.join(self.base_path, "esmpy-install.log")
            out.write(f"python3 -m pip install . 2>&1| tee {_esmpy_install_log}\n")
            _esmpy_download_log = os.path.join(self.base_path, "esmpy-download.log")
            out.write(f"make download 2>&1| tee {_esmpy_download_log}\n")
            out.write(f"deactivate\n")

            return out.getvalue()

    def _create_collect_artifacts_script(self):
        """
        Create the script that will collect the artifacts during the build phase.
        """
        _artifacts_base_dir = os.path.join(self.artifacts_root,
                                           re.sub("/", "_", re.sub(":", "_", self.esmf_branch)),
                                           self.combo.compiler,
                                           self.combo.compiler_version,
                                           self.combo.bopt,
                                           self.combo.mpi,
                                           self.combo.mpi_version)
        _collect_script_path = os.path.join(self.scripts_root, "collect_artifacts.py")

        with StringIO() as out:
            out.write("#!/bin/sh\n")
            out.write(f"{_collect_script_path} \\\n")
            out.write(f" --test-dir {self.base_path} \\\n")
            out.write(f" --artifacts-dir {_artifacts_base_dir} \\\n")
            out.write(f" --artifacts-branch {self.machine.name} \\\n")
            out.write(f" --scheduler-type {self.machine.scheduler.sched_type} \\\n")
            if logging.root.isEnabledFor(logging.DEBUG):
                out.write(f" --debug \\\n")
            out.write(" --jobid ${1:-0} \\\n")
            out.write(" --phase ${2:-all}\n")
            return out.getvalue()
