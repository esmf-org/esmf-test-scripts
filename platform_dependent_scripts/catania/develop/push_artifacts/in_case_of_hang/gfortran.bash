#!/bin/bash

cd /project/esmf/himanshu/storage/develop
rm meta_data_catania_gfortran.log
touch meta_data_catania_gfortran.log
cat /project/esmf/himanshu/esmf_test/cronjobs/daily/gfortran/esmf_logs/*/Test_Status >> meta_data_catania_gfortran.log
echo "Test_Failures :" `cat /project/esmf/himanshu/esmf_test/cronjobs/daily/gfortran/esmf_logs/*/Test_Failures` >> meta_data_catania_gfortran.log
echo "Test_artifacts made at" `date`  >> meta_data_catania_gfortran.log

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/
mkdir apps test examples lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/
mkdir apps test examples lib out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_8.4.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_8.4.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_8.4.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_8.4.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_8.4.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_8.4.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_10.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_10.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_10.1.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_10.1.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsg_Darwin_gfortran_10.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/appsO_Darwin_gfortran_10.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
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
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_8.4.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_8.4.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_8.4.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh



cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_8.4.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_8.4.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_8.4.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_8.4.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_8.4.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_8.4.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_8.4.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/8.4.0/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_8.4.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_10.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_10.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_10.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpich3/3.3.2/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_10.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh



cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_10.1.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_10.1.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_10.1.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_10.1.0_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesg_Darwin_gfortran_10.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/examplesO_Darwin_gfortran_10.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/g/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testg_Darwin_gfortran_10.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/10.1.0/O/openmpi/4.0.3/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/storage/develop/testO_Darwin_gfortran_10.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
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
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*8.4.0mpich3_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*8.4.0mpich3_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*8.4.0mpich3_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.4.0mpich3_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*8.4.0mpich3_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*8.4.0mpich3_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*8.4.0mpich3_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.4.0mpich3_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*8.4.0mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*8.4.0mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*8.4.0mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.4.0mpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*8.4.0mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*8.4.0mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*8.4.0mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.4.0mpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*8.4.0openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*8.4.0openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*8.4.0openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.4.0openmpi_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*8.4.0openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*8.4.0openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*8.4.0openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.4.0openmpi_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*10.1.0mpich3_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*10.1.0mpich3_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*10.1.0mpich3_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*10.1.0mpich3_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*10.1.0mpich3_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*10.1.0mpich3_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*10.1.0mpich3_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*10.1.0mpich3_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*10.1.0mpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*10.1.0mpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*10.1.0mpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*10.1.0mpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*10.1.0mpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*10.1.0mpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*10.1.0mpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*10.1.0mpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_examples_uni_*10.1.0openmpi_g.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_system_tests_uni_*10.1.0openmpi_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_uni_*10.1.0openmpi_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/g_outputfiles/run_unit_tests_benchmark_*10.1.0openmpi_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
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
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_examples_uni_*10.1.0openmpi_O.out run_examples.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_system_tests_uni_*10.1.0openmpi_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_uni_*10.1.0openmpi_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/storage/develop/O_outputfiles/run_unit_tests_benchmark_*10.1.0openmpi_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/develop/catania/gfortran/
touch a.sh
git rm summary.log
#git rm *.html
cp -rf /project/esmf/himanshu/storage/develop/meta_data_catania_gfortran.log summary.log
#cp -rf /project/esmf/himanshu/storage/develop/ESMF_Trunk_Catania_gfortran.html result.html
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts
git add .
git commit -m " Catania GFortran artifacts pushed at `date`"
#git commit -m " Catania GFortran artifacts fixed pushed for Sat Dec  5 16:31:17 MST 2020"
git push origin master
