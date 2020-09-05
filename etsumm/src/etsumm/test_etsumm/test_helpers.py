import os

import pytest

from etsumm.environment import env
from etsumm.helpers import clone_git_repo
from etsumm.test_etsumm.base import TestBase


class TestHelpers(TestBase):

    @pytest.mark.slow
    def test_clone_git_repo(self):
        dst = os.path.join(self.testdir, env.ESMF_TEST_ARTIFACTS_NAME)
        clone_git_repo(env.ESMF_TEST_ARTIFACTS_URL, dst)
        self.assertTrue(os.path.exists(dst))
