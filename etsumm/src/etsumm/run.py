from etsumm.environment import env
from etsumm.etlog import log
from etsumm.parser import Parser


def run_artifact_tests(artifacts, xmlout, branch, platform, compiler, comm):
    env.ESMF_TEST_ARTIFACTS = artifacts
    run_filter = {'branch': branch, 'platform': platform, 'compiler': compiler, 'comm': comm}
    for parser in Parser.iter_parsers():
        checks = []
        for k, v in run_filter.items():
            check = False
            if v is not None:
                if parser.config[k] == v:
                    check = True
            else:
                check = True
            checks.append(check)
        if all(checks):
            log("Running tests with config: {}".format(parser.config), logger='run')
            suite, runner = Parser.create_suite_runner(parser, xmlout)
            runner.run(suite)
