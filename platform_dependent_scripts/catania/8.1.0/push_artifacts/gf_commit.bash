#!/bin/bash

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git pull

#cd /project/esmf/himanshu/storage/develop
#rm meta_data_catania_gfortran.log
#touch meta_data_catania_gfortran.log
#cat /project/esmf/himanshu/esmf_test/cronjobs/daily/gfortran/dir/esmf_logs/*/Test_Status >> meta_data_catania_gfortran.log
#echo "Test_Failures :" `cat /project/esmf/himanshu/esmf_test/cronjobs/daily/gfortran/dir/esmf_logs/*/Test_Failures` >> meta_data_catania_gfortran.log
#echo "Test_artifacts made at" `date`  >> meta_data_catania_gfortran.log


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/gfortran/
touch a.sh
git rm summary.log
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/store/meta_data_catania_gfortran.log summary.log
rm a.sh

cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/gfortran/
touch a.sh
git rm *.html
git rm commit.log
cp -rf /project/esmf/himanshu/esmf_test/cronjobs/release_8.1.0/gfortran/dir/esmf_logs/2102_test/ESMFdailyLog result.html
{ echo -n '<pre> '; cat result.html; } > result.html.new
mv result.html{.new,}
rm a.sh


cd /project/esmf/himanshu/storage/esmf-test-artifacts/release/8.1.0/catania/gfortran/
git log --since=6.days --grep='Release 8.1.0 Catania GFortran commit log' >  commit.log

cd /project/esmf/himanshu/storage/esmf-test-artifacts/
git add .
git commit -m " Release 8.1.0 Catania GFortran commit log pushed at `date` [ci skip] "
#git commit -m " Catania GFortran commit log pushed at Sat Nov  28 16:32:17 MST 2020"
git push origin master
