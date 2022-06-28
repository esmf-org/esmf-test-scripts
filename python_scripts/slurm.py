import subprocess
from scheduler import Scheduler
from io import StringIO
import cmd
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
        return _job_num


    def submit_job_old(self, test, subdir, mpiver, branch):
        batch_build = "sbatch {}".format(test.b_filename)
        jobnum = (
            subprocess.check_output(batch_build, shell=True)
            .strip()
            .decode("utf-8")
            .split()[3]
        )
        monitor_cmd_build = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
            test.scripts_path,
            jobnum,
            subdir,
            test.machine_name,
            self.type,
            test.test_root,
            test.artifacts_root,
            mpiver,
            branch,
            test.dryrun,
        )
        if test.dryrun == True:
            print(monitor_cmd_build)
            jobnum = 1234
        else:
            proc = subprocess.Popen(
                monitor_cmd_build,
                shell=True,
                stdin=None,
                stdout=None,
                stderr=None,
                close_fds=True,
            )
            # submit the second job to be dependent on the first
            batch_test = "sbatch --depend=afterok:{} {}".format(jobnum, test.t_filename)
            print("Submitting test_batch with command: {}".format(batch_test))
            jobnum = (
                subprocess.check_output(batch_test, shell=True)
                .strip()
                .decode("utf-8")
                .split()[3]
            )

        monitor_cmd_test = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
            test.mypath,
            jobnum,
            subdir,
            test.machine_name,
            self.type,
            test.test_root,
            test.artifacts_root,
            mpiver,
            branch,
            test.dryrun,
        )
        if test.dryrun == True:
            print(monitor_cmd_test)
        else:
            proc = subprocess.Popen(
                monitor_cmd_test,
                shell=True,
                stdin=None,
                stdout=None,
                stderr=None,
                close_fds=True,
            )
        test.createGetResScripts(monitor_cmd_build, monitor_cmd_test)

    @staticmethod
    def check_queue(jobid):
        if int(jobid) < 0:
            return True
        queue_query = (
            "sacct -j {} | head -n 3 | tail -n 1 | awk -F ' ' '{{print $6}}'".format(
                jobid
            )
        )
        try:
            result = (
                subprocess.check_output(queue_query, shell=True).strip().decode("utf-8")
            )
            if (
                    (result == "COMPLETED")
                    or (result == "TIMEOUT")
                    or (result == "FAILED")
                    or (result == "CANCELLED")
            ):  # could check for R and Q to see if it is running or waiting
                return True
            else:
                return False
        except:
            result = "done"
            return True
        return False
