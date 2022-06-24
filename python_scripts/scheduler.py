class Scheduler:

    def __init__(self, sched_type: str, machine, config: dict):
        """
        Initialize the abstract scheduler.  Called by subclasses.
         - sched_type:  a string describing the type of scheduler, e.g., "slurm"
         - machine: used by the scheduler to reference attributes of the machine
         - config: dictionary of configuration options
        """
        self.sched_type = sched_type
        self.account = config.get("account", None)
        self.queue = config.get("queue", None)
        self.tasks_per_node = config.get("tasks_per_node", machine.cores_per_node)
        self.machine = machine

    def create_headers(self, script_file, timeout):
        pass

    def submit_job(self, script_file, after):
        pass

    def check_queue(self):
        pass

    @staticmethod
    def make_scheduler(config, machine):
        from slurm import Slurm
        from noscheduler import NoScheduler
        from pbs import PBS

        if type(config) == str and config.lower() == "none":
            return NoScheduler(machine)
        elif config["type"].lower() == "slurm":
            return Slurm(machine, config)
        elif config["type"].lower() == "pbs":
            return PBS(machine, config)
        else:
            raise Exception(f"Unknown scheduler type: {config['type']}")
