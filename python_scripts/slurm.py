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

    def submit_job(self, subdir, mpiver, branch):
        batch_build = "sbatch {}".format(self.test.b_filename)
        jobnum = (
            subprocess.check_output(batch_build, shell=True)
            .strip()
            .decode("utf-8")
            .split()[3]
        )
        monitor_cmd_build = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
            self.test.mypath,
            jobnum,
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
            print(monitor_cmd_build)
            jobnum = 1234
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
            batch_test = "sbatch --depend=afterok:{} {}".format(
                jobnum, self.test.t_filename
            )
            print("Submitting test_batch with command: {}".format(batch_test))
            jobnum = (
                subprocess.check_output(batch_test, shell=True)
                .strip()
                .decode("utf-8")
                .split()[3]
            )

        monitor_cmd_test = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
            self.test.mypath,
            jobnum,
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
            print(monitor_cmd_test)
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

    def check_queue(self, jobid):
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
            return result.upper() in ["COMPLETED", "TIMEOUT", "FAILED", "CANCELLED"]
        except subprocess.CalledProcessError:
            pass
        finally:
            return False
