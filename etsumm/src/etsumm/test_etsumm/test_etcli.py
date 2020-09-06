import os

from click.testing import CliRunner

from etsumm.environment import env
from etsumm.etcli import etcli
from etsumm.test_etsumm.base import TestBase


class TestEtcli(TestBase):

    def test(self):
        branch = 'develop'
        compiler = 'gfortran'
        platform = 'cheyenne'

        runner = CliRunner()
        args = ['artifact-tests', '--artifacts', env.ESMF_TEST_ARTIFACTS, '--branch', branch, '--compiler', compiler,
                '--platform', platform,
                '--xmlout', os.path.join(self.testdir, 'artifact-tests'), '--logpath',
                os.path.join(self.testdir, 'etcli.log')]
        result = runner.invoke(etcli, args=args, catch_exceptions=False)
        self.assertEqual(result.exit_code, 0)
