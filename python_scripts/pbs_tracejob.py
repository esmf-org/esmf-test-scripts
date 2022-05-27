import re
import subprocess
from pbs import pbs


class pbs_tracejob(pbs):
    """Similar to the standard pbs scheduler, but uses tracejob rather than qstat to
    query for completed jobs.

    This is useful for machines that don't support qstat -H. However, the parsing of
    tracejob output is likely to be more fragile than parsing qstat -H, so this should be
    used with caution.

    """

    def __init__(self, scheduler_type, pbs_node_specifier):
        pbs.__init__(self, scheduler_type, pbs_node_specifier)

    def checkqueue(self, jobid):
        if int(jobid) < 0:
            return True

        # -w 9999 tells tracejob to assume we have a terminal of width 9999 characters;
        # this should be enough to ensure that each entry appears on a single line, rather
        # than being split across multiple lines (which can otherwise happen for a narrow
        # terminal window)
        queue_query = "tracejob -q -w 9999 {} | tail -n 1".format(jobid)
        try:
            result = (
                subprocess.check_output(queue_query, shell=True).strip().decode("utf-8")
            )
            finished_re = r"S\s+dequeuing"
            if re.search(finished_re, result):
                return True
            else:
                return False
        except:
            result = "done"
            return True
        return False
