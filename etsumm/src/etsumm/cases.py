import json
import unittest

from etsumm.constants import HIERARCHY


class TestContainer(unittest.TestCase):
    longMessage = True

    @classmethod
    def add_test(cls, meta, parser=None):
        test_name = 'test_{}'.format(meta['test_name'])

        if parser is not None:
            # Make the test name unique
            for h in HIERARCHY:
                test_name += ' {}={}'.format(h, parser.config[h])

        # Not allowed in test names
        test_name = test_name.replace('.', '_')

        def test(self):
            self.assertEqual(meta['result'], "PASS", json.dumps(meta))

        setattr(cls, test_name, test)
