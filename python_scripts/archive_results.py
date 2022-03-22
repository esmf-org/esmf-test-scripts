import argparse
import glob
import logging
import os
import pathlib
import re
import subprocess
import time
from datetime import datetime
from typing import List, Any

from noscheduler import NoScheduler
from pbs import pbs
from slurm import slurm


class ArchiveResults:
    def __init__(
        self,
        jobid,
        build_basename,
        machine_name,
        scheduler,
        test_root_dir,
        artifacts_root,
        mpiversion,
        branch,
        dryrun,
    ):

        logging.warning(os.getcwd())
        self.outpath = None
        self.build_hash = None
        self.build_time = None
        self.root_path = pathlib.Path(__file__).parent.absolute()
        self.jobid = jobid
        self.build_basename = build_basename
        self.machine_name = machine_name
        if scheduler == "pbs":
            self.scheduler = pbs("pbs")
        elif scheduler == "slurm":
            self.scheduler = slurm("slurm")
        elif scheduler == "None":
            self.scheduler = NoScheduler("slurm")
        self.test_root_dir = test_root_dir
        self.artifacts_root = artifacts_root
        self.mpiversion = mpiversion
        self.branch = branch
        self.dryrun = dryrun
        print("dryrun is {} -- {}".format(dryrun, self.dryrun))
        start_time = time.time()
        seconds = 144000
        self.build_dir = "{}/{}".format(test_root_dir, build_basename)
        while True:
            current_time = time.time()
            elapsed_time = current_time - start_time
            job_done = self.scheduler.checkqueue(jobid)
            if job_done:
                oe_file_list = glob.glob(
                    "{}/{}/*_{}*.log".format(test_root_dir, build_basename, jobid)
                )
                oe_file_list.extend(
                    glob.glob("{}/{}/*.bat".format(test_root_dir, build_basename))
                )
                oe_file_list.extend(
                    glob.glob(
                        "{}/{}/module-*.log".format(test_root_dir, build_basename)
                    )
                )
                logging.debug("oe list [%s\n]", ", ".join(oe_file_list))
                self.copy_artifacts(oe_file_list)
                break
            time.sleep(30)

            if elapsed_time > seconds:
                print("Finished iterating in: " + str(int(elapsed_time)) + " seconds")
                break

    def runcmd(self, cmd):
        if self.dryrun:
            print("would have executed {}".format(cmd))
        else:
            os.system(cmd)

    def create_summary(
        self,
        unit_results,
        system_results,
        example_results,
        nuopc_pass,
        nuopc_fail,
        make_info,
        esmfmkfile,
    ):
        results = (
            subprocess.check_output(
                "grep ESMF_OS: {}/*_{}.log".format(self.build_dir, self.jobid),
                shell=True,
            )
            .strip()
            .decode("utf-8")
        )
        esmf_os = results.split()[1]
        print("HEY!!! esmf_os is {}".format(esmf_os))
        if len(esmfmkfile) > 0:
            self.build_time = datetime.fromtimestamp(os.path.getmtime(esmfmkfile[0]))
        else:
            now = datetime.now()
            self.build_time = now.strftime("%H:%M:%S")
        summary_file = open(f"{self.outpath}/summary.dat", "w")
        summary_file.write(
            "\n===================================================================\n"
        )
        summary_file.write(
            "Build for = {}, mpi version {} on {} esmf_os: {}\n".format(
                self.build_basename, self.mpiversion, self.machine_name, esmf_os
            )
        )
        summary_file.write("Build time = {}\n".format(self.build_time))
        summary_file.write("git hash = {}\n\n".format(self.build_hash))
        unit_results = re.sub(" FAIL", "\tFAIL", unit_results)
        system_results = re.sub(" FAIL", " \tFAIL", system_results)
        example_results = re.sub(" FAIL", " \tFAIL", example_results)
        summary_file.write("unit test results   \t{}\n".format(unit_results))
        summary_file.write("system test results \t{}\n".format(system_results))
        summary_file.write("example test results \t{}\n".format(example_results))
        summary_file.write(
            "nuopc test results \tPASS {} \tFAIL {}\n\n".format(nuopc_pass, nuopc_fail)
        )
        summary_file.write(
            "\n===================================================================\n"
        )
        summary_file.write("\n\n{}\n\n".format(make_info))
        summary_file.write(
            "\n===================================================================\n"
        )
        summary_file.close()

    def copy_artifacts(self, oe_filelist: List[Any]):
        logging.debug("copy_artifacts(%s)", ", ".join(oe_filelist))
        build_basename = os.path.basename(self.build_dir)
        logging.debug("branch is: ", self.branch)
        dir_branch = re.sub("/", "_", self.branch)
        logging.debug("dir branch is: ", dir_branch)
        try:
            cwd = os.getcwd()
        except:
            logging.error("unable to determine current working directory: [%s], [%s]", build_basename, dir_branch)
            exit(1)
        logging.debug("cwd is: ", cwd)
        os.chdir(self.build_dir)
        try:
            self.build_hash = (
                subprocess.check_output("git describe --tags --abbrev=7", shell=True)
                .strip()
                .decode("utf-8")
            )
        except subprocess.CalledProcessError as err:
            print(err)
            print(self.build_dir)
            exit(1)
        os.chdir(cwd)
        print("build_basename is {}".format(build_basename))
        parts = build_basename.split("_")
        # [compiler, version, mpiflavor, build_type,dirbranch] = build_basename.split("_")
        compiler = parts[0]
        version = parts[1]
        mpiflavor = parts[2]
        build_type = parts[3]
        # get the full path for placment of artifacts
        if self.mpiversion not in ["None", "none", None]:
            outpath = "{}/{}/{}/{}/{}/{}/{}/{}".format(
                self.artifacts_root,
                dir_branch,
                self.machine_name,
                compiler,
                version,
                build_type,
                mpiflavor,
                self.mpiversion,
            )
        else:
            outpath = "{}/{}/{}/{}/{}/{}/{}/{}".format(
                self.artifacts_root,
                dir_branch,
                self.machine_name,
                compiler,
                version,
                build_type,
                mpiflavor,
                "none",
            )
        self.outpath = outpath
        # copy/rename the stdout/stderr files to artifacts out directory
        test_stage = False
        print("outpath is {}".format(outpath))
        for cfile in oe_filelist:
            print("cfile is {}".format(cfile))
            if int(self.jobid) < 0:
                test_stage = True
            if (
                cfile.find("test_{}".format(self.jobid)) != -1
            ):  # this is just the build job, so no test artifacts yet
                test_stage = True
        if not test_stage:
            # remove old files in out directory
            print("just the build stage, so remove old files")
            cmd = "mkdir -p {}/out; rm {}/*/*; rm {}/*.log; rm {}/summary.dat".format(
                outpath, outpath, outpath, outpath
            )
            print("cmd is {}\n".format(cmd))
            self.runcmd(cmd)
        # print("oe filelist is {}".format(oe_filelist))
        if not oe_filelist:
            return
        for cfile in oe_filelist:
            nfile = os.path.basename(re.sub("_{}".format(self.jobid), "", cfile))
            cp_cmd = "echo `date` > {}/out/{}".format(outpath, nfile)
            self.runcmd(cp_cmd)
            cp_cmd = "cat {} >> {}/out/{}".format(cfile, outpath, nfile)
            self.runcmd(cp_cmd)
        if not test_stage:
            command = "grep success {}/build_{}.log".format(self.build_dir, self.jobid)
            unit_results = "-1 -1"
            system_results = "-1 -1"
            example_results = "-1 -1"
            nuopc_pass = "-1"
            nuopc_fail = "-1"
            try:
                (
                    subprocess.check_output("{}".format(command), shell=True)
                        .strip()
                        .decode("utf-8")
                )
            except:
                ""
                example_results = "Build did not complete successfully"
                unit_results = "Build did not complete successfully"
                system_results = "Build did not complete successfully"
                nuopc_pass = "Build did not complete successfully"
                nuopc_fail = "Build did not complete successfully"
            try:
                make_info = (
                    subprocess.check_output(
                        "cat {}/module-build.log; cat {}/info.log".format(
                            self.build_dir, self.build_dir
                        ),
                        shell=True,
                    )
                    .strip()
                    .decode("utf-8")
                )
            except:
                make_info = "error finding {}/module-build.log or {}/info.log".format(
                    self.build_dir, self.build_dir
                )
            esmfmkfile = glob.glob(
                "{}/lib/lib{}/*/esmf.mk".format(self.build_dir, build_type)
            )
            self.create_summary(
                unit_results,
                system_results,
                example_results,
                nuopc_pass,
                nuopc_fail,
                make_info,
                esmfmkfile,
            )
            git_cmd = "cd {};git checkout {};git add {}/{};git commit -a -m'update for build of {} with hash {} on {} [ci skip]';git push origin {}".format(
                self.artifacts_root,
                self.machine_name,
                dir_branch,
                self.machine_name,
                build_basename,
                self.build_hash,
                self.machine_name,
                self.machine_name,
            )
            print("git_cmd is {}".format(git_cmd))
            self.runcmd(git_cmd)
            return
        # Make directories, if they aren't already there
        cmd = "mkdir -p {}/examples; rm {}/examples/*; rm {}/*".format(
            outpath, outpath, outpath
        )
        self.runcmd(cmd)
        cmd = "mkdir -p {}/apps; rm {}/apps/*".format(outpath, outpath)
        self.runcmd(cmd)
        cmd = "mkdir -p {}/test; rm {}/test/*".format(outpath, outpath)
        self.runcmd(cmd)
        cmd = "mkdir -p {}/lib; rm {}/lib/*".format(outpath, outpath)
        self.runcmd(cmd)
        print("globbing examples")

        example_artifacts = glob.glob(
            "{}/examples/examples{}/*/*.Log".format(self.build_dir, build_type)
        )
        example_artifacts.extend(
            glob.glob(
                "{}/examples/examples{}/*/*.stdout".format(self.build_dir, build_type)
            )
        )
        # get information from example results file to accumulate
        ex_result_file = glob.glob(
            "{}/examples/examples{}/*/*results".format(self.build_dir, build_type)
        )
        if len(ex_result_file) > 0:
            example_results = (
                subprocess.check_output("cat {}".format(ex_result_file[0]), shell=True)
                .strip()
                .decode("utf-8")
            )
        else:
            example_results = "No examples ran"
        # get information from test results files to accumulate
        test_artifacts = glob.glob(
            "{}/test/test{}/*/*.Log".format(self.build_dir, build_type)
        )
        print("test_artifacts are ".format(test_artifacts))
        test_artifacts.extend(
            glob.glob("{}/test/test{}/*/*.stdout".format(self.build_dir, build_type))
        )
        try:
            unit_results = (
                subprocess.check_output(
                    "cat {}/test/test{}/*/unit_tests_results".format(
                        self.build_dir, build_type
                    ),
                    shell=True,
                )
                .strip()
                .decode("utf-8")
            )
        except:
            unit_results = "unit tests did not complete"
        try:
            system_results = (
                subprocess.check_output(
                    "cat {}/test/test{}/*/system_tests_results".format(
                        self.build_dir, build_type
                    ),
                    shell=True,
                )
                .strip()
                .decode("utf-8")
            )
        except:
            system_results = "system tests did not complete"
        try:
            nuopc_pass = (
                subprocess.check_output(
                    "grep PASS: {}/nuopc_{}.log | wc -l".format(
                        self.build_dir, self.jobid
                    ),
                    shell=True,
                )
                .strip()
                .decode("utf-8")
            )
            nuopc_fail = (
                subprocess.check_output(
                    "grep FAIL: {}/nuopc_{}.log | wc -l".format(
                        self.build_dir, self.jobid
                    ),
                    shell=True,
                )
                .strip()
                .decode("utf-8")
            )
        except:
            nuopc_pass = 0
            nuopc_fail = 0
        python_artifacts = glob.glob("{}/src/addon/ESMPy/*.log".format(self.build_dir))

        cwd = os.getcwd()
        os.chdir(self.build_dir)
        make_info = (
            subprocess.check_output("cat module-build.log; cat info.log", shell=True)
            .strip()
            .decode("utf-8")
        )
        os.chdir(cwd)
        esmfmkfile = glob.glob(
            "{}/lib/lib{}/*/esmf.mk".format(self.build_dir, build_type)
        )
        print("esmfmkfile is {}".format(esmfmkfile))
        self.create_summary(
            unit_results,
            system_results,
            example_results,
            nuopc_pass,
            nuopc_fail,
            make_info,
            esmfmkfile,
        )
        timestamp = "build time -- {}".format(self.build_time)
        for afile in example_artifacts:
            cmd = "echo {} > {}/examples/{}".format(
                timestamp, outpath, os.path.basename(afile)
            )
            self.runcmd(cmd)
            cmd = "cat {} >> {}/examples/{}".format(
                afile, outpath, os.path.basename(afile)
            )
            #   cmd = 'cp {} {}/examples'.format(afile,outpath)
            print("cmd is {}".format(cmd))
            self.runcmd(cmd)
        for afile in test_artifacts:
            cmd = "echo {} > {}/test/{}".format(
                timestamp, outpath, os.path.basename(afile)
            )
            self.runcmd(cmd)
            cmd = "cat {} >> {}/test/{}".format(afile, outpath, os.path.basename(afile))
            #   cmd = 'cp {} {}/test".format(afile,outpath)
            print("cmd is {}".format(cmd))
            self.runcmd(cmd)
        for afile in esmfmkfile:
            cmd = "echo {} > {}/lib/{}".format(
                timestamp, outpath, os.path.basename(afile)
            )
            self.runcmd(cmd)
            cmd = "cat {} >> {}/lib/{}".format(afile, outpath, os.path.basename(afile))
            #   cmd = 'cp {} {}/lib'.format(afile,outpath)
            print("cmd is {}".format(cmd))
            self.runcmd(cmd)
        for afile in python_artifacts:
            cmd = "echo {} > {}/{}".format(timestamp, outpath, os.path.basename(afile))
            self.runcmd(cmd)
            cmd = "cat {} >> {}/{}".format(afile, outpath, os.path.basename(afile))
            #   cmd = 'cp {} {}'.format(afile,outpath)
            print("cmd is {}".format(cmd))
            self.runcmd(cmd)

        git_cmd = "cd {};git checkout {};git add {}/{};git commit -a -m'update for test of {} with hash {} on {} [ci skip]';git push origin {}".format(
            self.artifacts_root,
            self.machine_name,
            dir_branch,
            self.machine_name,
            build_basename,
            self.build_hash,
            self.machine_name,
            self.machine_name,
        )
        self.runcmd(git_cmd)
        return


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ESMF nightly build/test system")
    parser.add_argument(
        "-j", "--self.jobid", help="directory where builds will be mad #", required=True
    )
    parser.add_argument(
        "-b",
        "--buildbasename",
        help="directory where artifacts will be collected",
        required=True,
    )
    parser.add_argument(
        "-m",
        "--machinename",
        help="name of machine where tests were run",
        required=False,
        default=False,
    )
    parser.add_argument(
        "-s", "--scheduler", help="type of scheduler used", required=False, default=None
    )
    parser.add_argument(
        "-t",
        "--testrootdir",
        help="root directory containing python_scritps",
        required=True,
    )
    parser.add_argument(
        "-a",
        "--artifactsrootdir",
        help="directory where artifacts will be placed",
        required=True,
    )
    parser.add_argument("-M", "--mpiversion", help="mpi version used", required=True)
    parser.add_argument("-B", "--branch", help="branch tested", required=True)
    parser.add_argument("-d", "--dryrun", help="dryrun?", required=False, default=False)
    args = vars(parser.parse_args())

    archiver = ArchiveResults(
        args["self.jobid"],
        args["buildbasename"],
        args["machinename"],
        args["scheduler"],
        args["testrootdir"],
        args["artifactsrootdir"],
        args["mpiversion"],
        args["branch"],
        args["dryrun"],
    )
