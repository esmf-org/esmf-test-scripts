import os

from click.testing import CliRunner

from etsumm.environment import env
from etsumm.etcli import etcli
from etsumm.run import run_artifact_tests
from etsumm.test_etsumm.base import TestBase


class TestEtcli(TestBase):

    def test(self):
        self.remove_testdir = False #tdk
        branch = 'develop'
        compiler = 'gfortran'
        platform = 'cheyenne'

        runner = CliRunner()
        args = ['artifact-tests',
                '--artifacts', env.ESMF_TEST_ARTIFACTS,
                '--branch', branch,
                '--compiler', compiler,
                '--platform', platform,
                '--xmlout', os.path.join(self.testdir, 'artifact-tests'),
                '--logpath', os.path.join(self.testdir, 'etcli.log')]
        result = runner.invoke(etcli, args=args, catch_exceptions=False)
        self.assertEqual(result.exit_code, 0)

    def test_run_artifact_tests(self):
        """Test a full run against the test artifacts."""

        xmlout = os.path.join(self.testdir, "meta_test")
        run_artifact_tests(env.ESMF_TEST_ARTIFACTS, xmlout, "develop", None, None, None)

    def test_check_outfile(self):
        runner = CliRunner()
        outfile = os.path.join(self.path_bin, "esmf-make-all_tests-fail.out")
        args = ['check-outfile',
                '--outfile', outfile,
                '--logpath', os.path.join(self.testdir, 'log.log')]
        result = runner.invoke(etcli, args=args, catch_exceptions=False)
        self.assertEqual(result.exit_code, 0)

    def test_check_outfile_examples(self):
        runner = CliRunner()
        outfile = os.path.join(self.path_bin, "run_examples-no-failures.out")
        args = ['check-outfile',
                '--outfile', outfile,
                '--xmlout', os.path.join(self.testdir, "")]
        result = runner.invoke(etcli, args=args, catch_exceptions=False)
        self.assertEqual(result.exit_code, 0)
