import os


class Environment(object):

    def __init__(self):
        self.ESMF_DIR = os.path.realpath(os.path.expanduser(os.environ['ESMF_DIR']))

    def validate(self):
        assert os.path.exists(self.ESMF_DIR)


env = Environment()
env.validate()
