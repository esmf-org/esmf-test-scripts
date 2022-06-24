import logging
import subprocess
import os

is_dry_run = False


def set_dry_run(dry_run: bool):
    global is_dry_run
    is_dry_run = dry_run


def runcmd(cmd):
    logging.debug(f"cmd.runcmd: {cmd}")
    out = ""
    if not is_dry_run:
        out = subprocess.check_output(cmd, shell=True).strip().decode("utf-8")
    else:
        print(cmd)
    return out


def chdir(to_dir):
    logging.debug(f"cmd.chdir: {to_dir}")
    if not is_dry_run:
        os.chdir(to_dir)
    else:
        print(f"cd {to_dir}")


def start_process(cmd):
    logging.debug(f"cmd.start_process: {cmd}")
    if not is_dry_run:
        return subprocess.Popen(cmd, shell=True, stdin=None, stdout=None, stderr=None, close_fds=True)
    else:
        print(f"{cmd}")
        return None


def clone_repo(url, local_name, branch=None):
    """
    Clone a repository into the current working directory.
        url - repo to clone
        local_name - subdirectory to use
        branch - initial branch to checkout
    """
    runcmd(f"rm -rf {local_name}")
    if branch is not None:
        runcmd(f"git clone -b {branch} {url} {local_name}")
        chdir(f"{local_name}")
        runcmd(f"git checkout {branch}")
        runcmd(f"git pull origin {branch} --ff-only")
        chdir("..")
    else:
        runcmd(f"git clone {url} {local_name}")
