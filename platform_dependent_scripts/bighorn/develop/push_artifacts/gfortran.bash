#!/bin/bash

cd /home/himanshu/storage/develop
rm meta_data_bighorn_gfortran.log
touch meta_data_bighorn_gfortran.log
cat /scratch/esmf/esmf_test/cronjobs/trunk/gfortran/dir/esmf_logs/*/Test_Status >> meta_data_bighorn_gfortran.log
echo "Test_Failures :" `cat /scratch/esmf/esmf_test/cronjobs/trunk/gfortran/dir/esmf_logs/*/Test_Failures` >> meta_data_bighorn_gfortran.log
echo "Test_artifacts made at" `date` >> meta_data_bighorn_gfortran.log

cd /project/esmf/esmf-test-artifacts/
git pull

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/
mkdir apps test examples lib out
cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/
mkdir apps test examples lib out
cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/g/mpich3/3.2.1/
mkdir apps test examples lib out
cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/O/mpich3/3.2.1/
mkdir apps test examples lib out
cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/openmpi/3.1.1/
mkdir apps test examples lib out
cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/openmpi/3.1.1/
mkdir apps test examples lib out

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_8.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/g/mpich3/3.2.1/apps/
touch b.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_4.8.5_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm b.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/openmpi/3.1.1/apps/
touch c.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_gfortran_8.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm c.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/O/mpich3/3.2.1/apps/
touch d.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_4.8.5_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/apps/
touch e.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_8.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm e.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/openmpi/3.1.1/apps/
touch f.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_gfortran_8.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm f.sh



cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_8.1.0_mpich3/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/g/mpich3/3.2.1/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_4.8.5_mpich3/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/openmpi/3.1.1/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/O/mpich3/3.2.1/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_4.8.5_mpich3/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_8.1.0_mpich3/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/openmpi/3.1.1/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_gfortran_8.1.0_openmpi/* .
rm a.sh


cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_8.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/g/mpich3/3.2.1/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_4.8.5_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/openmpi/3.1.1/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_gfortran_8.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/O/mpich3/3.2.1/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_4.8.5_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_8.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/openmpi/3.1.1/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_gfortran_8.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_8.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/g/mpich3/3.2.1/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_4.8.5_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/openmpi/3.1.1/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_gfortran_8.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/O/mpich3/3.2.1/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_4.8.5_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_8.1.0_mpich3/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/openmpi/3.1.1/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_gfortran_8.1.0_openmpi/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/g/mpich3/3.2.1/out/
touch e.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_*4.8.5mpich3_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_*4.8.5mpich3_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux*4.8.5mpich3_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_*4.8.5mpich3_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_*4.8.5mpich3_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_*4.8.5mpich3_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_*4.8.5mpich3_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux*4.8.5mpich3_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_*4.8.5mpich3_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_*4.8.5mpich3_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux*4.8.5mpich3_g.out run_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_*4.8.5mpich3_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_*4.8.5mpich3_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_*4.8.5mpich3_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_*4.8.5mpich3_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_*4.8.5mpich3_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm e.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/mpich3/3.2.1/out/
touch e.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_*8.1.0mpich3_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_*8.1.0mpich3_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux*8.1.0mpich3_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_*8.1.0mpich3_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_*8.1.0mpich3_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_*8.1.0mpich3_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_*8.1.0mpich3_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux*8.1.0mpich3_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_*8.1.0mpich3_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_*8.1.0mpich3_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux*8.1.0mpich3_g.out run_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_*8.1.0mpich3_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_*8.1.0mpich3_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_*8.1.0mpich3_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_*8.1.0mpich3_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.1.0mpich3_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm e.sh


cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/g/openmpi/3.1.1/out/
touch d.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_*8.1.0openmpi_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_*8.1.0openmpi_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux*8.1.0openmpi_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_*8.1.0openmpi_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_*8.1.0openmpi_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_*8.1.0openmpi_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_*8.1.0openmpi_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux*8.1.0openmpi_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_*8.1.0openmpi_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_*8.1.0openmpi_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux*8.1.0openmpi_g.out run_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_*8.1.0openmpi_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_*8.1.0openmpi_g.out run_examples_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_*8.1.0openmpi_g.out run_system_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_*8.1.0openmpi_g.out run_unit_tests_uni.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_*8.1.0openmpi_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/4.8.5/O/mpich3/3.2.1/out/
touch c.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_*4.8.5mpich3_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_*4.8.5mpich3_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux*4.8.5mpich3_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_*4.8.5mpich3_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_*4.8.5mpich3_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_*4.8.5mpich3_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_*4.8.5mpich3_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux*4.8.5mpich3_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_*4.8.5mpich3_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_*4.8.5mpich3_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux*4.8.5mpich3_O.out run_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_*4.8.5mpich3_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_*4.8.5mpich3_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_*4.8.5mpich3_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_*4.8.5mpich3_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_*4.8.5mpich3_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm c.sh


cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/mpich3/3.2.1/out/
touch b.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_*8.1.0mpich3_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_*8.1.0mpich3_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux*8.1.0mpich3_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_*8.1.0mpich3_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_*8.1.0mpich3_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_*8.1.0mpich3_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_*8.1.0mpich3_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux*8.1.0mpich3_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_*8.1.0mpich3_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_*8.1.0mpich3_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux*8.1.0mpich3_O.out run_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_*8.1.0mpich3_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_*8.1.0mpich3_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_*8.1.0mpich3_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_*8.1.0mpich3_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.1.0mpich3_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm b.sh


cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/8.1.0/O/openmpi/3.1.1/out/
touch a.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_*8.1.0openmpi_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_*8.1.0openmpi_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux*8.1.0openmpi_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_*8.1.0openmpi_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_*8.1.0openmpi_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_*8.1.0openmpi_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_*8.1.0openmpi_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux*8.1.0openmpi_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_*8.1.0openmpi_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_*8.1.0openmpi_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux*8.1.0openmpi_O.out run_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_*8.1.0openmpi_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_*8.1.0openmpi_O.out run_examples_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_*8.1.0openmpi_O.out run_system_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_*8.1.0openmpi_O.out run_unit_tests_uni.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_*8.1.0openmpi_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh


cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/
touch a.sh
git rm summary.log
cp -rf ~/storage/develop/meta_data_bighorn_gfortran.log summary.log
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /scratch/esmf/esmf_test/cronjobs/trunk/gfortran/dir/esmf_logs/2102_test/ESMFdailyLog result.html
sed -i '1i<pre>' result.html
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/gfortran/

git log --since=6.days --grep='Bighorn GFortran commit log' >  commit.log



cd /project/esmf/esmf-test-artifacts/develop/
git add .
git commit -m " Bighorn GFortran commit log pushed at `date` [ci skip] "
git push origin master
