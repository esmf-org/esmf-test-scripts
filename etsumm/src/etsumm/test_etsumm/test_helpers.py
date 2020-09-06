import os
from unittest import SkipTest

from etsumm.environment import env
from etsumm.helpers import clone_git_repo
from etsumm.test_etsumm.base import TestBase


class TestHelpers(TestBase):
    should_clone = False

    def test_clone_git_repo(self):
        raise SkipTest("dev only")
        dst = os.path.join(self.testdir, env.ESMF_TEST_ARTIFACTS_NAME)
        clone_git_repo(env.ESMF_TEST_ARTIFACTS_URL, dst)
        self.assertTrue(os.path.exists(dst))
