import os
import unittest

from etsumm.environment import env


class TestBase(unittest.TestCase):
    pass


class TestUnitTests(TestBase):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.workdir = None
        for de in os.scandir(env.ESMF_DIR):
            if de.is_dir() and de.name.startswith('test'):
                for de2 in os.scandir(de.path):
                    if de2.is_dir():
                        self.workdir = de2.path
        assert self.workdir is not None

    def test_hello(self):
        self.assertTrue(True)


if __name__ == '__main__':
    unittest.main()
