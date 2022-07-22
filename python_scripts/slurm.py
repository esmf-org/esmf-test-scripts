from scheduler import Scheduler
from io import StringIO
import cmd
import time
import logging
from machine import Machine


class Slurm(Scheduler):

    def __init__(self, machine: Machine, config: dict):
        super().__init__("slurm", machine=machine, config=config)
        self.partition = config.get("partition", None)
        self.cluster = config.get("cluster", None)
        self.constraint = config.get("constraint", None)

    def create_headers(self, script_file, timeout):
        with StringIO() as out:
            out.write("#!/bin/sh -l\n")
            out.write(f"#SBATCH --account={self.account}\n")
            out.write(f"#SBATCH -o {script_file}_%j.o\n")
            out.write(f"#SBATCH -e {script_file}_%j.e\n")
            out.write(f"#SBATCH --time={timeout}\n")
            if self.partition is not None:
                out.write(f"#SBATCH --partition={self.partition}\n")
            if self.cluster is not None:
                out.write(f"#SBATCH --cluster={self.cluster}\n")
            if self.constraint is not None:
                out.write(f"#SBATCH -C {self.constraint}\n")
            out.write(f"#SBATCH --qos={self.queue}\n")
            out.write(f"#SBATCH --nodes=1\n")
            out.write(f"#SBATCH --ntasks-per-node={self.tasks_per_node}\n")
            out.write(f"#SBATCH --exclusive\n")
            out.write(f"export JOBID=$SLURM_JOBID\n")
            out.write("\n\n")
            return out.getvalue()

    def submit_job(self, script_file, after=None):
        """
        Submit a job to the batch system and return the job number.
         - script_file: absolute path to the script file to submit
         - after: optional job number that this job depends on
        """
        _after = ""
        if after is not None:
            _after = f"--depend=afterok:{after}"

        _submit_cmd = f"sbatch {_after} {script_file}"
        _job_num = cmd.runcmd(_submit_cmd).split()[3]
        # Note:  This pause was needed because we found that it took some time
        # for jobs to make it into the queue, and on some systems the check_queue
        # was immediately returning true.
        time.sleep(10)
        return _job_num

    @staticmethod
    def check_queue(jobid):
        if int(jobid) < 0:
            return True
        _queue_query = f"sacct -j {jobid} | head -n 3 | tail -n 1 | awk -F ' ' '{{print $6}}'"
        try:
            result = cmd.runcmd(_queue_query)
            if (result == "COMPLETED") or (result == "TIMEOUT") or (result == "FAILED") or (result == "CANCELLED"):
                return True
            else:
                return False
        except Exception as e:
            logging.debug(f"Exception checking queue for job {jobid}: {e}")
            return True

