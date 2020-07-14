import re


def parse_pass_fail(lines):
    expr = re.compile('^PASS (?P<pass>[0-9]+) FAIL (?P<fail>[0-9]+).*$')
    for l in lines:
        match = re.match(expr, l)
        if match is not None:
            gd = match.groupdict()
            ret = {k: int(v) for k, v in gd.items()}
            return ret