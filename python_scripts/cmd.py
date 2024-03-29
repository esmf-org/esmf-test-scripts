import logging
import subprocess
import os
import time


def runcmd(cmd, ignore_error=False, stderr=False):
    logging.debug(f"cmd.runcmd: {cmd}")
    out = ""
    if stderr:
        _stderr = subprocess.STDOUT
    else:
        _stderr = None
    try:
        out = subprocess.check_output(cmd, shell=True, stderr=_stderr).strip().decode("utf-8")
    except subprocess.CalledProcessError as cpe:
        if ignore_error:
            return cpe.output.strip().decode("utf-8")
        else:
            raise cpe
    return out


def acquire_lock(lockfile, retries=30):
    for retry in range(retries):
        logging.debug(f"Attempt to acquire {lockfile}")
        try:
            _checksum = str(time.time())
            with open(lockfile, "x") as _f:
                _f.write(_checksum)
                _f.flush()
                os.fsync(_f.fileno())
            logging.debug(f"Created {lockfile} with checksum {_checksum}")
            time.sleep(5)
            with open(lockfile, "r") as _f:
                _verify = _f.readline()
            logging.debug(f"Read {lockfile} verify checksum {_verify}")
            if _checksum.strip() == _verify.strip():
                logging.debug(f"Acquired {lockfile}")
                return True
        except FileExistsError:
            logging.debug(f"File exists {lockfile}")
        time.sleep(10)
    return False


def release_lock(lockfile):
    logging.debug(f"Release {lockfile}")
    if os.path.isfile(lockfile):
        os.remove(lockfile)
        logging.debug(f"Deleted {lockfile}")
        return True
    else:
        return False


def runcmd_no_err(cmd):
    return runcmd(cmd, ignore_error=True)


def chdir(to_dir):
    logging.debug(f"cmd.chdir: {to_dir}")
    os.chdir(to_dir)


def start_process(cmd):
    logging.debug(f"cmd.start_process: {cmd}")
    return subprocess.Popen(cmd, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)


def clone_repo(url, local_name, branch=None):
    """
    Clone a repository into the current working directory.
        url - repo to clone
        local_name - subdirectory to use
        branch - initial branch to checkout
    """
    runcmd(f"rm -rf {local_name}")
    if branch is not None:
        runcmd(f"git clone --single-branch -b {branch} {url} {local_name}", stderr=True)
        chdir(f"{local_name}")
        runcmd(f"git checkout {branch}", stderr=True)
        runcmd(f"git pull origin {branch} --ff-only", stderr=True)
        chdir("..")
    else:
        runcmd(f"git clone --single-branch {url} {local_name}", stderr=True)
