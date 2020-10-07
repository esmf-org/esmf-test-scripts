import os
import tempfile

import click

from etsumm import etlog
from etsumm.parser import create_suite_runner
from etsumm.run import run_artifact_tests

LOGGER = 'artifact-tests'


@click.group()
def etcli():
    pass


@etcli.command(help='Run ESMF metadata test wrapper.', name='artifact-tests')
@click.option('--artifacts', required=True, type=click.Path(exists=True, file_okay=False),
              help='Path to the esmf-test-artifacts repository')
@click.option('--xmlout', required=True, type=click.Path(exists=False),
              help='Path to the directory to store XML test output. Directory must not exist and will be created.')
@click.option('--branch', required=False, type=str, default=None,
              help='If provided, run tests for this branch.')
@click.option('--platform', required=False, type=str, default=None,
              help='If provided, run tests for this platform.')
@click.option('--compiler', required=False, type=str, default=None,
              help='If provided, run tests for this compiler.')
@click.option('--comm', required=False, type=str, default=None,
              help='If provided, run tests for this comm.')
@click.option('--logpath', required=False, type=click.Path(exists=False, dir_okay=False), default=None,
              help='Path to the output log file.')
def artifact_tests(artifacts, xmlout, branch, platform, compiler, comm, logpath):
    etlog.log.configure(to_file=logpath, to_stream=True)
    etlog.log('Starting...', logger=LOGGER)
    run_artifact_tests(artifacts, xmlout, branch, platform, compiler, comm)
    etlog.log('Success', logger=LOGGER)


@etcli.command(help="Check for any test failures", name="meta-failures")
@click.option('--xmlout', required=True, type=click.Path(exists=True, dir_okay=True, file_okay=False),
              help='Path to the directory to store XML test output')
def meta_failures(xmlout):
    for de in os.scandir(xmlout):
        if de.name.endswith('.xml'):
            with open(de.path, 'r') as f:
                for line in f.readlines():
                    if "failures=" in line:
                        if 'failures="0"' not in line:
                            raise ValueError("Failure found in: {}".format(de.path))
                        else:
                            break


@etcli.command(help="Test for failures in a test out file", name="check-outfile")
@click.option('--outfile', required=True, type=click.Path(exists=True, dir_okay=False, file_okay=True),
              help='Path to the ESMF test target outfile to evaluate')
@click.option('--xmlout', required=False, type=click.Path(exists=True, dir_okay=True, file_okay=False),
              help='Path to the directory to store XML test output')
@click.option('--logpath', required=False, type=click.Path(exists=False, dir_okay=False), default=None,
              help='Path to the output log file.')
def check_outfile(outfile, xmlout, logpath):
    logger = 'check-outfile'
    etlog.log.configure(to_file=logpath, to_stream=True)
    etlog.log('Starting...', logger=logger)

    if xmlout is None:
        xmlout = tempfile.mkdtemp()
        etlog.log('"xmlout" not provided. Writing to temporary directory: {}'.format(xmlout),
                  logger=logger)

    suite, runner = create_suite_runner(outfile, xmlout)
    runner.run(suite)

    etlog.log('Success', logger=logger)


if __name__ == '__main__':
    etcli()
