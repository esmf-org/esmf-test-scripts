from scheduler import Scheduler


class NoScheduler(Scheduler):
    def __init__(self):
        super().__init__("None")

    def submit_job(self, test, subdir, mpiver, branch):
        test.runcmd("chmod +x {}".format(test.b_filename))
        jobnum = 12345
        test.runcmd("./{} {}".format(test.b_filename, jobnum))
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
        test.runcmd("{}".format(monitor_cmd_build))
        jobnum = 12346
        test.runcmd("chmod +x {}".format(test.t_filename))
        test.runcmd("./{} {}".format(test.t_filename, jobnum))
        monitor_cmd_test = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
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
        test.runcmd("{}".format(monitor_cmd_test))
        test.createGetResScripts(monitor_cmd_build, monitor_cmd_test)

    def create_headers(self, test):
        for headerType in ["build", "test"]:
            if headerType == "build":
                file_out = test.fb
                jobid = 12345
            else:
                file_out = test.ft
                jobid = 12346
            file_out.write("#!{} -l\n".format(test.bash))
            file_out.write("export JOBID={}\n".format(jobid))

    def check_queue(self, jobid):
        return True
