#!/bin/bash

cd /home/himanshu/storage/develop
rm meta_data_bighorn_pgi.log
touch meta_data_bighorn_pgi.log
cat /scratch/esmf/manual/pgi_mpiuni/LOGDIR/Test_Status >> meta_data_bighorn_pgi.log
echo "Test_Failures :" `cat /scratch/esmf/manual/pgi_mpiuni/LOGDIR/Test_Failures` >> meta_data_bighorn_pgi.log
echo "Test_artifacts made at `date` "  >> meta_data_bighorn_pgi.log

cd /project/esmf/esmf-test-artifacts/
git pull

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/g/mpiuni/
mkdir apps test examples lib out

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/O/mpiuni/
mkdir apps test examples lib out

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/g/mpiuni/apps/
touch c.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsg_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm c.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/O/mpiuni/apps/
touch d.sh
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/appsO_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/g/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libg_Linux_pgi_mpiuni/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/O/mpiuni/lib/
touch a.sh
git rm *.mk
cp -rf ~/storage/develop/libO_Linux_pgi_mpiuni/* .
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/g/mpiuni/examples/
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesg_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/O/mpiuni/examples/
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/examplesO_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/g/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testg_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/O/mpiuni/test
touch a.sh
git rm *.config
git rm *_results
git rm *.stdout
git rm *.Log
cp -rf ~/storage/develop/testO_Linux_pgi_mpiuni/* .
for h in *.Log; do date >> $h; done
for i in *.stdout; do date >> $i; done
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/g/mpiuni/out/
touch d.sh
git rm *.out
cp -rf ~/storage/develop/g_outputfiles/build_apps_*pgimpiuni_g.out build_apps.out
cp -rf ~/storage/develop/g_outputfiles/build_examples_*pgimpiuni_g.out build_examples.out
cp -rf ~/storage/develop/g_outputfiles/build_Linux*pgimpiuni_g.out build.out
cp -rf ~/storage/develop/g_outputfiles/build_quick_start_*pgimpiuni_g.out build_quick_start.out
cp -rf ~/storage/develop/g_outputfiles/build_system_tests_*pgimpiuni_g.out build_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/build_unit_tests_*pgimpiuni_g.out build_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/installcheck_*pgimpiuni_g.out installcheck.out
cp -rf ~/storage/develop/g_outputfiles/install_Linux*pgimpiuni_g.out install.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_*pgimpiuni_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_*pgimpiuni_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_Linux*pgimpiuni_g.out run_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/install_unit_tests_benchmark_*pgimpiuni_g.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/g_outputfiles/run_examples_uni_*pgimpiuni_g.out run_examples.out
cp -rf ~/storage/develop/g_outputfiles/run_system_tests_uni_*pgimpiuni_g.out run_system_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_uni_*pgimpiuni_g.out run_unit_tests.out
cp -rf ~/storage/develop/g_outputfiles/run_unit_tests_benchmark_*pgimpiuni_g.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/19.9/O/mpiuni/out/
touch d.sh
git rm *.out
cp -rf ~/storage/develop/O_outputfiles/build_apps_*pgimpiuni_O.out build_apps.out
cp -rf ~/storage/develop/O_outputfiles/build_examples_*pgimpiuni_O.out build_examples.out
cp -rf ~/storage/develop/O_outputfiles/build_Linux*pgimpiuni_O.out build.out
cp -rf ~/storage/develop/O_outputfiles/build_quick_start_*pgimpiuni_O.out build_quick_start.out
cp -rf ~/storage/develop/O_outputfiles/build_system_tests_*pgimpiuni_O.out build_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/build_unit_tests_*pgimpiuni_O.out build_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/installcheck_*pgimpiuni_O.out installcheck.out
cp -rf ~/storage/develop/O_outputfiles/install_Linux*pgimpiuni_O.out install.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_*pgimpiuni_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_*pgimpiuni_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_Linux*pgimpiuni_O.out run_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/install_unit_tests_benchmark_*pgimpiuni_O.out install_unit_tests_benchmark.out
cp -rf ~/storage/develop/O_outputfiles/run_examples_uni_*pgimpiuni_O.out run_examples.out
cp -rf ~/storage/develop/O_outputfiles/run_system_tests_uni_*pgimpiuni_O.out run_system_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_uni_*pgimpiuni_O.out run_unit_tests.out
cp -rf ~/storage/develop/O_outputfiles/run_unit_tests_benchmark_*pgimpiuni_O.out  run_unit_tests_benchmark.out
for h in *.out; do date >> $h; done
rm d.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/
touch a.sh
git rm summary.log
cp -rf ~/storage/develop/meta_data_bighorn_pgi.log summary.log
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /scratch/esmf/manual/pgi_mpiuni/LOGDIR/newMailMessage result.html
sed -i '1i<pre>' result.html
rm a.sh

cd /project/esmf/esmf-test-artifacts/develop/bighorn/pgi/

git log --since=6.days --grep='Bighorn PGI commit log' > commit.log


cd /project/esmf/esmf-test-artifacts/
git add .
git commit -m " Bighorn PGI commit log pushed at `date` [ci skip]"
#git commit -m " Bighorn PGI commit log pushed at Wed Dec 16 02:50:33 MST 2020 "
git push origin master
