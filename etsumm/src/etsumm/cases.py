import unittest
from copy import deepcopy
from unittest import SkipTest

from etsumm.constants import HIERARCHY


class TestContainer(unittest.TestCase):
    longMessage = True
    # expected = 48
    ran = 0

    # logs = os.getcwd()

    def test_all_tests_ran(self):
        raise SkipTest('tdk:implement')
        self.assertEqual(self.expected, self.ran)

    def test_logs_have_no_errors(self):
        raise SkipTest('tdk:implement')

        def the_pred(de):
            if de.name.endswith('.ESMF_LogFile'):
                return True
            else:
                return False

        to_find = ['ERROR']
        problems = []
        for de in walk_files(self.logs, the_pred):
            with open(de.path, 'r') as f:
                lines = f.readlines()
                for line_number, line in enumerate(lines, start=1):
                    line = line.strip()
                    for tf in to_find:
                        if tf in line:
                            problems.append((de, line, line_number))

        msg = ['\n']
        for tup in problems:
            de, line, line_number = tup
            msg.append(de.name + ':' + str(line_number) + ': ' + line)
        msg = '\n'.join(msg)

        self.assertEqual(len(problems), 0, msg=msg)

    @classmethod
    def add_test(cls, config, name, description, logdata):
        local_description = deepcopy(description)
        test_name = 'test {} "{}"'.format(logdata[0]['test_target'], name)
        for h in HIERARCHY:
            test_name += ' {}={}'.format(h, config[h])

        def test(self):
            for l in logdata:
                local_description['raw'] = l['raw']
                self.assertNotEqual(l['result'], "FAIL", local_description)

        setattr(cls, test_name, test)
