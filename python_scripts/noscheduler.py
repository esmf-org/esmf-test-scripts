import os
from scheduler import Scheduler


class NoScheduler(Scheduler):
    def __init__(self, scheduler_type):
        self.type = scheduler_type

    def submit_job(self, test, subdir, mpiver, branch):
        test.run_command("chmod +x {}".format(test.b_filename))
        jobnum = 12345
        test.run_command("./{} {}".format(test.b_filename, jobnum))
        monitor_cmd_build = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
            test.mypath,
            jobnum,
            subdir,
            test.machine_name,
            self.type,
            test.script_dir,
            test.artifacts_root,
            mpiver,
            branch,
            test.dryrun,
        )
        test.run_command("{}".format(monitor_cmd_build))
        jobnum = 12346
        test.run_command("chmod +x {}".format(test.t_filename))
        test.run_command("./{} {}".format(test.t_filename, jobnum))
        monitor_cmd_test = "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {}".format(
            test.mypath,
            jobnum,
            subdir,
            test.machine_name,
            self.type,
            test.script_dir,
            test.artifacts_root,
            mpiver,
            branch,
            test.dryrun,
        )
        test.run_command("{}".format(monitor_cmd_test))
        test.create_get_res_scripts(monitor_cmd_build, monitor_cmd_test)

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

    def checkqueue(self, jobid):
        return True
