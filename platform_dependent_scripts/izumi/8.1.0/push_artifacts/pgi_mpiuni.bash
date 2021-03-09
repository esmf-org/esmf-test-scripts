#!/bin/bash

cd /project/esmf/himanshu/release_8.1.0/store
rm meta_data_izumi_pgi_mpiuni.log


touch meta_data_izumi_pgi_mpiuni.log
cat /project/esmf/himanshu/release_8.1.0/pgi/LOGDIR/Test_Status >> meta_data_izumi_pgi_mpiuni.log

echo "Test_Failures :" `cat /project/esmf/himanshu/release_8.1.0/pgi/LOGDIR/Test_Failures` >> meta_data_izumi_pgi_mpiuni.log
echo "Test_artifacts made at" `date` >> meta_data_izumi_pgi_mpiuni.log



cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

mkdir -p release/8.1.0/izumi/pgi/20.1/g/mpiuni
mkdir -p release/8.1.0/izumi/pgi/20.1/O/mpiuni

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/mpiuni/
mkdir apps examples test lib out
cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/mpiuni/
mkdir apps examples test lib out
#cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/openmpi/4.0.3/
#mkdir apps examples test lib out
#cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/openmpi/4.0.3/
#mkdir apps examples test lib out

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/release_8.1.0/store/appsg_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/mpiuni/apps/
touch a.sh
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/release_8.1.0/store/appsO_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/release_8.1.0/store/libg_Linux_pgi_mpiuni/* .
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf /project/esmf/himanshu/release_8.1.0/store/libO_Linux_pgi_mpiuni/* .
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/release_8.1.0/store/examplesg_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/mpiuni/examples
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/release_8.1.0/store/examplesO_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/release_8.1.0/store/testg_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf /project/esmf/himanshu/release_8.1.0/store/testO_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh




cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_apps_*pgimpiuni_g.out build_apps.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_examples_*pgimpiuni_g.out build_examples.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_Linux*pgimpiuni_g.out build.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_quick_start_*pgimpiuni_g.out build_quick_start.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_system_tests_*pgimpiuni_g.out build_system_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_unit_tests_*pgimpiuni_g.out build_unit_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/installcheck_*pgimpiuni_g.out installcheck.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/install_Linux*pgimpiuni_g.out install.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_examples_*pgimpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_system_tests_*pgimpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_unit_tests_Linux*pgimpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/install_unit_tests_benchmark_*pgimpiuni_g.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_examples_uni_*pgimpiuni_g.out run_examples.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_system_tests_uni_*pgimpiuni_g.out run_system_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_unit_tests_uni_*pgimpiuni_g.out run_unit_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_unit_tests_benchmark_*pgimpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/mpiuni/out/
touch a.sh
git rm *.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_apps_*pgimpiuni_O.out build_apps.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_examples_*pgimpiuni_O.out build_examples.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_Linux*pgimpiuni_O.out build.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_quick_start_*pgimpiuni_O.out build_quick_start.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_system_tests_*pgimpiuni_O.out build_system_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_unit_tests_*pgimpiuni_O.out build_unit_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/installcheck_*pgimpiuni_O.out installcheck.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/install_Linux*pgimpiuni_O.out install.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_examples_*pgimpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_system_tests_*pgimpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_unit_tests_Linux*pgimpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/install_unit_tests_benchmark_*pgimpiuni_O.out install_unit_tests_benchmark.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_examples_uni_*pgimpiuni_O.out run_examples.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_system_tests_uni_*pgimpiuni_O.out run_system_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_unit_tests_uni_*pgimpiuni_O.out run_unit_tests.out
cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_unit_tests_benchmark_*pgimpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm a.sh

#cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/g/openmpi/4.0.3/out/
#touch a.sh
#git rm *.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_apps_*pgiopenmpi_g.out build_apps.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_examples_*pgiopenmpi_g.out build_examples.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_Linux*pgiopenmpi_g.out build.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_quick_start_*pgiopenmpi_g.out build_quick_start.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_system_tests_*pgiopenmpi_g.out build_system_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/build_unit_tests_*pgiopenmpi_g.out build_unit_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/installcheck_*pgiopenmpi_g.out installcheck.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/install_Linux*pgiopenmpi_g.out install.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_examples_*pgiopenmpi_g.out run_examples.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_system_tests_*pgiopenmpi_g.out run_system_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_unit_tests_Linux*pgiopenmpi_g.out run_unit_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/install_unit_tests_benchmark_*pgiopenmpi_g.out install_unit_tests_benchmark.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_examples_uni_*pgiopenmpi_g.out run_examples.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_system_tests_uni_*pgiopenmpi_g.out run_system_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_unit_tests_uni_*pgiopenmpi_g.out run_unit_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/g_outputfiles/run_unit_tests_benchmark_*pgiopenmpi_g.out  run_unit_tests_benchmark.out
#for h in *.out; do date >> $h; done
#rm a.sh

#cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/20.1/O/openmpi/4.0.3/out/
#touch a.sh
#git rm *.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_apps_*pgiopenmpi_O.out build_apps.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_examples_*pgiopenmpi_O.out build_examples.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_Linux*pgiopenmpi_O.out build.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_quick_start_*pgiopenmpi_O.out build_quick_start.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_system_tests_*pgiopenmpi_O.out build_system_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/build_unit_tests_*pgiopenmpi_O.out build_unit_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/installcheck_*pgiopenmpi_O.out installcheck.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/install_Linux*pgiopenmpi_O.out install.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_examples_*pgiopenmpi_O.out run_examples.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_system_tests_*pgiopenmpi_O.out run_system_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_unit_tests_Linux*pgiopenmpi_O.out run_unit_tests.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/install_unit_tests_benchmark_*pgiopenmpi_O.out install_unit_tests_benchmark.out
#cp -rf /project/esmf/himanshu/release_8.1.0/store/O_outputfiles/run_examples_uni_*pgiopenmpi_O.out run_examples.out


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/
touch a.sh
git rm *.log
cp -rf /project/esmf/himanshu/release_8.1.0/store/meta_data_izumi_pgi_mpiuni.log summary.log
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /project/esmf/himanshu/release_8.1.0/pgi/LOGDIR/newMailMessage result.html
sed -i '1i<pre>' result.html
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/izumi/pgi/
git log --since=6.days --grep='Release 8.1.0 Izumi PGI commit log' >  commit.log

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Release 8.1.0 Izumi PGI commit log pushed at `date` [ci skip] "
git push origin master
