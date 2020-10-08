import os

from etsumm.etlog import MyLog
from etsumm.test_etsumm.base import TestBase


class TestEtlog(TestBase):

    def test(self):
        log = MyLog()
        logpath = os.path.join(self.testdir, 'etsumm.log')
        log.configure(to_file=logpath, to_stream=True)
        log(msg="hello world", logger="sub")
        log.shutdown()
        with open(logpath, 'r') as f:
            self.assertGreaterEqual(len(f.readlines()), 1)
