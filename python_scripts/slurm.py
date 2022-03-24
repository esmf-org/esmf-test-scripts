import logging
import subprocess

from scheduler import Scheduler


class Slurm(Scheduler):
    def __init__(self, test):
        super().__init__()
        self.type = "Slurm"
        self.test = test

    def create_headers(self):
        for headerType in ["build", "test"]:
            if headerType == "build":
                file_out = self.test.fb
            else:
                file_out = self.test.ft
            file_out.write("#!/bin/sh -l\n")
            file_out.write("#SBATCH --account={}\n".format(self.test.account))
            if headerType == "build":
                file_out.write("#SBATCH -o {}_%j.o\n".format(self.test.b_filename))
                file_out.write("#SBATCH -e {}_%j.e\n".format(self.test.b_filename))
                file_out.write("#SBATCH --time={}\n".format(self.test.build_time))
            else:
                file_out.write("#SBATCH -o {}_%j.o\n".format(self.test.t_filename))
                file_out.write("#SBATCH -e {}_%j.e\n".format(self.test.t_filename))
                file_out.write("#SBATCH --time={}\n".format(self.test.test_time))
            if self.test.partition != "None":
                file_out.write("#SBATCH --partition={}\n".format(self.test.partition))
            if self.test.cluster != "None":
                file_out.write("#SBATCH --cluster={}\n".format(self.test.cluster))
            if self.test.constraint != "None":
                file_out.write("#SBATCH -C {}\n".format(self.test.constraint))
            file_out.write("#SBATCH --qos={}\n".format(self.test.queue))
            file_out.write("#SBATCH --nodes=1\n")
            file_out.write("#SBATCH --ntasks-per-node={}\n".format(self.test.cpn))
            file_out.write("#SBATCH --exclusive\n")
            file_out.write("export JOBID=$SLURM_JOBID\n")

    def batch_build(self):
        return f"sbatch {self.test.b_filename}"

    def batch_test(self, job_number):
        return f"sbatch --depend=afterok:{job_number} {self.test.t_filename}"

    def run_batch_command(self, batch_command: str) -> str:
        try:
            result = super().run_batch_command(batch_command).split(maxsplit=3)[3]
            return result
        except IndexError as err:
            raise IndexError(f"Could not split value: [{result}]") from err

    def submit_job(self, subdir, mpiver, branch):

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

    def check_queue(self, job_number) -> bool:
        if int(job_number) < 0:
            return True
        queue_query = f"sacct -j {job_number} | head -n 3 | tail -n 1 | awk -F ' ' '{{print $6}}'"
        try:
            result = subprocess.check_output(queue_query, shell=True).strip().decode("utf-8")
            logging.debug("job id is [%s]: job status is [%s]: job_completed is [%s]", job_number, result,
                          result.upper() in ["COMPLETED", "TIMEOUT", "FAILED", "CANCELLED"])
            return result.upper() in ["COMPLETED", "TIMEOUT", "FAILED", "CANCELLED"]
        except subprocess.CalledProcessError as err:
            logging.debug(err)
        return False
