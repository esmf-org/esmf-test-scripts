import logging
import os
import unittest
from copy import deepcopy
from multiprocessing import Pool

import xmlrunner as xmlrunner

from etsumm import etlog
from etsumm.environment import env
from etsumm.etlog import log
from etsumm.helpers import clone_esmf_artifacts, get_temporary_output_directory
from etsumm.parser import Parser
from etsumm.test_etsumm.base import TestBase


class TestParser(TestBase):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        env.ESMF_TEST_ARTIFACTS = '/home/benkoziol/htmp/esmf-test-artifacts'
        if not os.path.exists(env.ESMF_TEST_ARTIFACTS):
            self.dstdir = get_temporary_output_directory()
            clone_esmf_artifacts(self.dstdir)

    def fixture_config(self, **kwargs):
        config = {'branch': 'develop',
                  'platform': 'cheyenne',
                  'compiler': 'gfortran',
                  'optimization': 'g',
                  'comm': 'mpich3',
                  'artifacts': env.ESMF_TEST_ARTIFACTS}
        return config

    def fixture_parser(self, target="examples", **kwargs):
        config = self.fixture_config(**kwargs)
        p = Parser(config, target)
        return p

    def test_init(self):
        config = self.fixture_config()
        p = Parser(config, "examples")
        self.assertIsNotNone(p)

    def test_initialize(self):
        p = self.fixture_parser()
        p.initialize()

#tdk:remove
    # def test_run_single_parser(self):
    #     from etsumm.cases import TestContainer
    #
    #     env.LOGLVL = logging.INFO
    #     if env.LOGLVL == logging.DEBUG:
    #         self.remove_testdir = False
    #     p = self.fixture_parser()
    #     for meta in p.iter_test_meta():
    #         log(meta, level=logging.DEBUG)
    #         for k, v in meta.items():
    #             TestContainer.add_test(k, v['logfile'], v['lines'])
    #
    #     xmlout = os.path.join(self.testdir, 'meta_test_examples')
    #
    #     suite = unittest.TestSuite()
    #     suite.addTests(unittest.TestLoader().loadTestsFromTestCase(TestContainer))
    #     runner = xmlrunner.XMLTestRunner(output=xmlout, verbosity=2)
    #     runner.run(suite)
    #
    #     self.assertTrue(os.path.exists(xmlout))

    def test_iter_test_runners(self):
        self.remove_testdir = False #tdk

        xmlout = os.path.join(self.testdir, 'meta_test_examples')
        for suite, runner in Parser.iter_test_runners(xmlout):
            runner.run(suite)
