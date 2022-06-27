import re
import logging
from io import StringIO
from scheduler import Scheduler
import cmd
import os.path


class PBS(Scheduler):

    def __init__(self, machine, config):
        super().__init__("pbs", machine, config)

        # - pbs_node_specifier: method of specifying node request ("default" or "nodes_ppn")
        self._pbs_node_specifier = config.get("pbs_node_specifier", "default")

    def create_headers(self, script_file, timeout):
        with StringIO() as out:
            out.write("#!/bin/sh -l\n")
            out.write(f"#PBS -N {os.path.basename(script_file)}\n")
            out.write(f"#PBS -l walltime={timeout}\n")
            out.write(f"#PBS -q {self.queue}\n")
            out.write(f"#PBS -A {self.account}\n")
            if self._pbs_node_specifier == "nodes_ppn":
                out.write(f"#PBS -l nodes=1:ppn={self.tasks_per_node}\n")
            else:
                out.write(f"#PBS -l select=1:ncpus={self.tasks_per_node}:mpiprocs={self.tasks_per_node}\n")
            out.write("JOBID=\"`echo $PBS_JOBID | cut -d. -f1`\"\n\n")
            return out.getvalue()

    @staticmethod
    def submit_job(script_file, after=None):
        """
        Submit a job to the batch system and return the job number.
         - script_file: absolute path to the script file to submit
         - after: optional job number that this job depends on
        """
        _after = ""
        if after is not None:
            _after = f"-W depend=afterok:{after}"
        _submit_cmd = f"qsub {_after} {script_file}"
        _job_num = cmd.runcmd(_submit_cmd).split(".")[0]
        return _job_num

    @staticmethod
    def check_queue(jobid):
        if int(jobid) < 0:
            return True

        # see if qstat -H is available
        _cmd = f"qstat -H {jobid}"
        _out = cmd.runcmd(_cmd, stderr=True, ignore_error=True)
        if "invalid option" not in _out:
            _queue_query = "qstat -H {} | tail -n 1 | awk -F ' +' '{{print $10}}'".format(jobid)
            try:
                result = cmd.runcmd(_queue_query)
                if result == "F":  # could check for R and Q to see if it is running or waiting
                    return True
                else:
                    return False
            except Exception as e:
                logging.debug(f"Exception checking queue (default): {e}")
                return True
        else:
            # try tracejob instead
            #
            # -w 9999 tells tracejob to assume we have a terminal of width 9999 characters;
            # this should be enough to ensure that each entry appears on a single line, rather
            # than being split across multiple lines (which can otherwise happen for a narrow
            # terminal window)
            _queue_query = "tracejob -q -w 9999 {} | tail -n 1".format(jobid)
            try:
                result = cmd.runcmd(_queue_query)
                finished_re = r"S\s+dequeuing"
                if re.search(finished_re, result):
                    return True
                else:
                    return False
            except Exception as e:
                logging.debug(f"Exception checking queue (tracejob): {e}")
                return True

