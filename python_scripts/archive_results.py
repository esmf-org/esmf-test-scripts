import argparse
import glob
import itertools
import logging
import os
import pathlib
import re
import shutil
import subprocess
import time
from datetime import datetime
from typing import List, Any

from noscheduler import NoScheduler
from pbs import PBS
from slurm import Slurm

logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s %(name)-12s %(levelname)-8s %(message)s",
    handlers=[logging.FileHandler("archive_results.log"), logging.StreamHandler()],
)

SEPARATOR = "\n===================================================================\n"

SLEEP_TIME_IN_SECONDS = 30
TIMEOUT_IN_SECONDS = 144000


def _clean_results(value: str) -> str:
    return re.sub(" FAIL", "\tFAIL", value)


class ArchiveResults:
    def __init__(
            self,
            job_id,
            build_basename: str,
            machine_name,
            scheduler,
            test_root_dir,
            artifacts_root,
            mpi_version,
            branch,
            is_dry_run,
    ):

        self._scheduler = None
        self._output_path = None
        self.build_basename = build_basename
        self._is_dry_run = is_dry_run

        self.root_path = pathlib.Path(__file__).parent.absolute()
        self.build_hash = None
        self.build_time = None
        self.job_id = job_id
        self.machine_name = machine_name
        self.test_root_dir = test_root_dir
        self.artifacts_root = artifacts_root
        self.mpi_version = mpi_version
        self.branch = branch
        self.requested_scheduler = scheduler
        self.start()

    @property
    def scheduler(self):
        """dynamically returns the appropriate scheduler"""
        if self._scheduler is None:
            self._scheduler = self.get_scheduler(self.requested_scheduler)
        return self._scheduler

    @property
    def build_dir(self):
        """returns the build directory"""
        return f"{self.test_root_dir}/{self.build_basename}"

    @property
    def is_job_done(self) -> bool:
        """returns True if the job is marked completed by scheduler"""
        return self.scheduler.check_queue(self.job_id)

    @property
    def is_dry_run(self):
        """returns true if the request is for a dry run"""
        return True if (self._is_dry_run == "True" or self._is_dry_run is True) else False

    @property
    def dir_branch(self):
        """returns the formatted dir_branch path"""
        return re.sub("/", "_", self.branch)

    @property
    def build_attributes(self):
        """[intel_18.0.4_mpiuni_O_develop]"""
        return self.build_basename.split("_", maxsplit=4)

    @property
    def output_path(self):
        [compiler, version, mpi_flavor, build_type, _] = self.build_attributes
        if self._output_path is None:
            if self.mpi_version not in ["None", "none", None]:
                self._output_path = f"{self.artifacts_root}/{self.dir_branch}/{self.machine_name}/{compiler}/{version}/{build_type}/{mpi_flavor}/{self.mpi_version} "
        return self._output_path

    @property
    def make_info(self):
        try:
            return subprocess.check_output(f"cat {self.build_dir}/module-build.log; cat {self.build_dir}/info.log",
                                           shell=True).strip().decode("utf-8")
        except subprocess.CalledProcessError:
            return f"error finding {self.build_dir}/module-build.log or {self.build_dir}/info.log"

    def start(self):
        logging.debug("Is a dry run = [%s]", self.is_dry_run)
        start_time = time.time()
        timeout_in_seconds = 144000
        while True:
            current_time = time.time()
            elapsed_time = current_time - start_time

            if self.is_job_done:
                logging.info("job completed [%s]", self.job_id)
                logging.debug("oe file list [%s]", ", ".join(self.oe_file_list))
                self.copy_artifacts(self.oe_file_list)
                break
            time.sleep(SLEEP_TIME_IN_SECONDS)

            if elapsed_time > timeout_in_seconds:
                logging.debug("Finished iterating in: " + str(int(elapsed_time)) + " seconds")
                break

    @property
    def oe_file_list(self) -> List[Any]:
        """returns the oe file list?"""
        log_list = glob.glob(f"{self.test_root_dir}/{self.build_basename}/*_{self.job_id}*.log")
        batch_list = glob.glob(f"{self.test_root_dir}/{self.build_basename}/*.bat")
        module_lost_list = glob.glob(f"{self.test_root_dir}/{self.build_basename}/module-*.log")

        return list(itertools.chain(log_list, batch_list, module_lost_list))

    def run_command(self, cmd):
        if self.is_dry_run:
            logging.debug(f"would have executed {cmd}")
        else:
            os.system(cmd)

    def get_scheduler(self, scheduler: str):
        """returns scheduler based on scheduler type"""
        _map = {
            "pbs": PBS(self),
            "Slurm": Slurm(self),
            "none": NoScheduler(self)
        }
        return _map[scheduler]

    def create_summary(
            self,
            unit_results,
            system_results,
            example_results,
            nuopc_pass,
            nuopc_fail,
            make_info,
            esmfmkfile,
    ):
        if len(esmfmkfile) > 0:
            self.build_time = datetime.fromtimestamp(os.path.getmtime(esmfmkfile[0]))
        else:
            self.build_time = datetime.now().strftime("%H:%M:%S")
        _file_name = pathlib.Path(f"{self.output_path}/summary.dat")
        logging.debug("writing to [%s]", _file_name)
        with open(_file_name, "w") as summary_file:
            summary_file.write(SEPARATOR)
            summary_file.write(
                "Build for = {}, mpi version {} on {} esmf_os: {}\n".format(
                    self.build_basename, self.mpi_version, self.machine_name, self.esmf_os
                )
            )
            summary_file.write(f"Build time = {self.build_time}\n")
            summary_file.write(f"git hash = {self.build_hash}\n\n")
            summary_file.write(f"unit test results   \t{_clean_results(unit_results)}")
            summary_file.write(f"system test results \t{_clean_results(system_results)}")
            summary_file.write(f"example test results \t{_clean_results(example_results)}")
            summary_file.write(
                f"nuopc test results \tPASS {nuopc_pass} \tFAIL {nuopc_fail}\n\n"
            )
            summary_file.write(SEPARATOR)
            summary_file.write(f"\n\n{make_info}\n\n")
            summary_file.write(SEPARATOR)

    @property
    def esmf_os(self):
        """returns the esmf os"""
        return (
            subprocess.check_output(
                f"grep ESMF_OS: {self.build_dir}/*_{self.job_id}.log",
                shell=True,
            ).strip().decode("utf-8")).split()[1]

    def copy_artifacts(self, oe_filelist: List[Any]):
        _, _, _, build_type, _ = self.build_attributes
        logging.debug("copy_artifacts(%s)", ", ".join(oe_filelist))
        logging.debug("branch is: [%s]", self.branch)
        logging.debug("dir branch is: [%s]", self.dir_branch)
        try:
            cwd = os.getcwd()
            logging.debug("cwd = [%s]", cwd)
        except OSError:
            logging.error("failed to get cwd: [%s], [%s]", self.build_basename, self.dir_branch)
            exit(1)
        os.chdir(self.build_dir)
        try:
            self.build_hash = (
                subprocess.check_output("git describe --tags --abbrev=7", shell=True).strip().decode("utf-8")
            )
        except subprocess.CalledProcessError as err:
            logging.error("could not fetch build hash: [%s] [%s]", err, os.getcwd())
            exit(1)
        os.chdir(cwd)
        logging.debug(f"build_basename is {self.build_basename}")

        # copy/rename the stdout/stderr files to artifacts out directory
        logging.debug(f"output path = [%s]", self.output_path)
        if not oe_filelist:
            return
        if not self.is_test_stage(oe_filelist):
            # remove old files in out directory
            logging.debug("just the build stage, so remove old files")
            self.run_command(
                f"mkdir -p {self.output_path}/out; rm {self.output_path}/*/*; rm {self.output_path}/*.log; rm {self.output_path}/summary.dat")
        for cfile in oe_filelist:
            nfile = os.path.basename(re.sub(f"_{self.job_id}", "", cfile))
            cp_cmd = f"echo `date` > {self.output_path}/out/{nfile}"
            self.run_command(cp_cmd)
            cp_cmd = f"cat {cfile} >> {self.output_path}/out/{nfile}"
            self.run_command(cp_cmd)
        if not self.is_test_stage(oe_filelist):
            command = f"grep success {self.build_dir}/build_{self.job_id}.log"
            unit_results = "-1 -1"
            system_results = "-1 -1"
            example_results = "-1 -1"
            nuopc_pass = "-1"
            nuopc_fail = "-1"
            try:
                subprocess.check_output(f"{command}", shell=True).strip().decode("utf-8")
            except subprocess.CalledProcessError:
                example_results = "Build did not complete successfully"
                unit_results = "Build did not complete successfully"
                system_results = "Build did not complete successfully"
                nuopc_pass = "Build did not complete successfully"
                nuopc_fail = "Build did not complete successfully"

            esmfmkfile = self._esmfmkfile(build_type)
            self.create_summary(
                unit_results,
                system_results,
                example_results,
                nuopc_pass,
                nuopc_fail,
                self.make_info,
                esmfmkfile,
            )
            self.run_command(self.git_command)
            return
        # Make directories, if they aren't already there
        self.run_command(f"mkdir -p {self.output_path}/apps; rm {self.output_path}/apps/*")
        self.run_command(f"mkdir -p {self.output_path}/test; rm {self.output_path}/test/*")
        self.run_command(f"mkdir -p {self.output_path}/lib; rm {self.output_path}/lib/*")

        example_artifacts = glob.glob(
            f"{self.build_dir}/examples/examples{build_type}/*/*.Log"
        )
        example_artifacts.extend(
            glob.glob(
                f"{self.build_dir}/examples/examples{build_type}/*/*.stdout"
            )
        )
        # get information from example results file to accumulate
        ex_result_file = glob.glob(
            f"{self.build_dir}/examples/examples{build_type}/*/*results"
        )
        if len(ex_result_file) > 0:
            example_results = (
                subprocess.check_output(f"cat {ex_result_file[0]}", shell=True)
                    .strip()
                    .decode("utf-8")
            )
        else:
            example_results = "No examples ran"
        # get information from test results files to accumulate
        test_artifacts = glob.glob(
            f"{self.build_dir}/test/test{build_type}/*/*.Log"
        )
        logging.debug("test_artifacts are [%s]", test_artifacts)
        test_artifacts.extend(
            glob.glob(f"{self.build_dir}/test/test{build_type}/*/*.stdout")
        )
        try:
            unit_results = (
                subprocess.check_output(
                    f"cat {self.build_dir}/test/test{build_type}/*/unit_tests_results",
                    shell=True,
                )
                    .strip()
                    .decode("utf-8")
            )
        except subprocess.CalledProcessError:
            unit_results = "unit tests did not complete"
        try:
            system_results = (
                subprocess.check_output(
                    "cat {}/test/test{}/*/system_tests_results".format(
                        self.build_dir, build_type
                    ),
                    shell=True,
                )
                    .strip()
                    .decode("utf-8")
            )
        except subprocess.CalledProcessError:
            system_results = "system tests did not complete"
        try:
            nuopc_pass = (
                subprocess.check_output(
                    f"grep PASS: {self.build_dir}/nuopc_{self.job_id}.log | wc -l",
                    shell=True,
                )
                    .strip()
                    .decode("utf-8")
            )
            nuopc_fail = (
                subprocess.check_output(
                    f"grep FAIL: {self.build_dir}/nuopc_{self.job_id}.log | wc -l",
                    shell=True,
                )
                    .strip()
                    .decode("utf-8")
            )
        except subprocess.CalledProcessError:
            nuopc_pass = 0
            nuopc_fail = 0
        python_artifacts = glob.glob(f"{self.build_dir}/src/addon/ESMPy/*.log")

        cwd = os.getcwd()
        os.chdir(self.build_dir)
        make_info = (
            subprocess.check_output("cat module-build.log; cat info.log", shell=True)
                .strip()
                .decode("utf-8")
        )
        os.chdir(cwd)
        esmfmkfile = self._esmfmkfile(build_type)
        logging.debug(f"esmfmkfile is {esmfmkfile}")
        self.create_summary(
            unit_results,
            system_results,
            example_results,
            nuopc_pass,
            nuopc_fail,
            make_info,
            esmfmkfile,
        )
        for afile in example_artifacts:
            _path = pathlib.Path(self.output_path / "examples" / os.path.basename(afile))
            self.copy_artifact(pathlib.Path(afile), _path)

        for afile in test_artifacts:
            _path = pathlib.Path(self.output_path / "test" / os.path.basename(afile))
            self.copy_artifact(pathlib.Path(afile), _path)

        for afile in esmfmkfile:
            _path = pathlib.Path(self.output_path / "lib" / os.path.basename(afile))
            self.copy_artifact(pathlib.Path(afile), _path)

        for afile in python_artifacts:
            _path = pathlib.Path(self.output_path / os.path.basename(afile))
            self.copy_artifact(pathlib.Path(afile), _path)

        self.run_command(self.git_command)
        return

    @property
    def git_command(self):
        return f"cd {self.artifacts_root};git checkout {self.machine_name};git add {self.dir_branch}/{self.machine_name};git commit -a -m'update for build of {self.build_basename} with hash {self.build_hash} on {self.build_hash} [ci skip]';git push origin {self.machine_name}"

    def copy_artifact(self, src: pathlib.Path, target: pathlib.Path):
        """copy src to target while prepending a timestamp"""
        shutil.copy(src, target)
        with open(target, "w", encoding="utf-8") as _file:
            _file.seek(0, 0)
            _file.write(self.timestamp)

    @property
    def timestamp(self) -> str:
        """returns formatted timestamp string"""
        return f"build time -- {self.build_time}"

    def _esmfmkfile(self, build_type):
        esmfmkfile = glob.glob(
            f"{self.build_dir}/lib/lib{build_type}/*/esmf.mk"
        )
        return esmfmkfile

    def is_test_stage(self, oe_file_list):
        """returns true if test stage"""
        for _path in oe_file_list:
            if int(self.job_id) < 0:
                return True
            if _path.find(f"test_{self.job_id}") != -1:  # this is just the build job, so no test artifacts yet
                return True
        return False


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ESMF nightly build/test system")
    parser.add_argument(
        "-j", "--self.jobid", help="directory where builds will be mad #", required=True
    )
    parser.add_argument(
        "-b",
        "--buildbasename",
        help="directory where artifacts will be collected",
        required=True,
    )
    parser.add_argument(
        "-m",
        "--machinename",
        help="name of machine where tests were run",
        required=False,
        default=False,
    )
    parser.add_argument(
        "-s", "--Scheduler", help="type of Scheduler used", required=False, default=None
    )
    parser.add_argument(
        "-t",
        "--testrootdir",
        help="root directory containing python_scritps",
        required=True,
    )
    parser.add_argument(
        "-a",
        "--artifactsrootdir",
        help="directory where artifacts will be placed",
        required=True,
    )
    parser.add_argument("-M", "--mpiversion", help="mpi version used", required=True)
    parser.add_argument("-B", "--branch", help="branch tested", required=True)
    parser.add_argument("-d", "--dryrun", help="dryrun?", required=False, default=False)
    args = vars(parser.parse_args())

    archiver = ArchiveResults(
        args["self.jobid"],
        args["buildbasename"],
        args["machinename"],
        args["Scheduler"],
        args["testrootdir"],
        args["artifactsrootdir"],
        args["mpiversion"],
        args["branch"],
        args["dryrun"],
    )
