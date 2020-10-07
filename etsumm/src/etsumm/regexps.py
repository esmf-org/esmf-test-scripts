from collections import OrderedDict

REGEXPS = OrderedDict()
REGEXPS['unit_tests'] = "Found (?P<count>[0-9]+).*(?P<type>system tests|examples|unit tests), (?P<pass>[0-9]+) passed and (?P<fail>[0-9]+) failed."
REGEXPS['test_tags'] = "(.*) SUMMARY"
REGEXPS['log_line'] = "(?P<date>[0-9]+) (?P<time>[0-9\\.]+) (?P<tag>[A-Z]+) + PET(?P<pet>[0-9]+) +(?P<result>PASS|FAIL|ERROR) +(?P<msg>.*), (?P<filename>ESMF_.+\\.F90), line (?P<line>[0-9]+)"
