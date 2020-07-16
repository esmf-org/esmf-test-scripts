import os
import re
import unittest

from etsumm.environment import env
from etsumm.helpers import parse_pass_fail, config_value
from etsumm.regexps import REGEXPS


class BaseRunner(object):
    ntests = None
    results_filename = None
    results_prefix = 'test'
    config_filename = None

    @property
    def config(self):
        return os.path.join(self.workdir, self.config_filename)

    @property
    def is_exhaustive(self):
        return config_value(self.config, 'Exhaustive')

    @property
    def is_multiproc(self):
        return config_value(self.config, 'Multiprocessor')

    @property
    def pass_fail(self):
        with open(self.results, 'r') as f:
            lines = f.readlines()
        pf = parse_pass_fail(lines)
        return pf

    @property
    def results(self):
        return os.path.join(self.workdir, self.results_filename)

    @property
    def workdir(self):
        return self.join_workdir()

    def summarize(self):
        summ = {'outfile': env.ESMF_TESTOUTFILE}
        with open(env.ESMF_TESTOUTFILE, 'r') as f:
            lines = f.readlines()
            lines.reverse()
            for ctr, line in enumerate(lines):
                if ctr > 100:
                    break
                test_target = re.match(REGEXPS['test_tags'], line)
                if test_target is not None:
                    target = lines[ctr-1]
                    expr = REGEXPS['unit_tests']
                    match = re.match(expr, target)
                    summ[test_target.groups()[0].lower()] = match.groupdict()
        return summ

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
