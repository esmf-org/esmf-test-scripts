import os
import unittest

from etsumm.core import BaseRunner
from etsumm.environment import env
from etsumm.helpers import count_tests, collect_test_counts


class UnitTests(BaseRunner, unittest.TestCase):
    ntests = 8706
    results_filename = 'unit_tests_results'
    config_filename = 'unit_tests.config'

    def test_counts(self):
        actual = count_tests('NEX_UTest', ['Infrastructure', 'Superstructure'])
        print(actual)
        self.assertTrue(actual > 1000)
        # count_tests(['NEX_UTest', 'EX_UTest', 'NEX_Multi_Proc_Only_UTest'])

        counts = collect_test_counts()
        print(counts)

    def test_if_configured(self):
        env.validate()

    def test_unit_tests(self):
        print(self.summarize())
    #
    # def test_any_failures(self):
    #     self.assertEqual(self.pass_fail['fail'], 0)
    #
    # def test_expected_passes(self):
    #     self.assertEqual(self.pass_fail['pass'], self.ntests)


class SystemTests(BaseRunner, unittest.TestCase):
    ntests = 45
    results_filename = 'system_tests_results'
    config_filename = 'sys_tests.config'


class Examples(BaseRunner, unittest.TestCase):
    ntests = 79
    results_filename = 'examples_results'
    results_prefix = 'examples'
    config_filename = 'examples.config'


if __name__ == '__main__':
    unittest.main()
