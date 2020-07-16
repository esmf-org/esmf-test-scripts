import os


class Environment(object):

    def __init__(self):
        self.ESMF_DIR = self.format_path(os.environ['ESMF_DIR'])
        self.ESMF_TESTOUTFILE = self.format_path(os.environ['ESMF_TESTOUTFILE'])

    def format_path(self, path):
        return os.path.realpath(os.path.expanduser(path.strip()))

    def validate(self):
        assert os.path.exists(self.ESMF_DIR)
        assert os.path.exists(self.ESMF_TESTOUTFILE)


env = Environment()
