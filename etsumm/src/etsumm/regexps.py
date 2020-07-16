from collections import OrderedDict


REGEXPS = OrderedDict()
REGEXPS['unit_tests'] = "Found (?P<count>[0-9]+) .*, (?P<pass>[0-9]+) passed and (?P<fail>[0-9]+) failed."
REGEXPS['test_tags'] = "(.*) SUMMARY"
