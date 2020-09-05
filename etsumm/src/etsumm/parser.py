import os
import re
from collections import OrderedDict
from logging import DEBUG
from pathlib import Path

import jsonschema

from etsumm.environment import env
from etsumm.etlog import log
from etsumm.helpers import get_temporary_output_directory, clone_esmf_artifacts
from etsumm.regexps import REGEXPS

PARSER_CONFIG = {
    "type": "object",
    "properties": {
        "branch":        {"type": "string"},
        "platform":      {"type": "string"},
        "compiler":      {"type": "string"},
        "optimization":  {"type": "string"},
        "comm":          {"type": "string"},
        "artifacts":     {"type": "string"}
    },
    "required": ["branch", "platform", "compiler", "optimization", "comm",
                 "artifacts"]
}


class Parser(object):

    def __init__(self, config, target):
        self.config = config
        self.target = target

        if env.LOGLVL == DEBUG:
            self.debug = True
        else:
            self.debug = False

    @property
    def results_dir(self):
        order = ["branch", "platform", "compiler", "optimization", "comm"]
        ret = self.config["artifacts"]
        for o in order:
            ret = os.path.join(ret, self.config[o])
        return ret

    @property
    def target_dir(self):
        if self.target == "examples":
            d = "examples"
        else:
            d = "test"
        return os.path.join(self.results_dir, d)

    def initialize(self):
        assert self.target in ["examples", "system_tests", "unit_tests"]
        jsonschema.validate(instance=self.config, schema=PARSER_CONFIG)
        assert os.path.exists(self.config['artifacts'])
        assert os.path.exists(self.results_dir)
        assert os.path.exists(self.target_dir)

    def run(self):
        expr = re.compile(REGEXPS['log_line'])
        for de in os.scandir(self.target_dir):
            if de.name.endswith('.Log'):
                logpath = Path(de.path)
                stdout = Path(os.path.join(self.target_dir, os.path.splitext(logpath.name)[0] + '.stdout'))
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
                                append_to.append(gd)
                yield meta

    def finalize(self):
        pass
