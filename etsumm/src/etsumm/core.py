import os
import unittest

from etsumm.environment import env
from etsumm.helpers import parse_pass_fail


class BaseRunner(object):
    #tdk:todo: this needs to be computed on the fly
    ntests = None
    results_filename = None
    results_prefix = 'test'

    @property
    def pass_fail(self):
        with open(self.results, 'r') as f:
            lines = f.readlines()
        pf = parse_pass_fail(lines)
        return pf

    def __init__(self, *args, **kwargs):
        assert self.ntests is not None
        assert self.results_filename is not None

        super().__init__(*args, **kwargs)

        self.workdir = self.join_workdir()
        self.results = os.path.join(self.workdir, self.results_filename)

    def join_workdir(self):
        for de in os.scandir(env.ESMF_DIR):
            if de.is_dir() and de.name.startswith(self.results_prefix):
                for de2 in os.scandir(de.path):
                    if de2.is_dir() and de.name.startswith(self.results_prefix):
                        for de3 in os.scandir(de2.path):
                            if de3.is_dir():
                                return de3.path

    def test_if_tests_ran(self):
        self.assertTrue(os.path.exists(self.results))

    def test_any_failures(self):
        self.assertEqual(self.pass_fail['fail'], 0)

    def test_expected_passes(self):
        self.assertEqual(self.pass_fail['pass'], self.ntests)
