from etsumm.parser import Parser
from etsumm.test_etsumm.base import TestBase


class TestParser(TestBase):

    def fixture_config(self):
        config = {'branch': 'develop',
                  'platform': 'cheyenne',
                  'compiler': 'gfortran',
                  'optimization': 'g',
                  'comm': 'mpich3'}
        return config

    def test_init(self):
        config = self.fixture_config()
        p = Parser(config)
