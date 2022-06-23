
class Scheduler:

    def __init__(self, sched_type, config):
        self.sched_type = sched_type
        self.account = config["account"]
        self.queue = config["queue"]
        self.tasks_per_node = config.get("tasks_per_node", 1)

    def create_headers(self):
        pass

    def submit_job(self):
        pass

    def check_queue(self):
        pass

    @staticmethod
    def make_scheduler(config):
        from slurm import Slurm
        from noscheduler import NoScheduler
        from pbs import PBS

        if config["type"].lower() == "slurm":
            return Slurm(config)
        elif config["type"].lower() == "pbs":
            return PBS(config)
        elif config["type"].lower() == "none":
            return NoScheduler(config)
        else:
            raise Exception(f"Unknown scheduler type: {config['type']}")

