import os
from scheduler import Scheduler


class Machine:

    def __init__(self, config):
        self.name = config["name"]
        self.git_https = config.get("git_https", False)
        self.lustre = config.get("lustre", False)
        self.wait_to_collect = config.get("wait_to_collect", False)
        self.bash = config.get("bash", "/bin/bash")
        self.head_node_name = config.get("head_node_name", os.uname()[1])
        self.module_path = config.get("module_path", None)
        self.cores_per_node = config.get("cores_per_node", 1)
        self.scheduler = Scheduler.make_scheduler(config["scheduler"], self)

    def print(self):
        """
        Print out machine information.
        """
        print("Machine attributes:")
        print("============================")
        print(f" Name: {self.name}")
        print(f" Git-Https: {self.git_https}")
        print(f" Lustre: {self.lustre}")
        print(f" Bash: {self.bash}")
        print(f" Head node: {self.head_node_name}")
        print(f" Module path: {self.module_path}")
        print(f" Cores per node: {self.cores_per_node}")
        print(f" Scheduler: {self.scheduler.sched_type}")

