import os
import re
import unittest
from collections import OrderedDict
from copy import deepcopy
from logging import DEBUG
from pathlib import Path

import jsonschema
import xmlrunner

from etsumm.cases import TestContainer
from etsumm.constants import HIERARCHY
from etsumm.environment import env
from etsumm.etlog import log
from etsumm.helpers import summarize_all_tests, full_parse_all_tests
from etsumm.regexps import REGEXPS

PARSER_CONFIG = {
    "type": "object",
    "properties": {
        "branch": {"type": "string"},
        "platform": {"type": "string"},
        "compiler": {"type": "string"},
        "compiler_version": {"type": "string"},
        "optimization": {"type": "string"},
        "comm": {"type": "string"},
        "comm_version": {"type": "string"},
        "artifacts": {"type": "string"},
    },
    "required": ["branch", "platform", "compiler", "optimization", "comm", "comm_version", "artifacts"]
}

TARGET_META = {'examples': {'suffix': 'Ex.Log', 'dir': 'examples'},
               'unit_tests': {'suffix': 'UTest.Log', 'dir': 'test'},
               'system_tests': {'suffix': 'STest.Log', 'dir': 'test'}}


class Parser(object):

    def __init__(self, config, debug=False):
        assert type(debug) == bool

        self.config = config
        self.debug = debug

    @property
    def results_dir(self):
        ret = self.config["artifacts"]
        for o in HIERARCHY:
            ret = os.path.join(ret, self.config[o])
        return ret

    @property
    def suffix(self):
        ret = ''
        for h in HIERARCHY:
            ret += self.config[h] + '-'
        ret += self.config['test_target']
        return ret

    def initialize(self):
        jsonschema.validate(instance=self.config, schema=PARSER_CONFIG)
        assert os.path.exists(self.config['artifacts'])
        if not os.path.exists(self.results_dir):
            raise RuntimeError("Results directory does not exist: {}".format(self.results_dir))

    @classmethod
    def iter_parsers(cls, artifacts=None):
        for config in cls.iter_config(artifacts=artifacts):
            yield cls(config)

    @classmethod
    def iter_config(cls, artifacts=None):
        if artifacts is None:
            artifacts = env.ESMF_TEST_ARTIFACTS
        config = {'artifacts': artifacts}
        for test_target in TARGET_META.keys():
            config['test_target'] = test_target
            for branch in os.scandir(artifacts):
                if branch.is_dir() and not branch.name.startswith('.'):
                    config['branch'] = branch.name
                    for platform in os.scandir(branch.path):
                        if platform.is_dir():
                            config['platform'] = platform.name
                            for compiler in os.scandir(platform.path):
                                if compiler.is_dir():
                                    config['compiler'] = compiler.name
                                    for compiler_version in os.scandir(compiler.path):
                                        if compiler_version.is_dir():
                                            config['compiler_version'] = compiler_version.name
                                            for optimization in os.scandir(compiler_version.path):
                                                if optimization.is_dir():
                                                    config['optimization'] = optimization.name
                                                    for comm in os.scandir(optimization.path):
                                                        if comm.is_dir():
                                                            config['comm'] = comm.name
                                                            for comm_version in os.scandir(comm.path):
                                                                if comm_version.is_dir():
                                                                    config['comm_version'] = comm_version.name
                                                                    yield deepcopy(config)

    def iter_test_meta(self):
        #tdk:todo: move this to a helper function
        expr = re.compile(REGEXPS['log_line'])
        test_target = self.config['test_target']
        # Loop for each test target: examples, unit_tests, system_tests
        target_dir = os.path.join(self.results_dir, TARGET_META[test_target]['dir'])
        # Loop for each file in the test output directory
        for de in os.scandir(target_dir):
            # Only select files with appropriate suffix (i.e. STest.Log)
            if de.name.endswith(TARGET_META[test_target]['suffix']):
                logpath = Path(de.path)
                stdout = Path(os.path.join(target_dir, os.path.splitext(logpath.name)[0] + '.stdout'))
                if self.debug:
                    log("current log={}".format(de.path), level=DEBUG)
                current_test = None
                meta = OrderedDict()
                with open(de.path, 'r') as logfile:
                    lines = logfile.readlines()
                    for ctr, line in enumerate(lines, start=1):
                        line = line.strip()
                        match = re.match(expr, line)
                        if match is not None:
                            gd = match.groupdict()
                            if self.debug:
                                log("current match={}".format(gd), level=DEBUG)
                            if gd['msg'] != current_test:
                                current_test = gd['msg']
                                if self.debug:
                                    log("creating new test={}".format(current_test))
                                meta[current_test] = {'logfile': logpath, 'stdout': stdout, 'lines': []}
                                append_to = meta[current_test]['lines']
                            if gd['msg'] == current_test:
                                gd['parsed_line'] = ctr
                                gd['raw'] = line
                                gd['test_target'] = test_target
                                append_to.append(gd)
                yield meta

    def finalize(self):
        pass


def create_suite_runner(parser, outfile, xmlout, verbosity=1):
    outfile = Path(outfile)
    assert outfile.exists()
    xmlout = Path(xmlout)

    # Add tests to this container
    test_cls = deepcopy(TestContainer)

    # Create summary tests for the unit test targets
    basic = summarize_all_tests(str(outfile.absolute()))
    for v in basic.values():
        test_cls.add_test(parser.config, v)

    # Create tests for each line in the all_tests out file
    full = full_parse_all_tests(str(outfile.absolute()))
    for v in full.values():
        test_cls.add_test(parser.config, v)

    # test_cls = deepcopy(TestContainer)
    # for meta in parser.iter_test_meta():
    #     for k, v in meta.items():
    #         lines = v.pop('lines')
    #         test_cls.add_test(parser.config, k, v, lines)

    suite = unittest.TestSuite()
    suite.addTests(unittest.TestLoader().loadTestsFromTestCase(test_cls))
    runner = xmlrunner.XMLTestRunner(output=str(xmlout.absolute()), verbosity=verbosity)
    return suite, runner