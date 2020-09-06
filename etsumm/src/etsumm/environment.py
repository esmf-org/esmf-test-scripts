import logging
import os
import tempfile
from pathlib import Path

from etsumm import etlog


class Environment(object):

    def __init__(self):
        self.LOGLVL = logging.INFO
        self.LOGPATH = None

        self.ESMF_TEST_ARTIFACTS_URL = 'https://github.com/esmf-org/esmf-test-artifacts.git'
        self.ESMF_TEST_ARTIFACTS_NAME = 'esmf-test-artifacts'
        self.ESMF_TEST_ARTIFACTS = self.format_path(os.environ.get('ESMF_TEST_ARTIFACTS', None))

    @staticmethod
    def format_path(path):
        if path is not None:
            return os.path.realpath(os.path.expanduser(path.strip()))
        else:
            return None

    def validate(self):
        pass


env = Environment()

