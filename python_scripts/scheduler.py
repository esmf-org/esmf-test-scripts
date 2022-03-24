import subprocess


class Scheduler:
    def __init__(self):
        pass

    def create_headers(self):
        raise NotImplementedError

    def check_queue(self, job_number):
        raise NotImplementedError

    @staticmethod
    def run_batch_command(batch_command):
        """runs a batch command and returns the output"""
        return subprocess.check_output(batch_command, shell=True).strip().decode("utf-8").split(".")[0]
