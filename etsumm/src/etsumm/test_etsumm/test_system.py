import os
import subprocess
import tempfile
import unittest
import zipfile

from jsonschema import ValidationError

from etsumm.db.core import initdb, Result
from etsumm.environment import env
import etsumm.run


class Test(unittest.TestCase):

    @property
    def path_bin(self):
        """Path to binary test file directory."""

        base_dir = os.path.realpath(os.path.split(__file__)[0])
        ret = os.path.join(base_dir, 'bin')
        return ret

    def setUp(self):
        path = os.path.join(self.path_bin, 'esmf-make-all_tests.zip')
        with zipfile.ZipFile(path, 'r') as zip_ref:
            zip_ref.extractall(self.path_bin)

    def test_xml_creation(self):
        outfile = os.path.join(self.path_bin, 'esmf-make-all_tests.out')
        env.ESMF_TESTOUTFILE = outfile
        target = os.path.realpath(etsumm.run.__file__)
        xmlout = os.path.join(self.path_bin, 'test-junit.xml')
        if os.path.exists(xmlout):
            os.remove(xmlout)
        try:
            subprocess.call(['pytest', '--junitxml={}'.format(xmlout), target])
        except:
            self.assertTrue(os.path.exists(xmlout))

    def test_db(self):
        path = os.path.join(tempfile.gettempdir(), 'test-etsumm-db.sqlite')
        if os.path.exists(path):
            os.remove(path)
        initdb(path, create=True)
        self.assertTrue(os.path.exists(path))
        os.remove(path)

        path = os.path.join('tmp', 'should', 'not', 'exist')
        result_json = os.path.join(self.path_bin, "result.json")
        with self.assertRaises(ValidationError):
            result = Result.create(result_json, path)
