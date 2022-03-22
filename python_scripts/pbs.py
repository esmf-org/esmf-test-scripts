import logging
import os
import subprocess
from scheduler import Scheduler


def check_queue(jobid):
    if int(jobid) < 0:
        return True
    queue_query = f"qstat -H {jobid} | tail -n 1 | awk -F ' +' '{{print $10}}'"
    try:
        return (
                subprocess.check_output(queue_query, shell=True).strip().decode("utf-8")
                == "F"
        )
    except subprocess.CalledProcessError:
        pass
    finally:
        return False


def monitor_cmd(
        _path,
        jobnum,
        subdir,
        machine_name,
        scheduler_type,
        script_dir,
        artifacts_root,
        mpiver,
        branch,
        dryrun,
):
    return (
        f"python3 {_path}/archive_results.py -j {jobnum} -b {subdir} -m {machine_name} -s {scheduler_type} "
        f"-t {script_dir} -a {artifacts_root} -M {mpiver} -B {branch} -d {dryrun} "
    )


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

    def job_number(self, batch_command):
        if not self.test.dryrun:
            return 1234
        return subprocess.check_output(batch_command, shell=True).strip().decode("utf-8").split(".")[0]

    def submit_job(self, subdir, mpiver, branch):
        # add ssh back to the head node for archiving of results to batch scripts
        batch_build = f"qsub {self.test.b_filename}"
        job_number = self.job_number(batch_build)
        logging.debug(
            "Submitting batch_command with command [%s], [%s]", batch_build, job_number
        )
        monitor_cmd_build = monitor_cmd(
            self.test.mypath,
            job_number,
            subdir,
            self.test.machine_name,
            self.type,
            self.test.script_dir,
            self.test.artifacts_root,
            mpiver,
            branch,
            self.test.dryrun,
        )

        if self.test.dryrun:
            logging.debug(monitor_cmd_build)
        else:
            subprocess.Popen(
                monitor_cmd_build,
                shell=True,
                stdin=None,
                stdout=None,
                stderr=None,
                close_fds=True,
            )
        # submit the second job to be dependent on the first
        #   getrescmd = "ssh {} {}/getres-test.sh".format(test.head_node_name,os.getcwd())
        #   os.system("echo {} >> {}".format(getrescmd,test.t_filename))
        batch_test = f"qsub -W depend=afterok:{job_number} {self.test.t_filename}"
        logging.debug(f"Submitting test_batch with command: {batch_test}")
        job_number = self.job_number(batch_test)

        monitor_cmd_test = monitor_cmd(
            self.test.mypath,
            job_number,
            subdir,
            self.test.machine_name,
            self.type,
            self.test.script_dir,
            self.test.artifacts_root,
            mpiver,
            branch,
            self.test.dryrun,
        )

        if self.test.dryrun:
            logging.debug(monitor_cmd_test)
        else:
            subprocess.Popen(
                monitor_cmd_test,
                shell=True,
                stdin=None,
                stdout=None,
                stderr=None,
                close_fds=True,
            )
        self.test.create_get_res_scripts(monitor_cmd_build, monitor_cmd_test)
