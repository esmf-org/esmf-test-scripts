#!/usr/bin/env python3

import argparse
import glob
import os
import logging
import time
from datetime import datetime
from scheduler import Scheduler

import cmd


def _wait_for_job(jobid):

    _start_time = time.time()
    _timeout = 24 * 60 * 60  # 24 hours
    logging.debug(f"Waiting for job {jobid} to complete.")
    _job_done = False
    while (time.time() - _start_time) < _timeout:
        logging.debug(f"  --> Checking queue for status of job {jobid}")
        _job_done = _scheduler.check_queue(jobid)
        if _job_done:
            logging.debug(f"  --> Job {jobid} complete")
            break
        time.sleep(30)

    return _job_done



def _clean_artifacts():
    _artifacts_out_dir = os.path.join(_artifacts_dir, "out")
    cmd.runcmd(f"rm -rf {_artifacts_dir}")
    cmd.runcmd(f"mkdir -p {_artifacts_out_dir}")


def _copy_build_artifacts():
    cmd.chdir(f"{_test_dir}")
    _artifacts_out_dir = os.path.join(_artifacts_dir, "out")
    cmd.runcmd_no_err(f"cp build.bat {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp module-build.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp info.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp build.log {_artifacts_out_dir}")


def _copy_test_artifacts():
    cmd.chdir(f"{_test_dir}")
    _artifacts_out_dir = os.path.join(_artifacts_dir, "out")
    cmd.runcmd_no_err(f"cp test.bat {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp module-test.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp test.log {_artifacts_out_dir}")

    _ts = _get_build_timestamp()

    _out_dir = os.path.join(_artifacts_dir, "examples")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/examples/examples*/*/*.Log")
    _artifacts_list.extend(glob.glob(f"{_test_dir}/esmf/examples/examples*/*/*.stdout"))
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"echo '{_ts}' > {_out}")
        cmd.runcmd(f"cat {_f} >> {_out}")

    _out_dir = os.path.join(_artifacts_dir, "test")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/test/test*/*/*.Log")
    _artifacts_list.extend(glob.glob(f"{_test_dir}/esmf/test/test*/*/*.stdout"))
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"echo '{_ts}' > {_out}")
        cmd.runcmd(f"cat {_f} >> {_out}")

    _out_dir = os.path.join(_artifacts_dir, "lib")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/lib/lib*/*/esmf.mk")
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"cat {_f} > {_out}")


def _get_build_timestamp():
    _mkfile_path = glob.glob(f"{_test_dir}/esmf/lib/lib*/*/esmf.mk")
    if len(_mkfile_path) == 1:
        return "Build timestamp from esmf.mk: " + str(datetime.fromtimestamp(os.path.getmtime(_mkfile_path[0])))
    else:
        return "Collection timestamp: " + datetime.now().strftime("%H:%M:%S")


def _commit_and_push_artifacts(commit_msg):
    cmd.chdir(f"{_artifacts_dir}")
    cmd.runcmd(f"git checkout {_artifacts_branch}")
    cmd.runcmd(f"git add *")
    # git commit returns non-zero error code if there is nothing to commit
    cmd.runcmd_no_err(f"git commit -a -m '{commit_msg}'")
    cmd.runcmd(f"git push origin {_artifacts_branch}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=
                                     """
        A script to collect and push test artifacts.  This script is
        typically not run manually, but through the collect_artifacts.sh
        script inside a test case directory.
        """)
    parser.add_argument("--test-dir", help="Root test directory", required=True)
    parser.add_argument("--artifacts-dir", help="Path to test artifacts directory for this case", required=True)
    parser.add_argument("--artifacts-branch", help="Local git branch to checkout for artifacts", required=True)
    parser.add_argument("--scheduler-type", help="Type of scheduler to use for checking job status", required=True)
    parser.add_argument("--jobid", help="Wait for job to be completed", required=True)
    parser.add_argument("--debug", help="Output debug messages", required=False, action="store_true")

    args = vars(parser.parse_args())

    _log_level = logging.INFO
    if args["debug"]:
        _log_level = logging.DEBUG
    logging.basicConfig(format='collect_artifacts.py: %(message)s', level=_log_level)

    _test_dir = args["test_dir"]
    _artifacts_dir = args["artifacts_dir"]
    _artifacts_branch = args["artifacts_branch"]
    _scheduler = Scheduler.scheduler_class(args["scheduler_type"])
    _jobid = int(args["jobid"])

    if _jobid > 0:
        _wait_for_job(_jobid)

    _clean_artifacts()
    _commit_and_push_artifacts("clear artifacts")

    _copy_build_artifacts()
    _copy_test_artifacts()
    _commit_and_push_artifacts("build/test artifacts")
