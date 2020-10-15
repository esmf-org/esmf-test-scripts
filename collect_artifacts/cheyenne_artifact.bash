#!/bin/bash

cd ~/storage/esmf-test-artifacts/
git pull


cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/g/mpich3/3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/g/openmpi/3.1.0/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/g/mpich3/3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/mpt/2.22/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/O/mpich3/3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/O/openmpi/3.1.0/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/O/mpich3/3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/mpt/2.22/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/g/mpich3/3.2/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/g/openmpi/3.1.0/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/g/mpich3/3.2/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/mpt/2.22/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/openmpi/4.0.3/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/O/mpich3/3.2/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/O/openmpi/3.1.0/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/O/mpich3/3.2/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/mpt/2.22/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/openmpi/4.0.3/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/g/mpich3/3.2/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/g/openmpi/3.1.0/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/g/mpich3/3.2/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/mpt/2.22/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/openmpi/4.0.3/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/O/mpich3/3.2/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/O/openmpi/3.1.0/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/O/mpich3/3.2/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/mpt/2.22/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/openmpi/4.0.3/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/g/mpich3/3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/g/openmpi/3.1.0/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/g/mpich3/3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/mpt/2.22/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/O/mpich3/3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_6.3.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/O/openmpi/3.1.0/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/O/mpich3/3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_7.2.0_mpich3/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/mpt/2.22/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_9.1.0_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_9.1.0_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/g/mpich3/3.2/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64gfortran6.3.0mpich3_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64gfortran6.3.0mpich3_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64gfortran6.3.0mpich3_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64gfortran6.3.0mpich3_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64gfortran6.3.0mpich3_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64gfortran6.3.0mpich3_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64gfortran6.3.0mpich3_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64gfortran6.3.0mpich3_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64gfortran6.3.0mpich3_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64gfortran6.3.0mpich3_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64gfortran6.3.0mpich3_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64gfortran6.3.0mpich3_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64gfortran6.3.0mpich3_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64gfortran6.3.0mpich3_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64gfortran6.3.0mpich3_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64gfortran6.3.0mpich3_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/g/openmpi/3.1.0/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64gfortran8.1.0openmpi_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64gfortran8.1.0openmpi_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64gfortran8.1.0openmpi_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64gfortran8.1.0openmpi_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64gfortran8.1.0openmpi_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64gfortran8.1.0openmpi_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64gfortran8.1.0openmpi_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64gfortran8.1.0openmpi_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64gfortran8.1.0openmpi_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64gfortran8.1.0openmpi_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64gfortran8.1.0openmpi_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64gfortran8.1.0openmpi_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64gfortran8.1.0openmpi_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64gfortran8.1.0openmpi_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64gfortran8.1.0openmpi_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64gfortran8.1.0openmpi_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/g/mpich3/3.2/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64gfortran7.2.0mpich3_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64gfortran7.2.0mpich3_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64gfortran7.2.0mpich3_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64gfortran7.2.0mpich3_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64gfortran7.2.0mpich3_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64gfortran7.2.0mpich3_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64gfortran7.2.0mpich3_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64gfortran7.2.0mpich3_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64gfortran7.2.0mpich3_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64gfortran7.2.0mpich3_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64gfortran7.2.0mpich3_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64gfortran7.2.0mpich3_g.out run_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64gfortran7.2.0mpich3_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64gfortran7.2.0mpich3_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64gfortran7.2.0mpich3_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64gfortran7.2.0mpich3_g.out run_system_tests_uni.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/mpt/2.22/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64gfortran9.1.0mpt_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64gfortran9.1.0mpt_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64gfortran9.1.0mpt_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64gfortran9.1.0mpt_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64gfortran9.1.0mpt_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64gfortran9.1.0mpt_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64gfortran9.1.0mpt_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64gfortran9.1.0mpt_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64gfortran9.1.0mpt_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64gfortran9.1.0mpt_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64gfortran9.1.0mpt_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64gfortran9.1.0mpt_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64gfortran9.1.0mpt_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64gfortran9.1.0mpt_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64gfortran9.1.0mpt_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64gfortran9.1.0mpt_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/g/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64gfortran9.1.0openmpi_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64gfortran9.1.0openmpi_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64gfortran9.1.0openmpi_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64gfortran9.1.0openmpi_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64gfortran9.1.0openmpi_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64gfortran9.1.0openmpi_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64gfortran9.1.0openmpi_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64gfortran9.1.0openmpi_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64gfortran9.1.0openmpi_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64gfortran9.1.0openmpi_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64gfortran9.1.0openmpi_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64gfortran9.1.0openmpi_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64gfortran9.1.0openmpi_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64gfortran9.1.0openmpi_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64gfortran9.1.0openmpi_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64gfortran9.1.0openmpi_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/6.3.0/O/mpich3/3.2/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64gfortran6.3.0mpich3_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64gfortran6.3.0mpich3_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64gfortran6.3.0mpich3_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64gfortran6.3.0mpich3_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64gfortran6.3.0mpich3_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64gfortran6.3.0mpich3_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64gfortran6.3.0mpich3_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64gfortran6.3.0mpich3_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64gfortran6.3.0mpich3_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64gfortran6.3.0mpich3_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64gfortran6.3.0mpich3_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64gfortran6.3.0mpich3_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64gfortran6.3.0mpich3_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64gfortran6.3.0mpich3_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64gfortran6.3.0mpich3_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64gfortran6.3.0mpich3_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/8.1.0/O/openmpi/3.1.0/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64gfortran8.1.0openmpi_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64gfortran8.1.0openmpi_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64gfortran8.1.0openmpi_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64gfortran8.1.0openmpi_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64gfortran8.1.0openmpi_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64gfortran8.1.0openmpi_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64gfortran8.1.0openmpi_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64gfortran8.1.0openmpi_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64gfortran8.1.0openmpi_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64gfortran8.1.0openmpi_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64gfortran8.1.0openmpi_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64gfortran8.1.0openmpi_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64gfortran8.1.0openmpi_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64gfortran8.1.0openmpi_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64gfortran8.1.0openmpi_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64gfortran8.1.0openmpi_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/7.2.0/O/mpich3/3.2/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64gfortran7.2.0mpich3_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64gfortran7.2.0mpich3_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64gfortran7.2.0mpich3_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64gfortran7.2.0mpich3_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64gfortran7.2.0mpich3_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64gfortran7.2.0mpich3_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64gfortran7.2.0mpich3_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64gfortran7.2.0mpich3_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64gfortran7.2.0mpich3_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64gfortran7.2.0mpich3_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64gfortran7.2.0mpich3_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64gfortran7.2.0mpich3_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64gfortran7.2.0mpich3_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64gfortran7.2.0mpich3_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64gfortran7.2.0mpich3_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64gfortran7.2.0mpich3_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/mpt/2.22/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64gfortran9.1.0mpt_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64gfortran9.1.0mpt_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64gfortran9.1.0mpt_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64gfortran9.1.0mpt_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64gfortran9.1.0mpt_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64gfortran9.1.0mpt_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64gfortran9.1.0mpt_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64gfortran9.1.0mpt_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64gfortran9.1.0mpt_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64gfortran9.1.0mpt_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64gfortran9.1.0mpt_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64gfortran9.1.0mpt_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64gfortran9.1.0mpt_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64gfortran9.1.0mpt_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64gfortran9.1.0mpt_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64gfortran9.1.0mpt_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/9.1.0/O/openmpi/4.0.3/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64gfortran9.1.0openmpi_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64gfortran9.1.0openmpi_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64gfortran9.1.0openmpi_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64gfortran9.1.0openmpi_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64gfortran9.1.0openmpi_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64gfortran9.1.0openmpi_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64gfortran9.1.0openmpi_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64gfortran9.1.0openmpi_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64gfortran9.1.0openmpi_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64gfortran9.1.0openmpi_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64gfortran9.1.0openmpi_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64gfortran9.1.0openmpi_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64gfortran9.1.0openmpi_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64gfortran9.1.0openmpi_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64gfortran9.1.0openmpi_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64gfortran9.1.0openmpi_O.out run_unit_tests.out
rm a.sh


cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/intelmpi/2018.4.274/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/openmpi/3.1.4/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/mpt/2.19/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/g/mpt/2.22/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/intelmpi/2018.4.274/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/openmpi/3.1.4/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/mpt/2.19/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/O/mpt/2.22/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_intel_19.0.5.281_mpt/* .
rm a.sh


cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/intelmpi/2018.4.274/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/openmpi/3.1.4/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/mpt/2.19/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/g/mpt/2.22/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/intelmpi/2018.4.274/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/openmpi/3.1.4/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/mpt/2.19/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/O/mpt/2.22/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/intelmpi/2018.4.274/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/openmpi/3.1.4/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/mpt/2.19/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/g/mpt/2.22/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/intelmpi/2018.4.274/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/openmpi/3.1.4/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/mpt/2.19/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/O/mpt/2.22/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/intelmpi/2018.4.274/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/openmpi/3.1.4/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/mpt/2.19/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/g/mpt/2.22/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/intelmpi/2018.4.274/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_intel_18.0.5_intelmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/openmpi/3.1.4/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_intel_18.0.5_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/mpt/2.19/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_intel_18.0.5_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/O/mpt/2.22/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_intel_19.0.5.281_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/intelmpi/2018.4.274/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64intel18.0.5intelmpi_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64intel18.0.5intelmpi_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64intel18.0.5intelmpi_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64intel18.0.5intelmpi_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64intel18.0.5intelmpi_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64intel18.0.5intelmpi_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64intel18.0.5intelmpi_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64intel18.0.5intelmpi_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64intel18.0.5intelmpi_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64intel18.0.5intelmpi_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64intel18.0.5intelmpi_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64intel18.0.5intelmpi_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64intel18.0.5intelmpi_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64intel18.0.5intelmpi_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64intel18.0.5intelmpi_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64intel18.0.5intelmpi_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/openmpi/3.1.4/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64intel18.0.5openmpi_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64intel18.0.5openmpi_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64intel18.0.5openmpi_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64intel18.0.5openmpi_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64intel18.0.5openmpi_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64intel18.0.5openmpi_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64intel18.0.5openmpi_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64intel18.0.5openmpi_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64intel18.0.5openmpi_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64intel18.0.5openmpi_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64intel18.0.5openmpi_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64intel18.0.5openmpi_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64intel18.0.5openmpi_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64intel18.0.5openmpi_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64intel18.0.5openmpi_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64intel18.0.5openmpi_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/g/mpt/2.19/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64intel18.0.5mpt_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64intel18.0.5mpt_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64intel18.0.5mpt_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64intel18.0.5mpt_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64intel18.0.5mpt_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64intel18.0.5mpt_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64intel18.0.5mpt_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64intel18.0.5mpt_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64intel18.0.5mpt_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64intel18.0.5mpt_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64intel18.0.5mpt_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64intel18.0.5mpt_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64intel18.0.5mpt_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64intel18.0.5mpt_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64intel18.0.5mpt_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64intel18.0.5mpt_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/g/mpt/2.22/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64intel19.0.5.281mpt_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64intel19.0.5.281mpt_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64intel19.0.5.281mpt_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64intel19.0.5.281mpt_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64intel19.0.5.281mpt_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64intel19.0.5.281mpt_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64intel19.0.5.281mpt_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64intel19.0.5.281mpt_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64intel19.0.5.281mpt_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64intel19.0.5.281mpt_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64intel19.0.5.281mpt_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64intel19.0.5.281mpt_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64intel19.0.5.281mpt_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64intel19.0.5.281mpt_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64intel19.0.5.281mpt_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64intel19.0.5.281mpt_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/intelmpi/2018.4.274/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64intel18.0.5intelmpi_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64intel18.0.5intelmpi_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64intel18.0.5intelmpi_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64intel18.0.5intelmpi_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64intel18.0.5intelmpi_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64intel18.0.5intelmpi_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64intel18.0.5intelmpi_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64intel18.0.5intelmpi_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64intel18.0.5intelmpi_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64intel18.0.5intelmpi_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64intel18.0.5intelmpi_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64intel18.0.5intelmpi_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64intel18.0.5intelmpi_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64intel18.0.5intelmpi_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64intel18.0.5intelmpi_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64intel18.0.5intelmpi_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/openmpi/3.1.4/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64intel18.0.5openmpi_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64intel18.0.5openmpi_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64intel18.0.5openmpi_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64intel18.0.5openmpi_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64intel18.0.5openmpi_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64intel18.0.5openmpi_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64intel18.0.5openmpi_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64intel18.0.5openmpi_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64intel18.0.5openmpi_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64intel18.0.5openmpi_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64intel18.0.5openmpi_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64intel18.0.5openmpi_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64intel18.0.5openmpi_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64intel18.0.5openmpi_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64intel18.0.5openmpi_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64intel18.0.5openmpi_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/18.0.5/O/mpt/2.19/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64intel18.0.5mpt_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64intel18.0.5mpt_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64intel18.0.5mpt_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64intel18.0.5mpt_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64intel18.0.5mpt_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64intel18.0.5mpt_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64intel18.0.5mpt_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64intel18.0.5mpt_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64intel18.0.5mpt_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64intel18.0.5mpt_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64intel18.0.5mpt_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64intel18.0.5mpt_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64intel18.0.5mpt_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64intel18.0.5mpt_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64intel18.0.5mpt_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64intel18.0.5mpt_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/19.0.5.281/O/mpt/2.22/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64intel19.0.5.281mpt_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64intel19.0.5.281mpt_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64intel19.0.5.281mpt_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64intel19.0.5.281mpt_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64intel19.0.5.281mpt_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64intel19.0.5.281mpt_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64intel19.0.5.281mpt_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64intel19.0.5.281mpt_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64intel19.0.5.281mpt_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64intel19.0.5.281mpt_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64intel19.0.5.281mpt_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64intel19.0.5.281mpt_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64intel19.0.5.281mpt_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64intel19.0.5.281mpt_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64intel19.0.5.281mpt_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64intel19.0.5.281mpt_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/mpt/2.22/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/openmpi/3.1.4/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_pgi_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/mpt/2.22/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/openmpi/3.1.4/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_pgi_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/mpt/2.22/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/openmpi/3.1.4/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_pgi_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/mpt/2.22/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/openmpi/3.1.4/apps
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_pgi_openmpi/* .
rm a.sh


cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/mpt/2.22/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/openmpi/3.1.4/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_pgi_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/mpt/2.22/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/openmpi/3.1.4/lib
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_pgi_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/mpt/2.22/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/openmpi/3.1.4/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_pgi_openmpi/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/mpt/2.22/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_pgi_mpt/* .
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/openmpi/3.1.4/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_pgi_openmpi/* .
rm a.sh


cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/mpt/2.22/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64pgimpt_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64pgimpt_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64pgimpt_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64pgimpt_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64pgimpt_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64pgimpt_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64pgimpt_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64pgimpt_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64pgimpt_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64pgimpt_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64pgimpt_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64pgimpt_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64pgimpt_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64pgimpt_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64pgimpt_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64pgimpt_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/g/openmpi/3.1.4/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_Linux64pgiopenmpi_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_Linux64pgiopenmpi_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux64pgiopenmpi_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_Linux64pgiopenmpi_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_Linux64pgiopenmpi_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_Linux64pgiopenmpi_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_Linux64pgiopenmpi_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux64pgiopenmpi_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_Linux64pgiopenmpi_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_Linux64pgiopenmpi_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_Linux64pgiopenmpi_g.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_Linux64pgiopenmpi_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_Linux64pgiopenmpi_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_Linux64pgiopenmpi_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_Linux64pgiopenmpi_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux64pgiopenmpi_g.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/mpt/2.22/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64pgimpt_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64pgimpt_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64pgimpt_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64pgimpt_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64pgimpt_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64pgimpt_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64pgimpt_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64pgimpt_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64pgimpt_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64pgimpt_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64pgimpt_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64pgimpt_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64pgimpt_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64pgimpt_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64pgimpt_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64pgimpt_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/19.9/O/openmpi/3.1.4/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_Linux64pgiopenmpi_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_Linux64pgiopenmpi_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux64pgiopenmpi_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_Linux64pgiopenmpi_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_Linux64pgiopenmpi_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_Linux64pgiopenmpi_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_Linux64pgiopenmpi_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux64pgiopenmpi_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_Linux64pgiopenmpi_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_Linux64pgiopenmpi_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_Linux64pgiopenmpi_O.out run_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_Linux64pgiopenmpi_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_Linux64pgiopenmpi_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_Linux64pgiopenmpi_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_Linux64pgiopenmpi_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux64pgiopenmpi_O.out run_unit_tests.out
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/pgi/
touch a.sh
git rm *.log
cp -rf ~/storage/develop/meta_data_cheyenne_pgi.log summary.log
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/gfortran/
touch a.sh
git rm *.log
cp -rf ~/storage/develop/meta_data_cheyenne_gfortran.log summary.log
rm a.sh

cd ~/storage/esmf-test-artifacts/develop/cheyenne/intel/
touch a.sh
git rm *.log
cp -rf ~/storage/develop/meta_data_cheyenne_intel.log summary.log
rm a.sh

cd ~/storage/esmf-test-artifacts
git add .
git commit -m " Cheyenne Monday artifacts pushed at `date`"
git push origin master
