"""
Used for performing automated assertions using Git to both
test and report.

author: Ryan Long <ryan.long@noaa.gov>
"""

import logging
import os
import pathlib
import timeit
from datetime import datetime, timedelta
from typing import List

from git import Git

ARTIFACTS_REPO_PATH = pathlib.Path("/home/role.esmfmaint/scratch/esmf-test-artifacts")
OUTPUT_FILE_NAME = "README.md"
MAIN = "main"

logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s %(name)-12s %(levelname)-8s %(message)s",
    handlers=[logging.FileHandler("sanity.log"), logging.StreamHandler()],
)


def stale_branches(artifacts_repo: Git, hours_stale: int) -> List[str]:
    """iterates over branches and returns a list of line items that
    have not been updated between now and hours_stale."""
    now = datetime.now()
    status = [(branch, last_commit(artifacts_repo, branch)) for branch in artifacts_repo.list_all_branches()]
    return [f"* *{s[0]}* has not reported in over 24 hours\n" for s in status if
            not now - timedelta(hours=hours_stale) <= s[1] <= now and s[0].lower() != MAIN]


def last_commit(repo, branch) -> datetime:
    """returns the last commit from the repo log.

    Note that this function does checkout each branch
    """
    logging.debug("fetching last commit timestamp from branch [%s]", branch)
    repo.checkout(branch_name=branch)
    result = int(repo.log("--format=%cd", "--date=raw").stdout.split("\n", maxsplit=1)[0].split(maxsplit=1)[0])
    return datetime.fromtimestamp(result)


def write_report(alert_path: pathlib.Path, data: List[str]) -> None:
    """fetches and writes the report data to file"""
    with open(alert_path, "w") as _file:
        _file.write("# Alerts\n")
        _file.writelines(data)


def main():
    start_time = timeit.default_timer()
    logging.info("starting")
    logging.debug("using repo path [%s]", ARTIFACTS_REPO_PATH)
    artifacts_repo = Git(repopath=ARTIFACTS_REPO_PATH)

    logging.debug("fetching artifacts repo updates")
    artifacts_repo.fetch()

    alert_path = pathlib.Path(os.path.join(ARTIFACTS_REPO_PATH, OUTPUT_FILE_NAME))

    logging.debug("determining stale branches")
    data = stale_branches(artifacts_repo, 24)

    logging.debug("checking out main branch")
    artifacts_repo.checkout(branch_name=MAIN)
    write_report(alert_path, data)

    logging.debug("git adding [%s]", alert_path)
    artifacts_repo.add(alert_path)

    logging.debug("git committing")
    artifacts_repo.commit("Update alerts")

    logging.debug("pushing to main branch")
    artifacts_repo.push(branch=MAIN)

    logging.info("finished in %s", (timeit.default_timer() - start_time) / 60)


if __name__ == "__main__":
    main()
