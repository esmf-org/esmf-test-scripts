import json
import logging
import os


class Environment(object):

    def __init__(self):
        self.LOGLVL = logging.INFO
        self.LOGPATH = None

        self.ESMF_TEST_ARTIFACTS_URL = 'https://github.com/esmf-org/esmf-test-artifacts.git'
        self.ESMF_TEST_ARTIFACTS_NAME = 'esmf-test-artifacts'
        self.ESMF_TEST_ARTIFACTS = self.format_path(os.environ.get('ESMF_TEST_ARTIFACTS', None))

        self.CONSTANTS = self._load_constants_()

    @staticmethod
    def format_path(path):
        if path is not None:
            return os.path.realpath(os.path.expanduser(path.strip()))
        else:
            return None

    def validate(self):
        pass

    @staticmethod
    def _load_constants_():
        path = os.path.join(os.path.split(os.path.realpath(__file__))[0], 'constants.json')
        with open(path, 'r') as f:
            ret = json.load(f)
        return ret


env = Environment()
