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
                                              esmf_branch)
        self.subdir = re.sub("/", "_", self.subdir)  # Some branches have a slash, so replace that with underscore
        self.subdir = re.sub(":", "_", self.subdir)  # Branch name might include forked repo, i.e., fork:branch
        self.base_path = os.path.join(self.root_dir, self.subdir)
        self.esmf_clone_path = os.path.join(self.base_path, "esmf")
        self.build_script = os.path.join(self.base_path, "build.bat")
        self.test_script = os.path.join(self.base_path, "test.bat")
        self.collect_script = os.path.join(self.base_path, "collect_artifacts.sh")
        self.build_job_num = 0
        self.test_job_num = 0

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
            cmd.start_process(f"{self.collect_script} {self.build_job_num}")

        self.test_job_num = self.machine.scheduler.submit_job(script_file=self.test_script, after=self.build_job_num)
        logging.debug(f"Submitted test job: {self.test_job_num}")

        if not no_artifacts:
            logging.debug("Starting artifacts monitor for test phase")
            cmd.start_process(f"{self.collect_script} {self.test_job_num}")

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
            out.write(
                self.machine.scheduler.create_headers(script_file=self.build_script, timeout=self.combo.build_time))
            out.write(self._create_modules_fragment())
            _module_file = os.path.join(self.base_path, "module-build.log")
            out.write(f"module list >& {_module_file}\n")
            out.write(f"cd {self.esmf_clone_path}\n")
            out.write(f"set -o pipefail\n")
            out.write(f"make info 2>&1| tee ../info.log\n")
            out.write(f"make -j {self.machine.scheduler.tasks_per_node} 2>&1| tee ../build.log\n")

            # TODO: remove fake ones below
            # out.write(f"echo `date` > ../info.log\n")
            # out.write(f"echo 'FAKE INFO JOB COMPLETE' >> ../info.log\n")
            # out.write(f"echo `date` > ../build.log\n")
            # out.write(f"echo 'FAKE BUILD JOB COMPLETE' >> ../build.log\n")
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
            out.write(f"cd {self.esmf_clone_path}\n")

            # TODO: remove below after debugging
            # out.write(f"echo 'FAKE TEST JOB COMPLETE' >> ../test.log\n")

            out.write(f"make install 2>&1| tee ../install.log\n")
            out.write(f"make all_tests 2>&1| tee ../test.log\n")
            if self.combo.mpi_module.lower() != "none":
                out.write(f"export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`\n")
                out.write("cd ../nuopc-app-prototypes\n")
                out.write("./testProtos.sh 2>&1| tee ../nuopc.log\n")
            return out.getvalue()

    def _create_collect_artifacts_script(self):
        """
        Create the script that will collect the artifacts during the build phase.
        """

        _artifacts_base_dir = os.path.join(self.artifacts_root,
                                           re.sub("/", "_", self.esmf_branch),
                                           self.combo.compiler,
                                           self.combo.compiler_version,
                                           self.combo.bopt,
                                           self.combo.mpi,
                                           self.combo.mpi_version)
        _collect_script_path = os.path.join(self.scripts_root, "collect_artifacts.py")

        with StringIO() as out:
            out.write("#!/bin/sh -l\n")
            out.write(f"{_collect_script_path} \\\n")
            out.write(f" --test-dir {self.base_path} \\\n")
            out.write(f" --artifacts-dir {_artifacts_base_dir} \\\n")
            out.write(f" --artifacts-branch {self.machine.name} \\\n")
            out.write(f" --scheduler-type {self.machine.scheduler.sched_type} \\\n")
            if logging.root.isEnabledFor(logging.DEBUG):
                out.write(f" --debug \\\n")
            out.write(" --jobid ${1:-0}\n")
            return out.getvalue()
