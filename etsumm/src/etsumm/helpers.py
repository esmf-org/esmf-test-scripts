import re

import git
from git import RemoteProgress

from etsumm.environment import env
from etsumm.etlog import log
from etsumm.regexps import REGEXPS


def summarize():
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
                key = test_target.groups()[0].lower()
                counts = match.groupdict()
                counts = {k: int(v) for k, v in counts.items()}
                summ[key] = counts
                summ[key]['src'] = target.strip()
    return summ


class Progress(RemoteProgress):
    def update(self, op_code, cur_count, max_count=None, message=''):
        print('update(%s, %s, %s, %s)'%(op_code, cur_count, max_count, message))


def clone_git_repo(url, dst):
    multi_options = ['--depth 1']
    log("Starting to clone ESMF Test Artifacts repository")
    git.Repo.clone_from(url, dst, multi_options=multi_options)
    log("Finished cloing ESMF Test Artifacts repository")
