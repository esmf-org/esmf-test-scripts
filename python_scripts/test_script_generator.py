import re
import argparse
import collections
import logging
import os
import pathlib
import subprocess
import shutil


try:
    from yaml import CDumper as Dumper
    from yaml import CLoader as Loader
except ImportError:
    from yaml import Loader, Dumper

import yaml

from noscheduler import NoScheduler
from pbs import pbs
from slurm import slurm

REPO_ESMF_TEST_ARTIFACTS = "https://github.com/esmf-org/esmf-test-artifacts-new.git"

logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
handler = logging.FileHandler(filename=f"{__name__}.log", encoding="utf-8", mode="w")
handler.setFormatter(
    logging.Formatter("%(asctime)s:%(levelname)s:%(name)s: %(message)s")
)
logger.addHandler(handler)


def fetch_props_from_yaml_file(file_path: str):
    with open(file_path) as _file:
        data = yaml.load(_file, Loader=Loader)
        return dict({k.lower().replace("-", "_"): v for k, v in data.items()})


YamlProps = collections.namedtuple(
    "YamlProps",
    [
        "build_types",
        "bash",
        "account",
        "partition",
        "queue",
        "headnodename",
        "branch",
        "nuopcbranch",
        "cpn",
        "scheduler_type",
        "cluster",
        "machine_name",
        "reclone",
        "compilers",
        "versions",
        "mpi_dicts",
    ],
)


def fetch_global_config():
    return {"build_types": ["O", "g"], "reclone": False}


def fetch_local_config(file_path):
    def _safe_lookup(needle, haystack, default=""):
        return haystack[needle] if needle in haystack.keys() else default

    def _versions(props):
        result = {}
        for compiler in _compilers(props):
            for version in props[compiler]["versions"]:
                current = result[compiler] if compiler in result.keys() else []
                result.update({compiler: [version] + current})
        return result

    def _compilers(props):
        return _safe_lookup("compiler", props, [])

    def _mpi_dicts(props):
        result = {}
        for compiler, versions in _versions(props).items():
            for version in versions:
                result.update(
                    {compiler: {version: props[compiler]["versions"][version]["mpi"]}}
                )
        return result

    props = fetch_props_from_yaml_file(file_path)

    return {
        "bash": _safe_lookup("bash", props, "/bin/bash"),
        "account": _safe_lookup("account", props),
        "partition": _safe_lookup("parititon", props),
        "queue": _safe_lookup("queue", props),
        "headnodename": _safe_lookup("headnodename", props, f"{os.uname()[1]}"),
        "branch": _safe_lookup("branch", props),
        "nuopcbranch": _safe_lookup("nuopcbranch", props),
        "cpn": _safe_lookup("corespernode", props),
        "scheduler_type": _safe_lookup("scheduler", props),
        "cluster": _safe_lookup("cluster", props),
        "machine_name": _safe_lookup("machine", props),
        "compilers": _safe_lookup("compiler", props),
        "versions": _versions(props),
        "mpi_dicts": _mpi_dicts(props),
    }


def reclone(artifacts_root, repo_artifacts_url, machine_name):
    logger.debug(f"reclone called")
    os.system(f"rm -rf {artifacts_root}")
    os.system(f"git clone {repo_artifacts_url}")
    os.chdir("../../esmf-test-artifacts")
    os.system(f"git checkout -b {machine_name}")
    os.chdir("..")


# build_types, versions
def create_job_card(config):
    for build_type in config.build_types:

        subdir = f"{comp}_{ver}_{key}_{build_type}_{branch}".replace("/", "_")
        cmdstring = f"git clone -b {branch} https://github.com/esmf-org/esmf {subdir}"
        nuopcclone = f"git clone -b {nuopcbranch} https://github.com/esmf-org/nuopc-app-prototypes"

        updateRepo(subdir, branch, nuopcbranch)
        b_filename = "build-{}_{}_{}_{}.bat".format(comp, ver, key, build_type)
        t_filename = "test-{}_{}_{}_{}.bat".format(comp, ver, key, build_type)
        fb = open(self.b_filename, "w")
        ft = open(self.t_filename, "w")
        scheduler.createHeaders(self)
        createScripts(build_type, comp, ver, mpidict, mpitypes, key, branch)
        scheduler.submitJob(self, subdir, self.mpiver, branch)
        os.chdir("..")

    return []


def submit_job_card(job_card):
    pass


def main(yaml_file, artifacts_root, workdir, dryrun):
    yaml_file = "../config/cheyenne.yaml"
    # fetch the local and global configs and merge local atop global
    local_config = fetch_local_config(yaml_file)
    global_config = fetch_global_config()
    config = YamlProps(**collections.ChainMap(local_config, global_config))
    repo_artifacts_url = REPO_ESMF_TEST_ARTIFACTS

    # reclone the repo if configured to
    if config.reclone:
        reclone(artifacts_root, repo_artifacts_url, config.machine_name)

    # Determine scheduler type?

    # create the job card and submit
    job_card = create_job_card(config)
    submit_job_card(job_card)

    pass


if __name__ == "__main__":
    MY_PATH = pathlib.Path(__file__).parent.absolute()
    YAML_FILE = None
    ARTIFACTS_ROOT = None
    WORKDIR = None
    DRYRUN = None
    BRANCH = "develop"
    main(YAML_FILE, ARTIFACTS_ROOT, WORKDIR, DRYRUN)
