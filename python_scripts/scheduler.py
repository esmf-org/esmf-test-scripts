from python_scripts.archive_results import ArchiveResults
import subprocess


class Scheduler:
    def __init__(self):
        pass

    def create_headers(self):
        pass

    def submit_job(self):
        pass

    def check_queue(self, jobid):
        pass

    def archive_results(self, job_id, scheduler, build_basename, machine_name, test_root_dir, artifacts_root,
                        mpi_version, branch,
                        is_dry_run):
        ArchiveResults(job_id,
                       build_basename,
                       machine_name,
                       scheduler,
                       test_root_dir,
                       artifacts_root,
                       mpi_version,
                       branch,
                       is_dry_run)

    def run_batch_command(self, batch_command):
        """runs a batch command and returns the output"""
        return subprocess.check_output(batch_command, shell=True).strip().decode("utf-8").split(".")[0]
