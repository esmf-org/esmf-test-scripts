#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_8.4.0_mpich3/* .
rm a.sh



cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_8.4.0_mpiuni/* .
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_8.4.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_10.1.0_mpich3/* .
rm a.sh



cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_10.1.0_mpiuni/* .
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_10.1.0_openmpi/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*8.4.0mpich3_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*8.4.0mpich3_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*8.4.0mpich3_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*8.4.0mpich3_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*8.4.0mpich3_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*8.4.0mpich3_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*8.4.0mpich3_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*8.4.0mpich3_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*8.4.0mpich3_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*8.4.0mpich3_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*8.4.0mpich3_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*8.4.0mpich3_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*8.4.0mpich3_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*8.4.0mpich3_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*8.4.0mpich3_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.4.0mpich3_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*8.4.0mpich3_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*8.4.0mpich3_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*8.4.0mpich3_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*8.4.0mpich3_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*8.4.0mpich3_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*8.4.0mpich3_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*8.4.0mpich3_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*8.4.0mpich3_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*8.4.0mpich3_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*8.4.0mpich3_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*8.4.0mpich3_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*8.4.0mpich3_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*8.4.0mpich3_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*8.4.0mpich3_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*8.4.0mpich3_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.4.0mpich3_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*8.4.0mpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*8.4.0mpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*8.4.0mpiuni_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*8.4.0mpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*8.4.0mpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*8.4.0mpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*8.4.0mpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*8.4.0mpiuni_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*8.4.0mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*8.4.0mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*8.4.0mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*8.4.0mpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*8.4.0mpiuni_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*8.4.0mpiuni_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*8.4.0mpiuni_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.4.0mpiuni_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*8.4.0mpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*8.4.0mpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*8.4.0mpiuni_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*8.4.0mpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*8.4.0mpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*8.4.0mpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*8.4.0mpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*8.4.0mpiuni_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*8.4.0mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*8.4.0mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*8.4.0mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*8.4.0mpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*8.4.0mpiuni_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*8.4.0mpiuni_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*8.4.0mpiuni_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.4.0mpiuni_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*8.4.0openmpi_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*8.4.0openmpi_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*8.4.0openmpi_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*8.4.0openmpi_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*8.4.0openmpi_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*8.4.0openmpi_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*8.4.0openmpi_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*8.4.0openmpi_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*8.4.0openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*8.4.0openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*8.4.0openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*8.4.0openmpi_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*8.4.0openmpi_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*8.4.0openmpi_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*8.4.0openmpi_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.4.0openmpi_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*8.4.0openmpi_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*8.4.0openmpi_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*8.4.0openmpi_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*8.4.0openmpi_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*8.4.0openmpi_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*8.4.0openmpi_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*8.4.0openmpi_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*8.4.0openmpi_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*8.4.0openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*8.4.0openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*8.4.0openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*8.4.0openmpi_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*8.4.0openmpi_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*8.4.0openmpi_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*8.4.0openmpi_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.4.0openmpi_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*10.1.0mpich3_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*10.1.0mpich3_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*10.1.0mpich3_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*10.1.0mpich3_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*10.1.0mpich3_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*10.1.0mpich3_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*10.1.0mpich3_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*10.1.0mpich3_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*10.1.0mpich3_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*10.1.0mpich3_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*10.1.0mpich3_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*10.1.0mpich3_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*10.1.0mpich3_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*10.1.0mpich3_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*10.1.0mpich3_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*10.1.0mpich3_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*10.1.0mpich3_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*10.1.0mpich3_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*10.1.0mpich3_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*10.1.0mpich3_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*10.1.0mpich3_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*10.1.0mpich3_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*10.1.0mpich3_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*10.1.0mpich3_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*10.1.0mpich3_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*10.1.0mpich3_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*10.1.0mpich3_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*10.1.0mpich3_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*10.1.0mpich3_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*10.1.0mpich3_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*10.1.0mpich3_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*10.1.0mpich3_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*10.1.0mpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*10.1.0mpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*10.1.0mpiuni_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*10.1.0mpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*10.1.0mpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*10.1.0mpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*10.1.0mpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*10.1.0mpiuni_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*10.1.0mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*10.1.0mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*10.1.0mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*10.1.0mpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*10.1.0mpiuni_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*10.1.0mpiuni_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*10.1.0mpiuni_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*10.1.0mpiuni_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*10.1.0mpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*10.1.0mpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*10.1.0mpiuni_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*10.1.0mpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*10.1.0mpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*10.1.0mpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*10.1.0mpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*10.1.0mpiuni_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*10.1.0mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*10.1.0mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*10.1.0mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*10.1.0mpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*10.1.0mpiuni_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*10.1.0mpiuni_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*10.1.0mpiuni_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*10.1.0mpiuni_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*10.1.0openmpi_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*10.1.0openmpi_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*10.1.0openmpi_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*10.1.0openmpi_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*10.1.0openmpi_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*10.1.0openmpi_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*10.1.0openmpi_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*10.1.0openmpi_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*10.1.0openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*10.1.0openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*10.1.0openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*10.1.0openmpi_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*10.1.0openmpi_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*10.1.0openmpi_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*10.1.0openmpi_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*10.1.0openmpi_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*10.1.0openmpi_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*10.1.0openmpi_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*10.1.0openmpi_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*10.1.0openmpi_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*10.1.0openmpi_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*10.1.0openmpi_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*10.1.0openmpi_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*10.1.0openmpi_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*10.1.0openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*10.1.0openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*10.1.0openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*10.1.0openmpi_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*10.1.0openmpi_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*10.1.0openmpi_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*10.1.0openmpi_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*10.1.0openmpi_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_intel_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_intel_mpiuni/* .
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_intel_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_intel_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_intel_mpich3/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_intel_mpich3/* .
rm a.sh



cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_intel_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_intel_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_intel_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_intel_mpiuni/* .
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpich3/3.3.2/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*intelmpich3_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*intelmpich3_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*intelmpich3_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*intelmpich3_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*intelmpich3_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*intelmpich3_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*intelmpich3_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*intelmpich3_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*intelmpich3_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*intelmpich3_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*intelmpich3_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*intelmpich3_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*intelmpich3_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*intelmpich3_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*intelmpich3_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*intelmpich3_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpich3/3.3.2/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*intelmpich3_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*intelmpich3_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*intelmpich3_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*intelmpich3_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*intelmpich3_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*intelmpich3_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*intelmpich3_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*intelmpich3_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*intelmpich3_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*intelmpich3_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*intelmpich3_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*intelmpich3_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*intelmpich3_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*intelmpich3_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*intelmpich3_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*intelmpich3_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*intelmpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*intelmpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*intelmpiuni_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*intelmpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*intelmpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*intelmpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*intelmpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*intelmpiuni_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*intelmpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*intelmpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*intelmpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*intelmpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*intelmpiuni_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*intelmpiuni_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*intelmpiuni_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*intelmpiuni_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/19.1.0.166/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*intelmpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*intelmpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*intelmpiuni_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*intelmpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*intelmpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*intelmpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*intelmpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*intelmpiuni_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*intelmpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*intelmpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*intelmpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*intelmpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*intelmpiuni_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*intelmpiuni_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*intelmpiuni_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*intelmpiuni_O.out  run_unit_tests_benchmark.out
rm a.sh



cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libg_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/storage/develop/libO_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_intelclang_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_apps_*intelclangmpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_examples_*intelclangmpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_Darwin*intelclangmpiuni_g.out build.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_quick_start_*intelclangmpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_system_tests_*intelclangmpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/build_unit_tests_*intelclangmpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/installcheck_*intelclangmpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_Darwin*intelclangmpiuni_g.out install.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_*intelclangmpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_*intelclangmpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_Darwin*intelclangmpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/install_unit_tests_benchmark_*intelclangmpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*intelclangmpiuni_g.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*intelclangmpiuni_g.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*intelclangmpiuni_g.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*intelclangmpiuni_g.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/19.1.0.166_10.0.1/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_apps_*intelclangmpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_examples_*intelclangmpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_Darwin*intelclangmpiuni_O.out build.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_quick_start_*intelclangmpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_system_tests_*intelclangmpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/build_unit_tests_*intelclangmpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/installcheck_*intelclangmpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_Darwin*intelclangmpiuni_O.out install.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_*intelclangmpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_*intelclangmpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_Darwin*intelclangmpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/install_unit_tests_benchmark_*intelclangmpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*intelclangmpiuni_O.out run_examples_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*intelclangmpiuni_O.out run_system_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*intelclangmpiuni_O.out run_unit_tests_uni.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*intelclangmpiuni_O.out  run_unit_tests_benchmark.out
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intelclang/
touch a.sh
git rm *.log
cp -rf /project/esmf/himanshu/storage/develop/meta_data_catania_intelclang.log summary.log
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/intel/
touch a.sh
git rm *.log
cp -rf /project/esmf/himanshu/storage/develop/meta_data_catania_intel.log summary.log
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/
touch a.sh
git rm *.log
cp -rf /project/esmf/himanshu/storage/develop/meta_data_catania_gfortran.log summary.log
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts
git add .
git commit -m " Catania Tuesday artifacts pushed at `date`"
git push origin master

