import logging
import subprocess
import os


class CMD:

    def __init__(self, dry_run):
        self.dry_run = dry_run

    def runcmd(self, cmd):
        logging.debug(f"CMD: {cmd}")
        out = ""
        if not self.dry_run:
            out = subprocess.check_output(cmd, shell=True).strip().decode("utf-8")
        else:
            print(cmd)
        return out

    def chdir(self, to_dir):
        logging.debug(f"CHDIR: {to_dir}")
        if not self.dry_run:
            os.chdir(to_dir)
        else:
            print(f"cd {to_dir}")

    def clone_repo(self, url, localname, branch=None):
        """
        Clone a repository into the current working directory.
            url - repo to clone
            localname - subdirectory to use
            branch - initial branch to checkout
        """
        self.runcmd(f"rm -rf {localname}")
        if branch is not None:
            self.runcmd(f"git clone -b {branch} {url} {localname}")
            self.chdir(f"{localname}")
            self.runcmd(f"git checkout {branch}")
            self.runcmd(f"git pull origin {branch} --ff-only")
            self.chdir("..")
        else:
            self.runcmd(f"git clone {url} {localname}")
