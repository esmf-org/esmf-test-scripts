import os
import shutil
import subprocess
import tempfile
import unittest
import zipfile
from pathlib import Path

from jsonschema import ValidationError

from etsumm import etlog
from etsumm.db.core import initdb, Result
from etsumm.environment import env
import etsumm.run
from etsumm.helpers import get_temporary_output_directory, clone_esmf_artifacts


class TestBase(unittest.TestCase):
    should_clone = True

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.remove_testdir = True
        if self.should_clone:
            self.clone_artifacts()

    @property
    def path_bin(self):
        """Path to binary test file directory."""

        base_dir = os.path.realpath(os.path.split(__file__)[0])
        ret = os.path.join(base_dir, 'bin')
        return ret

    def clone_artifacts(self):
        if env.ESMF_TEST_ARTIFACTS is None:
            env.ESMF_TEST_ARTIFACTS = os.path.join(tempfile.gettempdir(), env.ESMF_TEST_ARTIFACTS_NAME)
        if not os.path.exists(env.ESMF_TEST_ARTIFACTS):
            clone_esmf_artifacts(tempfile.gettempdir())

    def setUp(self):
        self.testdir = get_temporary_output_directory()
        os.makedirs(self.testdir, exist_ok=True)

    def tearDown(self):
        if self.remove_testdir:
            shutil.rmtree(self.testdir)
        etlog.log.shutdown()
