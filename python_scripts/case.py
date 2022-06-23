import os
import re
from environment import Environment
from cmd import CMD


class Case:
    """
    A particular test case that can be run.
    A test case is associated with an environment (compiler, mpi, etc.)
      and a particular branch of ESMF to test.
    """

    def __init__(self, env: Environment, root_dir, repos, esmf_branch, nuopc_branch, scheduler):
        self.env = env
        self.root_dir = root_dir
        self.repos = repos   # map of repository locations
        self.scheduler = scheduler
        self.esmf_branch = esmf_branch
        self.nuopc_branch = nuopc_branch

        self.subdir = "{}_{}_{}_{}_{}".format(self.env.compiler,
                                              self.env.compiler_version,
                                              self.env.mpi,
                                              self.env.bopt,
                                              esmf_branch)
        self.subdir = re.sub("/", "_", self.subdir)  # Some branches have a slash, so replace that with underscore
        self.full_path = os.path.join(self.root_dir, self.subdir)
        self.build_script = os.path.join(self.full_path, f"build-{self.subdir}.bat")
        self.test_script = os.path.join(self.full_path, f"test-{self.subdir}.bat")

    def set_up(self, cmd: CMD):
        """
        Clone repositories needed for testing, e.g., ESMF and nuopc-app-prototypes.
        Generate test scripts to submit.
        """
        cmd.chdir(self.root_dir)
        cmd.runcmd(f"rm -rf {self.full_path}")
        cmd.runcmd(f"mkdir -p {self.full_path}")

        # generate build script
        #self.createScripts(config)

        with open(self.build_script, "w") as _file:
            _file.write(self.scheduler.create_headers(script_file=self.build_script, timeout=self.env.build_time))

        # generate test scripts
        with open(self.test_script, "w") as _file:
            _file.write(self.scheduler.create_headers(script_file=self.test_script, timeout=self.env.test_time))


        # clone repositories
        #cmd.clone_repo(url=self.repos["esmf"], localname="esmf", branch=esmf_branch)
        #cmd.clone_repo(url=self.repos["nuopc"], localname="nuopc-app-prototypes", branch=nuopc_branch)

    def submit(self):
        """
        Submit the jobs to run this test case.
        """
        #        if not self.no_submit:
            # TODO:  deal with mpiver here, which was computed in createScript
          #  self.scheduler.submitJob(self, subdir, self.mpiver, branch)
        pass
