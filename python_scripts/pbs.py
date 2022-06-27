import re
import subprocess
import logging
from io import StringIO
from scheduler import Scheduler
import cmd


class PBS(Scheduler):

    def __init__(self, machine, config):
        super().__init__("pbs", machine, config)

        # - pbs_node_specifier: method of specifying node request ("default" or "nodes_ppn")
        # - pbs_job_checker: method of checking whether a job is complete ("default" or "tracejob")
        #    tracejob is useful for machines that don't support qstat -H. However, the parsing of
        #    tracejob output is likely to be more fragile than parsing qstat -H, so this should be
        #    used with caution.

        self._pbs_node_specifier = config.get("pbs_node_specifier", "default")
        self._pbs_job_checker = config.get("pbs_job_checker", "default")

    def create_headers(self, script_file, timeout):
        with StringIO() as out:
            out.write("#!/bin/sh -l\n")
            out.write(f"#PBS -N {script_file}\n")
            out.write(f"#PBS -l walltime={timeout}\n")
            out.write(f"#PBS -q {self.queue}\n")
            out.write(f"#PBS -A {self.account}\n")
            if self._pbs_node_specifier == "nodes_ppn":
                out.write(f"#PBS -l nodes=1:ppn={self.tasks_per_node}\n")
            else:
                out.write(f"#PBS -l select=1:ncpus={self.tasks_per_node}:mpiprocs={self.tasks_per_node}\n")
            out.write("JOBID=\"`echo $PBS_JOBID | cut -d. -f1`\"\n\n")
            # TODO:  do we need what's below?
            # out.write("cd {}\n".format(os.getcwd()))
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

    def submit_job_old(self, test, subdir, mpiver, branch):
        # add ssh back to the head node for archiving of results to batch scripts
        #   test.runcmd("echo \"ssh {} {}/getres-build.sh\" >> {}".format(test.headnodename,os.getcwd(),test.b_filename))
        #   test.runcmd("echo \"ssh {} {}/getres-test.sh\" >> {}".format(test.headnodename,os.getcwd(),test.t_filename))
        batch_build = "qsub {}".format(test.b_filename)
        print(batch_build)
        if (test.dryrun == True):
            jobnum = 1234
        else:
            jobnum = subprocess.check_output(batch_build, shell=True).strip().decode('utf-8').split(".")[0]
        print("Submitting batch_build with command: {}, jobnum is {}".format(batch_build, jobnum))
        monitor_cmd_build = \
            "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {} --pbs-node-specifier {} --pbs-job-checker {}".format(
                test.scripts_path, jobnum, subdir, test.machine_name, self.type, test.test_root, test.artifacts_root,
                mpiver, branch, test.dryrun, self._pbs_node_specifier, self._pbs_job_checker)
        if (test.dryrun == True):
            print(monitor_cmd_build)
        else:
            proc = subprocess.Popen(monitor_cmd_build, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
        # submit the second job to be dependent on the first
        #   getrescmd = "ssh {} {}/getres-test.sh".format(test.headnodename,os.getcwd())
        #   os.system("echo {} >> {}".format(getrescmd,test.t_filename))
        batch_test = "qsub -W depend=afterok:{} {}".format(jobnum, test.t_filename)
        print("Submitting test_batch with command: {}".format(batch_test))
        if (test.dryrun == True):
            jobnum = 1234
        else:
            jobnum = subprocess.check_output(batch_test, shell=True).strip().decode('utf-8').split(".")[0]
        monitor_cmd_test = \
            "python3 {}/archive_results.py -j {} -b {} -m {} -s {} -t {} -a {} -M {} -B {} -d {} --pbs-node-specifier {} --pbs-job-checker {}".format(
                test.scripts_path, jobnum, subdir, test.machine_name, self.type, test.test_root, test.artifacts_root,
                mpiver, branch, test.dryrun, self._pbs_node_specifier, self._pbs_job_checker)
        if (test.dryrun == True):
            print(monitor_cmd_test)
        else:
            proc = subprocess.Popen(monitor_cmd_test, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
        #test.createGetResScripts(monitor_cmd_build, monitor_cmd_test)

    #def check_queue(self, jobid):
    #    if self._pbs_job_checker == "tracejob":
    #        return self._check_queue_tracejob(jobid)
    #    else:
    #        return self._check_queue_default(jobid)

    @staticmethod
    def check_queue(jobid):
        if int(jobid) < 0:
            return True

        # see if qstat -H is available
        _cmd = f"qstat -H {jobid}"
        _out = cmd.runcmd(_cmd, stderr=True)
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

    # @staticmethod
    # def _check_queue_tracejob(jobid):
    #     if int(jobid) < 0:
    #         return True
    #
    #     # -w 9999 tells tracejob to assume we have a terminal of width 9999 characters;
    #     # this should be enough to ensure that each entry appears on a single line, rather
    #     # than being split across multiple lines (which can otherwise happen for a narrow
    #     # terminal window)
    #     _queue_query = "tracejob -q -w 9999 {} | tail -n 1".format(jobid)
    #     try:
    #         result = cmd.runcmd(_queue_query)
    #         finished_re = r"S\s+dequeuing"
    #         if re.search(finished_re, result):
    #             return True
    #         else:
    #             return False
    #     except Exception as e:
    #         logging.debug(f"Exception checking queue (tracejob): {e}")
    #         return True
