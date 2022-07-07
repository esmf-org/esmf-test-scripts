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
        return 0

    @staticmethod
    def check_queue(jobid):
        return True
