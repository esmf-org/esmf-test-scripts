import os

from etsumm.environment import env
from etsumm.parser import Parser
from etsumm.test_etsumm.base import TestBase


class TestParser(TestBase):

    def fixture_config(self, **kwargs):
        config = {'branch': 'develop',
                  'platform': 'cheyenne',
                  'compiler': 'gfortran',
                  'optimization': 'g',
                  'comm': 'mpich3',
                  'artifacts': env.ESMF_TEST_ARTIFACTS,
                  'test_target': 'examples'}
        return config

    def fixture_parser(self, **kwargs):
        config = self.fixture_config(**kwargs)
        p = Parser(config)
        return p

    def test_init(self):
        config = self.fixture_config()
        p = Parser(config, "examples")
        self.assertIsNotNone(p)

    def test_initialize(self):
        p = self.fixture_parser()
        p.initialize()

    def test_iter_config(self):
        p = self.fixture_parser()
        test_targets = set()
        ctr = 0
        for ctr, config in enumerate(p.iter_config()):
            test_targets.update([config['test_target']])
        self.assertEqual(len(test_targets), 3)
        self.assertGreaterEqual(ctr, 71)

    def test_system_run_tests(self):
        self.remove_testdir = True
        xmlout = os.path.join(self.testdir, 'meta_test_examples')
        targets_ran = []
        for parser in Parser.iter_parsers():
            if parser.config['test_target'] not in targets_ran:
                targets_ran.append(parser.config['test_target'])
                suite, runner = Parser.create_suite_runner(parser, xmlout)
                runner.run(suite)
