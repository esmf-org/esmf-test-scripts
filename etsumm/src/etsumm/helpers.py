import os
import re
import tempfile

import git
from git import RemoteProgress

from etsumm.environment import env
from etsumm.etlog import log
from etsumm.itester import itr_products_keywords
from etsumm.regexps import REGEXPS


def summarize_test_outfile(outfile):
    ret = {}
    with open(outfile, 'r') as f:
        lines = f.readlines()
        lines.reverse()
        for ctr, line in enumerate(lines):
            if ctr > 100:
                break
            test_target = re.match(REGEXPS['unit_tests'], line)
            if test_target is not None:
                counts = test_target.groupdict()
                key = counts['type'].lower()
                counts = {k: int(v) for k, v in counts.items() if k != "type"}
                ret[key] = counts
                ret[key]['msg'] = line.strip()
                ret[key]['test_name'] = key
                if ret[key]['fail'] == 0:
                    ret[key]['result'] = 'PASS'
                else:
                    ret[key]['result'] = 'FAIL'
    return ret


def full_parse_all_tests(outfile):
    ret = {}
    re_testline = re.compile('^ *(?P<result>PASS|FAIL|CRASHED): (?P<msg>.*)$')
    re_file = re.compile('([A-Za-z0-9_]+\\.(?:F90|C))')
    re_harness = re.compile('^ *(?:PASS|FAIL|CRASHED): .+: (.+)$')
    with open(outfile, 'r') as f:
        for line in f.readlines():
            match = re.match(re_testline, line)
            if match is not None:
                fs = re.search(re_file, line)
                if fs is not None:
                    filename = fs.groups()[0]
                    key = match.groupdict()['msg']
                    found = False
                    for k, v in ret.items():
                        if v['test_name'] == filename:
                            key = k
                            found = True
                            break
                    if found:
                        ret[key]['failures'].append(match.groupdict())
                    else:
                        ret[key] = match.groupdict()
                        ret[key]['test_name'] = filename
                        ret[key]['failures'] = []
                    ret[key]['is_harness'] = False
                else:
                    harness = re.match(re_harness, line).groups()[0]
                    assert '.' not in harness
                    assert harness not in ret
                    ret[harness] = match.groupdict()
                    ret[harness]['test_name'] = harness
                    ret[harness]['is_harness'] = True
    return ret


class Progress(RemoteProgress):
    def update(self, op_code, cur_count, max_count=None, message=''):
        print('update(%s, %s, %s, %s)' % (op_code, cur_count, max_count, message))


def clone_git_repo(url, dst):
    multi_options = ['--depth 1']
    log("Starting to clone ESMF Test Artifacts repository")
    git.Repo.clone_from(url, dst, multi_options=multi_options)
    log("Finished cloing ESMF Test Artifacts repository")


def clone_esmf_artifacts(dstdir):
    dst = os.path.join(dstdir, env.ESMF_TEST_ARTIFACTS_NAME)
    clone_git_repo(env.ESMF_TEST_ARTIFACTS_URL, dst)


def get_temporary_output_directory():
    ret = tempfile.mkdtemp(prefix='etsumm_test_')
    return ret


def find_combinations():
    from etsumm.parser import Parser

    keywords = {'branch':   env.CONSTANTS['branch'],
                'compiler': env.CONSTANTS['compiler'],
                'comm':     env.CONSTANTS['comm'],
                'platform': env.CONSTANTS['platform']}
    combos = [k for k in itr_products_keywords(keywords)]
    configs = [config for config in Parser.iter_config()]
    found = {}
    order = ['branch', 'platform', 'compiler', 'comm']
    for combo in combos:
        combo_red = [combo[h] for h in order]
        for config in configs:
            config_red = [config[h] for h in order]
            if combo_red == config_red:
                found[''.join(combo_red)] = combo
                break
    ordered = sorted(found)
    return [found[o] for o in ordered]


def do_render(targets, filename, template_folder=None, **extra):
    from jinja2 import FileSystemLoader, Environment

    if template_folder is None:
        template_folder = os.path.dirname(os.path.realpath(__file__))
    file_loader = FileSystemLoader(template_folder)
    e = Environment(loader=file_loader, trim_blocks=True, lstrip_blocks=True)
    template = e.get_template(filename)
    ret = template.render(targets=targets, **extra)
    return ret


def make_config_circleci(config_out):
    targets = find_combinations()

    # Collect platforms to make sure they are running as expected.
    platforms = set()
    for target in targets:
        platforms.update([target['platform']])
    for missing in set(env.CONSTANTS['platform']).difference(platforms):
        targets.append({'branch': 'develop', 'platform': missing, 'comm': 'ARTIFACTS', 'compiler': 'MISSING'})

    filename = 'config.jinja2'
    ret = do_render(targets, filename)
    with open(config_out, 'w') as f:
        f.write(ret)


def collect_artifact_problems():
    from etsumm.parser import Parser

    problems = []
    platforms = set()
    for config in Parser.iter_config():
        platforms.update([config['platform']])
        if config['optimization'] not in ('g', 'O'):
            problems.append(config)
        if '.' not in config['comm_version']:
            problems.append(config)
    if platforms != set(env.CONSTANTS['platform']):
        problems.append({'platform': set(env.CONSTANTS['platform']).difference(platforms)})
    return problems
