import os

from etsumm.environment import env
from etsumm.etlog import log
from etsumm.parser import Parser, create_suite_runner, OUTFILES


def run_artifact_tests(artifacts, xmlout, branch, platform, compiler, comm):
    env.ESMF_TEST_ARTIFACTS = artifacts
    run_filter = {'branch': branch, 'platform': platform, 'compiler': compiler, 'comm': comm}
    seen_outfiles = set()
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
            for outfile in OUTFILES:
                log("Testing out file: {}".format(outfile))
                outfile = os.path.join(parser.results_dir, 'out', outfile)
                if outfile in seen_outfiles:
                    raise ValueError("out file already processed: {}".format(outfile))
                seen_outfiles.update([outfile])
                suite, runner = create_suite_runner(outfile, xmlout, parser=parser)
                runner.run(suite)
