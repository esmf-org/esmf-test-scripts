HIERARCHY = ["branch", "platform", "compiler", "compiler_version", "optimization", "comm"]

BRANCH = ["develop"]

PLATFORM = ["bighorn", "catania", "cheyenne", "stampede"]

COMPILER = ["gfortran", "intel", "pgi", "intelclang"]

COMM = ["mpich3", "intelmpi", "mpt", "openmpi", "mpiuni"]

BASE_RESULT_SUMMARY = {'unit tests': {'count': 'not run', 'pass': 'not run', 'fail': 'not run'},
                       'system tests': {'count': 'not run', 'pass': 'not run', 'fail': 'not run'},
                       'examples': {'count': 'not run', 'pass': 'not run', 'fail': 'not run'}}