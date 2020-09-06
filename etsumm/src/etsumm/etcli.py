import logging

import click

from etsumm import etlog
from etsumm.environment import env
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
@click.option('--logpath', required=False, type=click.Path(exists=False, dir_okay=False), default=None,
              help='Path to the output log file.')
def artifact_tests(artifacts, xmlout, branch, platform, compiler, logpath):
    etlog.log.configure(to_file=logpath, to_stream=True)
    etlog.log('Starting...', logger=LOGGER)
    run_artifact_tests(artifacts, xmlout, branch, platform, compiler)
    etlog.log('Success', logger=LOGGER)


if __name__ == '__main__':
    etcli()
