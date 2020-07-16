import os


class Environment(object):

    def __init__(self):
        self.ESMF_DIR = self.format_path(os.environ.get('ESMF_DIR'))
        self.ESMF_TESTOUTFILE = self.format_path(os.environ['ESMF_TESTOUTFILE'])
        self.ESMF_TESTTARGET = os.environ.get('ESMF_TESTTARGET', 'all_tests')

    @staticmethod
    def format_path(path):
        if path is not None:
            return os.path.realpath(os.path.expanduser(path.strip()))
        else:
            return None

    def validate(self):
        assert os.path.exists(self.ESMF_TESTOUTFILE)
        assert len(self.ESMF_TESTTARGET) > 0


env = Environment()
