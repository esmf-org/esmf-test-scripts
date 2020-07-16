import unittest
from unittest import SkipTest

from etsumm.environment import env
from etsumm.helpers import summarize


class ESMF_PseudoTests(unittest.TestCase):

    def __init__(self, *args, **kwargs):

        super().__init__(*args, **kwargs)

        self._summary = None

    @property
    def summary(self):
        if self._summary is None:
            self._summary = summarize()
        return self._summary

    def run_standard(self, key):
        tt = env.ESMF_TESTTARGET
        if tt == "all_tests" or key in tt:
            self.assertEqual(self.summary[key]['fail'], 0,
                             msg=self.summary[key]['src'])
        else:
            raise SkipTest

    @staticmethod
    def test_if_configured():
        env.validate()

    def test_examples(self):
        self.run_standard('examples')

    def test_system_tests(self):
        self.run_standard('system tests')

    def test_unit_tests(self):
        self.run_standard('unit tests')


if __name__ == '__main__':
    unittest.main()
