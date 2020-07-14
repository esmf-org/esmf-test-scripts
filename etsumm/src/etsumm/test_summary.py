import unittest

from etsumm.core import BaseRunner


class UnitTests(BaseRunner, unittest.TestCase):
    ntests = 8706
    results_filename = 'unit_tests_results'


class SystemTests(BaseRunner, unittest.TestCase):
    ntests = 45
    results_filename = 'system_tests_results'


class Examples(BaseRunner, unittest.TestCase):
    ntests = 79
    results_filename = 'examples_results'
    results_prefix = 'examples'


if __name__ == '__main__':
    unittest.main()
