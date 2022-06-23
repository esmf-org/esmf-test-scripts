import os
from scheduler import Scheduler


class Machine:

    def __init__(self, config):
        self.name = config["name"]
        self.git_https = False
        self.bash = "/bin/bash"
        self.head_node_name = os.uname()[1]
        self.cores_per_node = 1

        if "git_https" in config:
            self.git_https = config["git_https"]
        if "bash" in config:
            self.bash = config["bash"]
        if "head_node_name" in config:
            self.head_node_name = config["head_node_name"]

        self.scheduler = Scheduler.make_scheduler(config["scheduler"])

    def print(self):
        """
        Print out machine information.
        """
        print("Machine attributes:")
        print("============================")
        print(f" Name: {self.name}")
        print(f" Git-Https: {self.git_https}")
        print(f" Bash: {self.bash}")
        print(f" Head node: {self.head_node_name}")
        print(f" Scheduler: {self.scheduler.sched_type}")

