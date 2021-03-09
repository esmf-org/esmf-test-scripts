#!/bin/bash

check=`date +%A`
echo $check

cd /home/himanshu/new/esmf-org.github.io/
git pull

cd /project/esmf/himanshu/esmf_test/cronjobs/daily/bfb_testing/sanity/esmf_logs/2011_test/
cp -rf ESMFdailyLog /home/himanshu/new/esmf-org.github.io/regression_test_result/nightly/develop/bfb/$check/ESMF_Trunk_BFB_Combination_Catania_Test.html

cd /home/himanshu/new/esmf-org.github.io/regression_test_result/nightly/develop/bfb/$check/
{ echo -n '<pre> '; cat ESMF_Trunk_BFB_Combination_Catania_Test.html; } > ESMF_Trunk_BFB_Combination_Catania_Test.html.new
mv ESMF_Trunk_BFB_Combination_Catania_Test.html{.new,}

cd /home/himanshu/new/esmf-org.github.io/
git add .
git commit -m " Catania BFB Combination html pushed at `date`"
git push origin master
