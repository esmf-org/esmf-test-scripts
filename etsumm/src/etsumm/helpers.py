import os
import re

from etsumm.environment import env


def parse_pass_fail(lines):
    expr = re.compile('^PASS (?P<pass>[0-9]+) FAIL (?P<fail>[0-9]+).*$')
    for l in lines:
        match = re.match(expr, l)
        if match is not None:
            gd = match.groupdict()
            ret = {k: int(v) for k, v in gd.items()}
            return ret


def iter_test_files(d):
    for de in os.scandir(d):
        is_dir = de.is_dir()
        if is_dir:
            for de2 in os.scandir(de):
                if de2.is_dir() and de2.name.startswith('test'):
                    for de3 in os.scandir(de2.path):
                        if is_code_file(de3) and 'UTest' in de3.name:
                            yield de3


def iter_files(paths, recursive=True, pred=None):
    for path in paths:
        for de in os.scandir(path):
            if de.is_file():
                if pred is not None:
                    if pred(de):
                        yield de
                else:
                    yield de
            else:
                if de.is_dir() and recursive:
                    for yld2 in iter_files([de.path], recursive=recursive, pred=pred):
                        yield yld2


def is_code_file(de):
    extensions = ['f90', 'c']
    ret = False
    for e in extensions:
        if de.name.lower().endswith('.' + e):
            ret = True
            break
    return ret


def count_tests(tag, srcdirs, regex=None):
    count = 0
    if regex is None:
        expr = re.compile(tag)
    else:
        expr = re.compile(regex)
    for d in srcdirs:
        path = os.path.join(env.ESMF_DIR, 'src', d)
        for codefile in iter_test_files(path):
            with open(codefile, 'r') as f:
                lines = f.readlines()
            for line in lines:
                search = re.search(expr, line)
                if search is not None:
                    count += 1
    return count


def pred_examples(de):
    ret = False
    containing_folder = os.path.basename(os.path.dirname(de.path))
    if containing_folder.startswith('example'):
        if de.name.lower().endswith('ex.f90'):
            ret = True
    return ret


def collect_test_counts():

    # Unit tests --------------------------------------------------------------
    tdirs = ['Infrastructure', 'Superstructure']
    meta = {'NEX_UTest': {'dirs': tdirs},
            'EX_UTest': {'dirs': tdirs, 'regex': '[! /]+EX_UTest'},
            'NEX_Multi_Proc_Only_UTest': {'dirs': tdirs}}
    counts = {}
    for k, v in meta.items():
        counts[k] = count_tests(k, v['dirs'], regex=v.get('regex'))

    # System tests ------------------------------------------------------------
    tag = 'ESMF_MULTI_PROC_SYSTEM_TEST'
    path = os.path.join(env.ESMF_DIR, 'src', 'system_tests')
    count = 0
    for de in os.scandir(path):
        if de.is_dir():
            for de2 in os.scandir(de.path):
                if 'STest' in de2.name and de2.name.lower().endswith('.f90'):
                    with open(de2.path, 'r') as f:
                        for line in f.readlines():
                            if tag in line:
                                count += 1
    counts[tag] = count

    # Examples ----------------------------------------------------------------
    tag = 'ESMF_MULTI_PROC_EXAMPLE'
    paths = [os.path.join('src', 'addon', 'NUOPC'),
             os.path.join('src', 'Infrastructure'),
             os.path.join('src', 'Superstructure')]
    paths = [os.path.join(env.ESMF_DIR, p) for p in paths]
    ecount = 0
    for de in iter_files(paths, pred=pred_examples):
        with open(de.path, 'r') as f:
            for line in f.readlines():
                if tag in line:
                    ecount += 1
                    counts[tag] = ecount

    return counts


def config_value(path, tag):
    ret = False
    with open(path, 'r') as f:
        lines = f.readlines()
        for line in lines:
            if tag.lower() in line.lower():
                ret = True
                break
    return ret
