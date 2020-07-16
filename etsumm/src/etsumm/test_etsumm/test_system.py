import os
import subprocess
import unittest
import zipfile

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

    def test(self):
        outfile = os.path.join(self.path_bin, 'esmf-make-all_tests.out')
        env.ESMF_TESTOUTFILE = outfile
        target = os.path.realpath(etsumm.run.__file__)
        xmlout = os.path.join(self.path_bin, 'test-junit.xml')
        if os.path.exists(xmlout):
            os.remove(xmlout)
        try:
            subprocess.check_call(['pytest', '--junitxml={}'.format(xmlout), target])
        except:
            self.assertTrue(os.path.exists(xmlout))
