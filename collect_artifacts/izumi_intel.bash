#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
#git pull

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/mpiuni/
mkdir apps lib examples test out 

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/mpiuni/
mkdir apps lib examples test out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/openmpi/4.0.3/
mkdir apps lib examples test out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/openmpi/4.0.3/
mkdir apps lib examples test out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Linux_intel_19.1.0.166_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Linux_intel_19.1.0.166_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Linux_intel_19.1.0.166_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Linux_intel_19.1.0.166_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Linux_intel_19.1.0.166_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Linux_intel_19.1.0.166_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Linux_intel_19.1.0.166_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Linux_intel_19.1.0.166_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Linux_intel_19.1.0.166_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Linux_intel_19.1.0.166_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Linux_intel_19.1.0.166_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Linux_intel_19.1.0.166_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Linux_intel_19.1.0.166_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Linux_intel_19.1.0.166_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Linux_intel_19.1.0.166_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Linux_intel_19.1.0.166_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*19.1.0.166mpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*19.1.0.166mpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*19.1.0.166mpiuni_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*19.1.0.166mpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*19.1.0.166mpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*19.1.0.166mpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*19.1.0.166mpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*19.1.0.166mpiuni_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*19.1.0.166mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*19.1.0.166mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*19.1.0.166mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*19.1.0.166mpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*19.1.0.166mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*19.1.0.166mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*19.1.0.166mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*19.1.0.166mpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*19.1.0.166mpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*19.1.0.166mpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*19.1.0.166mpiuni_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*19.1.0.166mpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*19.1.0.166mpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*19.1.0.166mpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*19.1.0.166mpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*19.1.0.166mpiuni_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*19.1.0.166mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*19.1.0.166mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*19.1.0.166mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*19.1.0.166mpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*19.1.0.166mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*19.1.0.166mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*19.1.0.166mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*19.1.0.166mpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/g/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*19.1.0.166openmpi_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*19.1.0.166openmpi_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*19.1.0.166openmpi_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*19.1.0.166openmpi_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*19.1.0.166openmpi_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*19.1.0.166openmpi_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*19.1.0.166openmpi_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*19.1.0.166openmpi_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*19.1.0.166openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*19.1.0.166openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*19.1.0.166openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*19.1.0.166openmpi_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*19.1.0.166openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*19.1.0.166openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*19.1.0.166openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*19.1.0.166openmpi_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/19.1.0.166/O/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*19.1.0.166openmpi_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*19.1.0.166openmpi_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*19.1.0.166openmpi_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*19.1.0.166openmpi_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*19.1.0.166openmpi_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*19.1.0.166openmpi_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*19.1.0.166openmpi_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*19.1.0.166openmpi_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*19.1.0.166openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*19.1.0.166openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*19.1.0.166openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*19.1.0.166openmpi_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*19.1.0.166openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*19.1.0.166openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*19.1.0.166openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*19.1.0.166openmpi_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/
touch a.sh
git rm *.log
cp -rf /project/esmf/himanshu/storage/develop/meta_data_izumi_intel.log summary.log
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /project/esmf/himanshu/intel/esmf_logs/2011_test/ESMFdailyLog result.html
sed -i '1i<pre>' result.html
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/intel/

git log --since=6.days --grep='Izumi Intel commit log' >  commit.log

touch error.html
sed -i '1i<pre>' error.html
echo " \n Test artifact link : https://github.com/esmf-org/esmf-test-artifacts/tree/master/develop/izumi/intel/ " >> error.html
echo " \n Crashed Info : \n" >> error.html
grep -r 'CRASHED' */* >> error.html
echo " \n FAILED Info : \n" >> error.html
grep -r 'FAIL:' */* >> error.html
echo " \n ERROR Info : \n" >> error.html
grep -r ' ERROR ' */* >> error.html

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Izumi Intel commit log pushed at `date`"
git push origin master






