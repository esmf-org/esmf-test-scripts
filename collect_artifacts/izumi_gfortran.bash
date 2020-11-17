#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/mpiuni/
mkdir apps

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/mpiuni/
mkdir apps

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/openmpi/4.0.3/
mkdir apps lib test examples out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/openmpi/4.0.3/
mkdir apps lib test examples out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Linux_gfortran_9.3.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Linux_gfortran_9.3.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Linux_gfortran_9.3.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Linux_gfortran_9.3.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Linux_gfortran_9.3.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Linux_gfortran_9.3.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Linux_gfortran_9.3.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Linux_gfortran_9.3.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Linux_gfortran_9.3.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Linux_gfortran_9.3.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Linux_gfortran_9.3.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Linux_gfortran_9.3.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Linux_gfortran_9.3.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Linux_gfortran_9.3.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Linux_gfortran_9.3.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Linux_gfortran_9.3.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*9.3.0mpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*9.3.0mpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*9.3.0mpiuni_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*9.3.0mpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*9.3.0mpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*9.3.0mpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*9.3.0mpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*9.3.0mpiuni_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*9.3.0mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*9.3.0mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*9.3.0mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*9.3.0mpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*9.3.0mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*9.3.0mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*9.3.0mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*9.3.0mpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*9.3.0mpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*9.3.0mpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*9.3.0mpiuni_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*9.3.0mpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*9.3.0mpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*9.3.0mpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*9.3.0mpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*9.3.0mpiuni_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*9.3.0mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*9.3.0mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*9.3.0mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*9.3.0mpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*9.3.0mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*9.3.0mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*9.3.0mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*9.3.0mpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/g/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*9.3.0openmpi_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*9.3.0openmpi_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*9.3.0openmpi_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*9.3.0openmpi_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*9.3.0openmpi_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*9.3.0openmpi_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*9.3.0openmpi_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*9.3.0openmpi_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*9.3.0openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*9.3.0openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*9.3.0openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*9.3.0openmpi_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*9.3.0openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*9.3.0openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*9.3.0openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*9.3.0openmpi_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/izumi/gfortran/9.3.0/O/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*9.3.0openmpi_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*9.3.0openmpi_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*9.3.0openmpi_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*9.3.0openmpi_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*9.3.0openmpi_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*9.3.0openmpi_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*9.3.0openmpi_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*9.3.0openmpi_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*9.3.0openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*9.3.0openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*9.3.0openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*9.3.0openmpi_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*9.3.0openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*9.3.0openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*9.3.0openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*9.3.0openmpi_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Izumi GFortran error fix pushed at `date`"
git push origin master
