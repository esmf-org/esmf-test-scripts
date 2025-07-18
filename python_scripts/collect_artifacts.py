#!/usr/bin/env python3

import argparse
import glob
import os
import logging
import re
import time
from datetime import datetime
from scheduler import Scheduler
import subprocess
import cmd


def _extract(regex, string, default=None):
    _match = re.search(regex, string)
    if _match is not None:
        if len(_match.groups()) == 1:
            return _match.group(1)
        else:
            return _match.groups()
    else:
        return default


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
    cmd.runcmd_no_err(f"cp summary.dat {_artifacts_dir}")


def _copy_test_artifacts():
    cmd.chdir(f"{_test_dir}")
    _artifacts_out_dir = os.path.join(_artifacts_dir, "out")
    cmd.runcmd_no_err(f"cp test.bat {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp install.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp module-test.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp test.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp nuopc.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp esmpy_install.bat {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp esmpy-install.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp esmpy-download.log {_artifacts_out_dir}")
    cmd.runcmd_no_err(f"cp esmpy-test.log {_artifacts_out_dir}")

    _ts = _get_build_timestamp()
    if _ts is None:
        _ts = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    _out_dir = os.path.join(_artifacts_dir, "examples")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/examples/examples*/*/*.Log")
    _artifacts_list.extend(glob.glob(f"{_test_dir}/esmf/examples/examples*/*/*.stdout"))
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"echo '{_ts}' > \"{_out}\"")
        cmd.runcmd(f"cat \"{_f}\" >> \"{_out}\"")

    _out_dir = os.path.join(_artifacts_dir, "test")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/test/test*/*/*.Log")
    _artifacts_list.extend(glob.glob(f"{_test_dir}/esmf/test/test*/*/*.stdout"))
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"echo '{_ts}' > \"{_out}\"")
        cmd.runcmd(f"cat \"{_f}\" >> \"{_out}\"")

    _out_dir = os.path.join(_artifacts_dir, "nuopc")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/nuopc-app-prototypes/NUOPC-PROTO-RESULTS/*.Log")
    _artifacts_list.extend(glob.glob(f"{_test_dir}/nuopc-app-prototypes/NUOPC-PROTO-RESULTS/*.stdout"))
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"echo '{_ts}' > \"{_out}\"")
        cmd.runcmd(f"cat \"{_f}\" >> \"{_out}\"")

    _out_dir = os.path.join(_artifacts_dir, "esmpy")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/src/addon/esmpy/*.test")
    _artifacts_list.extend(glob.glob(f"{_test_dir}/esmf/src/addon/esmpy/*.ESMF_LogFile"))
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"echo '{_ts}' > \"{_out}\"")
        cmd.runcmd(f"cat \"{_f}\" >> \"{_out}\"")

    _out_dir = os.path.join(_artifacts_dir, "lib")
    cmd.runcmd(f"mkdir -p {_out_dir}")

    _artifacts_list = glob.glob(f"{_test_dir}/esmf/lib/lib*/*/esmf.mk")
    for _f in _artifacts_list:
        _out = os.path.join(_out_dir, os.path.basename(_f))
        cmd.runcmd(f"cat {_f} > {_out}")


def _get_build_timestamp():
    _mkfile_path = glob.glob(f"{_test_dir}/esmf/lib/lib*/*/esmf.mk")
    if len(_mkfile_path) == 1:
        return datetime.fromtimestamp(os.path.getmtime(_mkfile_path[0])).strftime("%Y-%m-%d %H:%M:%S")
    else:
        return None


def _get_clone_timestamp():
    _path = glob.glob(f"{_test_dir}/esmf/makefile")
    if len(_path) == 1:
        return datetime.fromtimestamp(os.path.getmtime(_path[0])).strftime("%Y-%m-%d %H:%M:%S")
    else:
        return None


def _get_esmf_git_hash():
    cmd.chdir(os.path.join(_test_dir, "esmf"))
    return cmd.runcmd("git describe --tags --abbrev=7")


# def _get_esmf_branch():
#    # TODO: address this issue on hera
#    # subprocess.CalledProcessError: Command 'git branch --show-current' returned non-zero exit status 129.
#    # error: unknown option `show-current'
#    cmd.chdir(os.path.join(_test_dir, "esmf"))
#    return cmd.runcmd("git rev-parse --abbrev-ref HEAD")


def _create_summary():
    _summary_file = os.path.join(_test_dir, "summary.dat")
    _info_file = os.path.join(_test_dir, "info.log")
    _info = cmd.runcmd_no_err(f"cat {_info_file}")
    _module_file = os.path.join(_test_dir, "module-build.log")
    _module = cmd.runcmd_no_err(f"cat {_module_file}")

    # build results
    _build_log = os.path.join(_test_dir, "build.log")
    _build_pass_out = cmd.runcmd_no_err(f"tail -n 10 {_build_log}")
    if "ESMF library built successfully" in _build_pass_out:
        _build_result = "PASS"
    else:
        _build_result = "FAIL"

    # unit test results
    _unit_results = "NONE"
    _unit_res_path = glob.glob(f"{_test_dir}/esmf/test/test*/*/unit_tests_results")
    if len(_unit_res_path) == 1:
        _unit_results = cmd.runcmd_no_err(f"cat {_unit_res_path[0]}")

    # system test results
    _sys_results = "NONE"
    _sys_res_path = glob.glob(f"{_test_dir}/esmf/test/test*/*/system_tests_results")
    if len(_sys_res_path) == 1:
        _sys_results = cmd.runcmd_no_err(f"cat {_sys_res_path[0]}")

    # examples results
    _examples_results = "NONE"
    _examples_res_path = glob.glob(f"{_test_dir}/esmf/examples/examples*/*/examples_results")
    if len(_examples_res_path) == 1:
        _examples_results = cmd.runcmd_no_err(f"cat {_examples_res_path[0]}")

    # nuopc results
    _nuopc_log = os.path.join(_test_dir, "nuopc.log")
    _nuopc_results = "NONE"
    if os.path.isfile(_nuopc_log):
        _nuopc_pass = cmd.runcmd_no_err(f"grep PASS: {_nuopc_log} | wc -l")
        _nuopc_fail = cmd.runcmd_no_err(f"grep FAIL: {_nuopc_log} | wc -l")
        _nuopc_results = f"PASS {_nuopc_pass} FAIL {_nuopc_fail}"

    # esmpy results
    _esmpy_install_log = os.path.join(_test_dir, "esmpy-install.log")
    _esmpy_install_result = "NONE"
    if os.path.isfile(_esmpy_install_log):
        _esmpy_out = cmd.runcmd_no_err(f"grep 'Successfully installed.*esmpy' {_esmpy_install_log}")
        if "Successfully" in _esmpy_out:
            _esmpy_install_result = "PASS"
        else:
            _esmpy_install_result = "FAIL"

    _esmpy_test_logs = glob.glob(f"{_test_dir}/esmf/src/addon/esmpy/*.test")
    _esmpy_test_result = "NONE"
    if len(_esmpy_test_logs) > 0:
        _esmpy_pass = 0
        _esmpy_fail = 0
        for _f in _esmpy_test_logs:
            _esmpy_out = cmd.runcmd_no_err(f"tail -n 1 {_f}")
            _esmpy_pass_str = _extract(r'"passed": (\d+)', _esmpy_out, "0")
            _esmpy_fail_str = _extract(r'"failed": (\d+)', _esmpy_out, "0")
            try:
                _esmpy_pass = _esmpy_pass + int(_esmpy_pass_str)
                _esmpy_fail = _esmpy_fail + int(_esmpy_fail_str)
            except Exception as e:
                logging.debug(f"Failed to parse esmpy test counts: {e}")
        _esmpy_test_result = f"PASS {_esmpy_pass} FAIL {_esmpy_fail}"

    with open(_summary_file, "w") as _file:
        _file.write(f"")
        _file.write(f"ESMF hash: {_get_esmf_git_hash()}\n")
        _file.write(f"Collection timestamp: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        _file.write(f"Build timestamp: {_get_build_timestamp()}\n")
        _file.write(f"Clone timestamp: {_get_clone_timestamp()}\n")
        _file.write(f"Test dir: {_test_dir}\n")
        _file.write(f"Machine: {_artifacts_branch}\n")
        if _jobid > 0:
            _file.write(f"Job: {_jobid}\n")
        _file.write("\n")
        _file.write("RESULTS:\n================================\n")
        _file.write(f"build:\t\t\t{_build_result}\n")
        _file.write(f"unit tests:\t\t{_unit_results}\n")
        _file.write(f"system tests:\t\t{_sys_results}\n")
        _file.write(f"example tests:\t\t{_examples_results}\n")
        _file.write(f"nuopc tests:\t\t{_nuopc_results}\n")
        _file.write(f"esmpy install:\t\t{_esmpy_install_result}\n")
        _file.write(f"esmpy tests:\t\t{_esmpy_test_result}\n")
        _file.write(f"\n\nmodule-build.log\n================================\n")
        _file.write(f"{_module}\n")
        _file.write(f"\n\ninfo.log\n================================\n")
        _file.write(f"{_info}\n")


def _commit_and_push_artifacts(commit_msg):
    cmd.chdir(f"{_artifacts_dir}")
    try:
        cmd.runcmd(f"git fetch origin {_artifacts_branch}")
        cmd.runcmd(f"git checkout {_artifacts_branch}")
        cmd.runcmd(f"git reset origin/{_artifacts_branch}")
        cmd.runcmd(f"git add *")
        # git commit returns non-zero error code if there is nothing to commit
        cmd.runcmd_no_err(f"git commit -a -m '{commit_msg}'")
        cmd.runcmd(f"git push origin {_artifacts_branch}")
    except subprocess.CalledProcessError as cpe:
        logging.info(f"Error committing or pushing artifacts: {cpe}")


def _get_artifacts_root(artifacts_dir):
    # remove last 6 folders
    for i in range(6):
        artifacts_dir = os.path.split(artifacts_dir)[0]
    return artifacts_dir


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
    parser.add_argument("--jobid", help="Wait for job to be completed (or 0 for no job dependency)", required=True)
    parser.add_argument("--phase", help="""
        Determines which artifacts to copy.  Options are 'build' or 'test' or 'all'.  Defaults to 'all' if not specified.""",
                        default="all", required=False)
    parser.add_argument("--debug", help="Output debug messages", required=False, action="store_true")

    args = vars(parser.parse_args())

    _log_level = logging.INFO
    if args["debug"]:
        _log_level = logging.DEBUG
    logging.basicConfig(format='collect_artifacts.py: %(message)s', level=_log_level)

    _test_dir = args["test_dir"]
    _artifacts_dir: str = args["artifacts_dir"]
    _artifacts_root = _get_artifacts_root(_artifacts_dir)
    logging.debug(f"Artifacts root: {_artifacts_root}")
    _artifacts_branch = args["artifacts_branch"]
    _scheduler = Scheduler.scheduler_class(args["scheduler_type"])
    _jobid = int(args["jobid"].split(".")[0])
    _phase = args["phase"]

    if _jobid > 0:
        _wait_for_job(_jobid)

    # find branch embedded in artifact directory structure
    _esmf_branch = _artifacts_dir.split(os.path.sep)[-6]
    _esmf_hash = _get_esmf_git_hash()
    _dir_name = os.path.basename(_test_dir)
    _commit_msg_fragment = f"dir={_dir_name} branch={_esmf_branch} hash={_esmf_hash} phase={_phase}"

    _lockfile = os.path.join(_artifacts_root, ".lockfile")

    # use a lockfile to limit concurrent changes to the artifacts repository
    if cmd.acquire_lock(_lockfile):
        _clean_artifacts()
        _commit_and_push_artifacts(commit_msg=f"action=clear {_commit_msg_fragment}")
        _create_summary()
        if args["phase"] in ["all", "build"]:
            _copy_build_artifacts()
        if args["phase"] in ["all", "test"]:
            # always copy build artifacts since we clear all the artifacts each time
            _copy_build_artifacts()
            _copy_test_artifacts()

        _commit_and_push_artifacts(commit_msg=f"action=collect {_commit_msg_fragment}")
    else:
        logging.info(f"FAILED TO COMMIT artifacts due to not acquiring lock: {_commit_msg_fragment} {_phase}")

    cmd.release_lock(_lockfile)
