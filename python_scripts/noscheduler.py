from scheduler import Scheduler


class NoScheduler(Scheduler):
    def __init__(self, test):
        super().__init__()
        self.type = "slurm"
        self.test = test

    def submit_job(self, subdir, mpiver, branch):
        self.test.run_command("chmod +x {}".format(self.test.b_filename))
        jobnum = 12345
        self.test.run_command("./{} {}".format(self.test.b_filename, jobnum))
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
        self.test.run_command("{}".format(monitor_cmd_build))
        jobnum = 12346
        self.test.run_command("chmod +x {}".format(self.test.t_filename))
        self.test.run_command("./{} {}".format(self.test.t_filename, jobnum))
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
        self.test.run_command("{}".format(monitor_cmd_test))
        self.test.create_get_res_scripts(monitor_cmd_build, monitor_cmd_test)

    def create_headers(self):
        for headerType in ["build", "test"]:
            if headerType == "build":
                file_out = self.test.fb
                jobid = 12345
            else:
                file_out = self.test.ft
                jobid = 12346
            file_out.write("#!{} -l\n".format(self.test.bash))
            file_out.write("export JOBID={}\n".format(jobid))

    def check_queue(self, _):
        return True
