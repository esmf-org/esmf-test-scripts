import os
import shutil
import subprocess
import tempfile
import unittest
import zipfile
from pathlib import Path

from jsonschema import ValidationError

from etsumm.db.core import initdb, Result
from etsumm.environment import env
import etsumm.run
#tdk:remove this file


def get_temporary_output_directory():
    ret = tempfile.mkdtemp(prefix='etsumm_test_')
    return ret


class TestBase(unittest.TestCase):

    def __init__(self, *args, **kwargs):
        self.remove_testdir = True

        super().__init__(*args, **kwargs)

    @property
    def path_bin(self):
        """Path to binary test file directory."""

        base_dir = os.path.realpath(os.path.split(__file__)[0])
        ret = os.path.join(base_dir, 'bin')
        return ret

    def setUp(self):
        self.testdir = get_temporary_output_directory()
        os.makedirs(self.testdir, exist_ok=True)

    def tearDown(self):
        if self.remove_testdir:
            shutil.rmtree(self.testdir)
