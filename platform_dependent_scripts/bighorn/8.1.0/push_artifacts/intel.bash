#!/bin/bash

cd /project/esmf/bighorn_8.1.0/store
rm meta_data_bighorn_intel.log
touch meta_data_bighorn_intel.log
cat /project/esmf/bighorn_8.1.0/intel/dir/esmf_logs/*/Test_Status >> meta_data_bighorn_intel.log
echo "Test_Failures :" `cat /project/esmf/bighorn_8.1.0/intel/dir/esmf_logs/*/Test_Failures` >> meta_data_bighorn_intel.log
echo "Test_artifacts made at" `date` >> meta_data_bighorn_intel.log

cd /project/esmf/esmf-test-artifacts/
git pull

mkdir -p release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni
mkdir -p release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni

cd  /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni/
mkdir -p apps test examples lib out
cd  /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni/
mkdir -p apps test examples lib out

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni/apps/
touch c.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/bighorn_8.1.0/store/appsg_Linux_intel_19.0.2.187_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm c.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni/apps/
touch d.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/bighorn_8.1.0/store/appsO_Linux_intel_19.0.2.187_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/bighorn_8.1.0/store/libg_Linux_intel_19.0.2.187_mpiuni/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/bighorn_8.1.0/store/libO_Linux_intel_19.0.2.187_mpiuni/* .
rm a.sh


cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni/examples/
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/bighorn_8.1.0/store/examplesg_Linux_intel_19.0.2.187_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni/examples/
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/bighorn_8.1.0/store/examplesO_Linux_intel_19.0.2.187_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/bighorn_8.1.0/store/testg_Linux_intel_19.0.2.187_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/bighorn_8.1.0/store/testO_Linux_intel_19.0.2.187_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/g/mpiuni/out/
touch d.sh
git rm *.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/build_apps_*19.0.2.187mpiuni_g.out build_apps.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/build_examples_*19.0.2.187mpiuni_g.out build_examples.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/build_Linux*19.0.2.187mpiuni_g.out build.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/build_quick_start_*19.0.2.187mpiuni_g.out build_quick_start.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/build_system_tests_*19.0.2.187mpiuni_g.out build_system_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/build_unit_tests_*19.0.2.187mpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/installcheck_*19.0.2.187mpiuni_g.out installcheck.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/install_Linux*19.0.2.187mpiuni_g.out install.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_examples_*19.0.2.187mpiuni_g.out run_examples.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_system_tests_*19.0.2.187mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_unit_tests_Linux*19.0.2.187mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/install_unit_tests_benchmark_*19.0.2.187mpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_examples_uni_*19.0.2.187mpiuni_g.out run_examples.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_system_tests_uni_*19.0.2.187mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_unit_tests_uni_*19.0.2.187mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/g_outputfiles/run_unit_tests_benchmark_*19.0.2.187mpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/19.0.2.187/O/mpiuni/out/
touch d.sh
git rm *.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/build_apps_*19.0.2.187mpiuni_O.out build_apps.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/build_examples_*19.0.2.187mpiuni_O.out build_examples.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/build_Linux*19.0.2.187mpiuni_O.out build.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/build_quick_start_*19.0.2.187mpiuni_O.out build_quick_start.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/build_system_tests_*19.0.2.187mpiuni_O.out build_system_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/build_unit_tests_*19.0.2.187mpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/installcheck_*19.0.2.187mpiuni_O.out installcheck.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/install_Linux*19.0.2.187mpiuni_O.out install.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_examples_*19.0.2.187mpiuni_O.out run_examples.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_system_tests_*19.0.2.187mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_unit_tests_Linux*19.0.2.187mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/install_unit_tests_benchmark_*19.0.2.187mpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_examples_uni_*19.0.2.187mpiuni_O.out run_examples.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_system_tests_uni_*19.0.2.187mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_unit_tests_uni_*19.0.2.187mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/bighorn_8.1.0/store/O_outputfiles/run_unit_tests_benchmark_*19.0.2.187mpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm d.sh


cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/
touch a.sh
git rm summary.log
cp -rf /project/esmf/bighorn_8.1.0/store/meta_data_bighorn_intel.log summary.log
rm a.sh


cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /project/esmf/bighorn_8.1.0/intel/dir/esmf_logs/2102_test/ESMFdailyLog result.html
sed -i '1i<pre>' result.html
rm a.sh

cd /project/esmf/esmf-test-artifacts/release/8.1.0/bighorn/intel/

git log --since=6.days --grep='Release 8.1.0 Bighorn Intel commit log' > commit.log


cd /project/esmf/esmf-test-artifacts/
git add .
git commit -m " Release 8.1.0 Bighorn Intel commit log pushed at `date` [ci skip] "
git push origin master
