import logging
import os
import subprocess
from scheduler import Scheduler

MAP_JOB_STATE = {
    "E": "Job is exiting after having run",
    "H": "Job is held",
    "Q": "Job is queued, eligible to run or routed",
    "R": "Job is running",
    "T": "Job is being moved to new location",
    "W": "Job is waiting for its execution time",
    "S": "Job is suspended",
    "F": "Job is finished",
    "": "Unknown"
}


class PBS(Scheduler):
    def __init__(self, test):
        super().__init__()
        self.type = "pbs"
        self.test = test

    def create_headers(self):
        for headerType in ["build", "test"]:
            if headerType == "build":
                file_out = self.test.fb
            else:
                file_out = self.test.ft
            file_out.write("#!/bin/sh -l\n")
            if headerType == "build":
                file_out.write(f"#PBS -N {self.test.b_filename}\n")
                file_out.write(f"#PBS -l walltime={self.test.build_time}\n")
            else:
                file_out.write(f"#PBS -N {self.test.t_filename}\n")
            file_out.write(f"#PBS -l walltime={self.test.test_time}\n")
            file_out.write(f"#PBS -q {self.test.queue}\n")
            file_out.write(f"#PBS -A {self.test.account}\n")
            file_out.write(f"#PBS -l select=1:ncpus={self.test.cpn}:mpiprocs={self.test.cpn}\n")
            file_out.write('JOBID="`echo $PBS_JOBID | cut -d. -f1`"\n\n')
            file_out.write(f"cd {os.getcwd()}\n")

    def check_queue(self, job_number) -> bool:
        if int(job_number) < 0:
            return True
        queue_query = f"qstat -H {job_number} | tail -n 1 | awk -F ' +' '{{print $10}}'"
        try:
            result = subprocess.check_output(queue_query, shell=True).strip().decode("utf-8").lower()
            try:
                job_state = MAP_JOB_STATE[result.upper()]
            except KeyError as error:
                raise KeyError(f"key not found [{result}]", result) from error
            logging.debug("job id is [%s]: job status is [%s]: job_completed is [%s]", job_number, job_state,
                          result == 'f')
            return result == 'f'
        except subprocess.CalledProcessError as err:
            logging.debug(err)
        return False

    def batch_build(self):
        return f"qsub {self.test.b_filename}"

    def batch_test(self, job_number):
        return f"qsub -W depend=afterok:{job_number} {self.test.t_filename}"

    def submit_job(self, subdir, mpiver, branch):
        # add ssh back to the head node for archiving of results to batch scripts
        if self.test.dryrun:
            logging.debug("*DRYRUN* starting archive")
            return

        logging.debug("starting archive")
        job_number = 1234 if self.test.dryrun else self.run_batch_command(self.batch_build())
        logging.debug("Submitting batch_command with command [%s], [%s]", self.batch_build(), job_number)
        self.test.archive_results(job_number=job_number, scheduler=self.type, machine_name=self.test.machine_name,
                                  build_basename=subdir, test_root_dir=self.test.script_dir, mpi_version=mpiver,
                                  branch=branch, is_dry_run=self.test.dryrun, artifacts_root=self.test.artifacts_root)

        # submit the second job to be dependent on the first
        logging.debug("Submitting batch_command with command [%s], [%s]", self.batch_test(job_number), job_number)
        job_number = 1234 if self.test.dryrun else self.run_batch_command(self.batch_test(job_number))

        self.test.archive_results(job_number=job_number, scheduler=self.type, machine_name=self.test.machine_name,
                                  build_basename=subdir, test_root_dir=self.test.script_dir, mpi_version=mpiver,
                                  branch=branch, is_dry_run=self.test.dryrun, artifacts_root=self.test.artifacts_root)

        # self.test.create_get_res_scripts(monitor_cmd_build, monitor_cmd_test)
