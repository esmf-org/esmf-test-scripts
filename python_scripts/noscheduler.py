from scheduler import Scheduler
from io import StringIO
import cmd


class NoScheduler(Scheduler):
    def __init__(self, machine):
        super().__init__("None", machine=machine, config={})

    def create_headers(self, script_file, timeout):
        with StringIO() as out:
            out.write(f"#!{self.machine.bash} -l\n")
            out.write("export JOBID=NO_BATCH\n")
            return out.getvalue()

    def submit_job(self, script_file, after=None):
        cmd.runcmd(f"chmod +x {script_file}")
        cmd.runcmd(f"{script_file}")
        return -1

    def submit_job_old(self, test, subdir, mpiver, branch):
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

    @staticmethod
    def check_queue(jobid):
        return True
