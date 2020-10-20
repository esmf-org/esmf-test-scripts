import json
import unittest

from etsumm.environment import env


class TestContainer(unittest.TestCase):
    longMessage = True

    @classmethod
    def add_test(cls, meta, parser=None):
        test_name = 'test_{}'.format(meta['test_name'])

        if parser is not None:
            # Make the test name unique
            for h in env.CONSTANTS['hierarchy']:
                test_name += ' {}={}'.format(h, parser.config[h])
            # Path to the test artifacts
            format_values = {h: parser.config[h] for h in env.CONSTANTS['hierarchy']}
            #print("value1:", format_values[5])
            print("valuex:",format_values["comm"])
            #if(comm=="mpiuni"):
            #    uri = "https://github.com/esmf-org/esmf-test-artifacts/tree/master/{branch}/{platform}/{compiler}/{compiler_version}/{optimization}/{comm}".format(**format_values)
            #else:
            #    uri = "https://github.com/esmf-org/esmf-test-artifacts/tree/master/{branch}/{platform}/{compiler}/{compiler_version}/{optimization}/{comm}/{comm_version}".format(**format_values)               
            meta['github_url'] = uri

        # Not allowed in test names
        test_name = test_name.replace('.', '_')

        def test(self):
            self.assertEqual(meta['result'], "PASS", json.dumps(meta))

        setattr(cls, test_name, test)

    @classmethod
    def add_outfile_exists_test(cls, outfile):
        test_name = "test {} exists".format(outfile.name)
        test_name.replace('.', '_')

        def test(self):
            self.assertTrue(outfile.exists(), str(outfile))

        setattr(cls, test_name, test)
