import os
from unittest import SkipTest

from jinja2 import FileSystemLoader, Environment

from etsumm.helpers import find_combinations, summarize_test_outfile, full_parse_all_tests
from etsumm.test_etsumm.base import TestBase


class TestHelpers(TestBase):
    should_clone = True

    def do_render(self, targets, filename, template_folder=None, **extra):
        if template_folder is None:
            template_folder = os.path.dirname(os.path.realpath(__file__))
        file_loader = FileSystemLoader(template_folder)
        env = Environment(loader=file_loader, trim_blocks=True, lstrip_blocks=True)
        template = env.get_template(filename)
        ret = template.render(targets=targets, **extra)
        return ret

    def test_clone_git_repo(self):
        raise SkipTest("dev only")
        # dst = os.path.join(self.testdir, env.ESMF_TEST_ARTIFACTS_NAME)
        # clone_git_repo(env.ESMF_TEST_ARTIFACTS_URL, dst)
        # self.assertTrue(os.path.exists(dst))

    def test_find_combinations(self):
        exists = find_combinations()
        print(exists)
        self.assertGreaterEqual(len(exists), 5)

    def test_make_config_circleci(self):
        targets = find_combinations()
        filename = 'config.jinja2'
        ret = self.do_render(targets, filename)
        with open('/tmp/config.yml', 'w') as f:
            f.write(ret)

    def test_summarize_test_outfile(self):
        outfile = os.path.join(self.path_bin, "esmf-make-all_tests-fail.out")
        ret = summarize_test_outfile(outfile)
        self.assertEqual(ret['unit tests']['fail'], 1)

    def test_summarize_test_outfile_examples_only(self):
        outfile = os.path.join(self.path_bin, "run_examples-no-failures.out")
        ret = summarize_test_outfile(outfile)
        self.assertEqual(ret['examples']['fail'], 0)

    def test_full_parse_all_tests(self):
        outfile = os.path.join(self.path_bin, "esmf-make-all_tests-fail.out")
        ret = full_parse_all_tests(outfile)
        actual_key = 'mpich3/O2: src/Infrastructure/Array/tests/ESMF_ArrayRedistPerfUTest.F90'
        self.assertEqual(len(ret[actual_key]["failures"]), 6)

        harness_count = 0
        for k, v in ret.items():
            if v['is_harness']:
                harness_count += 1
        self.assertEqual(harness_count, 2)