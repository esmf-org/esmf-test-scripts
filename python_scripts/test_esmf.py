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

logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
handler = logging.FileHandler(filename="blitzcrank.log", encoding="utf-8", mode="w")
handler.setFormatter(
    logging.Formatter("%(asctime)s:%(levelname)s:%(name)s: %(message)s")
)
logger.addHandler(handler)

REPO_ARTIFCATS_URL = "https://github.com/esmf-org/esmf-test-artifacts.git"
DRYRUN = False
DEBUG = DRYRUN

"""
# CLI flags:

- dry run
- output

# Monitoring?

You can monitor what is happening for each of the test combinations by looking at the log files, e.g.:
cd intel_18.0.5_intelmpi_g_develop
tail -f build_*.log
It will take a couple hours at least for everything to run.  If everything works as planned, it will
push all of the test results to  https://github.com/esmf-org/esmf-test-artifacts.

# Check Status

```qstat -u dunlap```
"""


def config_path(yaml_file):
    return os.path.dirname(yaml_file)


def global_file(file_name="global.yaml"):
    return os.path.join(config_path(file_name), file_name)


YamlProperties = collections.namedtuple(
    "YamlProperties",
    "bash, reclone, partition, machine_name, head_node_name, account, queue, https",
)

cli_args = collections.namedtuple("CLIArgs", "yaml, artifacts, working_dir, isDryRun")


def fetch_config(file_path: str):
    print(file_path)
    with open(file_path) as _file:
        data = yaml.load(_file, Loader=Loader)
        return dict({k.lower().replace("-", "_"): v for k, v in data.items()})


def reclone_repos(global_config):
    os.system(f"rm -rf {global_config['artifacts_root']}")
    os.system(f"fit clone ${REPO_ARTIFCATS_URL}")
    os.chdir("esmf-test-artifacts")
    os.system("git checkout -b {}".format(global_config["machine_name"]))
    os.chdir("..")


def createGetResScripts(monitor_cmd_build, monitor_cmd_test, bash):
    # write these out no matter what, so we can run them manually, if necessary
    with open("getres-build.sh", "w") as get_res_file:
        get_res_file.write(f"#!{bash} -l\n")
        get_res_file.write(f"{monitor_cmd_build} >& build-res.log &\n")

    os.system("chmod +x getres-build.sh")

    with open("getres-test.sh", "w") as get_res_file:
        get_res_file = open("getres-test.sh", "w")
        get_res_file.write(f"#!{bash} -l\n")
        get_res_file.write(f"{monitor_cmd_test} >& test-res.log &\n")

    os.system("chmod +x getres-test.sh")


def get_scheduler(globals_config):

    scheduler_types = {
        "slurm": slurm("slurm"),
        "None": NoScheduler("None"),
        "pbs": pbs("pbs"),
    }

    try:
        return scheduler_types[globals_config["scheduler_type"]]
    except Exception:
        logger.error(
            f"{globals_config['scheduler_type']} not found in scheduler_types [{scheduler_types}]"
        )
        exit(1)


def get_args():
    parser = argparse.ArgumentParser(
        description="Archive collector for ESMF testing framework"
    )
    parser.add_argument(
        "-w",
        "--workdir",
        help="directory where builds will be mad #",
        required=False,
        default=os.getcwd(),
    )
    parser.add_argument(
        "-y",
        "--yaml",
        help="Yaml file defining builds and testing parameters",
        # required=True,
    )
    parser.add_argument(
        "-a",
        "--artifacts",
        help="directory where artifacts will be placed",
        # required=True,
    )
    parser.add_argument(
        "-d",
        "--dryrun",
        help="directory where artifacts will be placed",
        required=False,
        default=False,
    )

    return vars(parser.parse_args())


def absolute_path(relative_path):
    return os.path.join(ABS_PATH, relative_path)


def _default_lookup(needle, haystack, default_value=""):
    return haystack[needle] if needle in haystack else default_value


def create_job_card(build_types, machine_list):
    compilers = (compiler for compiler in machine_list["compiler"])
    for build_type in build_types:
        for compiler in compilers:
            versions = (version for version in machine_list[compiler]["versions"])
            for version in versions:
                # print("{}".format(machine_list[compiler]["versions"][version]["mpi"]))
                mpi_dict = machine_list[compiler]["versions"][version]["mpi"]
                mpi_types = mpi_dict.keys()
                # print(machine_list[compiler]["versions"][version])
                for key in mpi_types:
                    build_time = _default_lookup("build_time", mpi_types, "1:00:00")
                    test_time = _default_lookup("test", mpi_types, "1:00:00")
                    for branch in machine_list["branch"]:
                        nuopcbranch = _default_lookup(
                            "nuopcbranch", machine_list, branch
                        )

                        subdir = "{}_{}_{}_{}_{}".format(
                            compiler, version, key, build_type, branch
                        )
                        subdir = re.sub(
                            "/", "_", subdir
                        )  # Some branches have a slash, so replace that with underscore

                        cmdstring = "git clone -b {} https://github.com/esmf-org/esmf {}".format(
                            branch, subdir
                        )
                        nuopcclone = "git clone -b {} https://github.com/esmf-org/nuopc-app-prototypes".format(
                            nuopcbranch
                        )

                        update_repo(subdir, branch, None) #nupocbranch=None
                        b_filename = "build-{}_{}_{}_{}.bat".format(
                            compiler, version, key, build_type
                        )
                        t_filename = "test-{}_{}_{}_{}.bat".format(
                            compiler, version, key, build_type
                        )
                        fb = open(b_filename, "w")
                        ft = open(t_filename, "w")
                        scheduler.createHeaders()
                        createScripts(
                            build_type,
                            compiler,
                            version,
                            mpi_dict,
                            mpi_types,
                            key,
                            branch,
                        )
                        scheduler.submitJob(subdir, mpiver, branch)
                        os.chdir("..")


def runcmd(cmd):
    return subprocess.run(cmd.split(), stdout=subprocess.PIPE, check=True)


def remove_path(path):
    shutil.rmtree(path)


def update_repo(self, subdir, branch, nuopcbranch):
    os.system("rm -rf {}".format(subdir))
    cmdstring = f"git clone -b {branch} https://github.com/esmf-org/esmf {subdir}"
    nuopcclone = (
        f"git clone -b {nuopcbranch} https://github.com/esmf-org/nuopc-app-prototypes"
    )

    if not (os.path.isdir(subdir)):
        os.system(f"mkdir {subdir}")
        os.chdir(subdir)

    status = subprocess.check_output(cmdstring, shell=True).strip().decode("utf-8")
    print(status)
    os.chdir(subdir)
    runcmd("rm -rf obj mod lib examples test *.o *.e *bat.o* *bat.e*")
    runcmd("git checkout {}".format(branch))
    runcmd("git pull origin {}".format(branch))
    status = subprocess.check_output(nuopcclone, shell=True).strip().decode("utf-8")
    print(status)
    # print("status from nuopc clone command {} was {}".format(nuopcclone, status))
    return False


if __name__ == "__main__":
    ABS_PATH = pathlib.Path(__file__).parent.absolute()
    DEFAULT_BRANCH = "develop"
    DEFAULT_CONFIG_PATH = "../config"
    DEFAULT_GLOBAL_CONFIG_FILE_PATH = "global.yaml"
    DEFAULT_BUILD_TYPES = ["O", "g"]

    args = get_args()

    global_config = fetch_config(absolute_path("../config/global.yaml"))
    local_config = fetch_config(absolute_path("../config/cheyenne.yaml"))
    global_config.update(local_config)
    print(global_config)

    if global_config["reclone_artificats"] is True:
        reclone_repos(global_config)  # need to test return value

    scheduler = get_scheduler(global_config)
