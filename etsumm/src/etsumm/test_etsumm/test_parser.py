import os

from etsumm.environment import env
from etsumm.parser import Parser, create_suite_runner
from etsumm.test_etsumm.base import TestBase


class TestParser(TestBase):

    def fixture_config(self, **kwargs):
        config = {'branch': 'develop',
                  'platform': 'cheyenne',
                  'compiler': 'gfortran',
                  'compiler_version': '8.1.0',
                  'optimization': 'g',
                  'comm': 'openmpi',
                  'comm_version': '3.1.0',
                  'artifacts': env.ESMF_TEST_ARTIFACTS}
        return config

    def fixture_parser(self, **kwargs):
        config = self.fixture_config(**kwargs)
        p = Parser(config)
        return p

    def test_init(self):
        config = self.fixture_config()
        p = Parser(config, debug=False)
        self.assertIsNotNone(p)

    def test_initialize(self):
        p = self.fixture_parser()
        p.initialize()

    def test_iter_config(self):
        p = self.fixture_parser()
        ctr = 0
        for ctr, config in enumerate(p.iter_config()):
            self.assertIn(config['optimization'], ('g', 'O'), msg=config)
        self.assertGreaterEqual(ctr, 23)

    def test_iter_config_all(self):
        """Test for duplicate configurations."""

        seen = []
        for config in Parser.iter_config():
            found = False
            for s in seen:
                if s == config:
                    found = True
                    break
            self.assertFalse(found, config)
            seen.append(config)

    def test_create_suite_runner(self):
        outfile = os.path.join(self.path_bin, "esmf-make-all_tests-fail.out")
        parser = self.fixture_parser()
        xmlout = os.path.join(self.testdir, 'meta_test')
        suite, runner = create_suite_runner(outfile, xmlout, parser=parser)
        runner.run(suite)
