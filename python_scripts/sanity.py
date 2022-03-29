import logging
import pathlib
from datetime import datetime, timedelta

from git import Git

ARTIFACTS_REPO_PATH = pathlib.Path("/home/role.esmfmaint/scratch/esmf-test-artifacts")
DEV_ARTIFACTS_REPO_PATH = pathlib.Path("/home/rlong/Sandbox/esmf-test-artifacts")

logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s %(name)-12s %(levelname)-8s %(message)s",
    handlers=[logging.FileHandler("sanity.log"), logging.StreamHandler()],
)


def last_commit(repo, branch) -> datetime:
    logging.debug("fetching last commit timestamp from branch [%s]", branch)
    repo.checkout(branch_name=branch)
    x = int(repo.log("--format=%cd", "--date=raw").stdout.split("\n", maxsplit=1)[0].split(maxsplit=1)[0])
    return datetime.fromtimestamp(x)


def main():
    logging.debug("using repo path [%s]", DEV_ARTIFACTS_REPO_PATH)
    artifacts_repo = Git(repopath=DEV_ARTIFACTS_REPO_PATH)
    logging.debug("fetching artifacts repo updates")
    artifacts_repo.fetch()
    status = [(branch, last_commit(artifacts_repo, branch)) for branch in artifacts_repo.list_all_branches()]
    now = datetime.now()
    with open("alerts.txt", "w") as _file:
        for s in status:
            if not now - timedelta(hours=24) <= s[1] <= now:
                _file.write(f"{s[0]} has not reported in over 24 hours\n")


if __name__ == "__main__":
    main()
