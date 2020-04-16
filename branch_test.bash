#!/bin/bash

cd /home/himanshu/esmf-org.github.io/ 
git pull

cd /home/himanshu/esmf-org.github.io/branch_results
rm *.html
rm -r *_tests

cp /project/esmf/regression_test/2week_results/branch_results_noheader/*.shtml .

for f in *.shtml; do 
    mv -- "$f" "${f%.shtml}.html"
done

cp platform_sort.html index.html

for i in compiler_sort.html netcdf.html index.html pio.html python.html external_demos.html nuopc.html platform_sort.html use_test_cases.html 
do
	sed 's/.shtml/.html/g' $i > x1.html
	sed 's;developers/test/daily/2week_results/branch_results_noheader;branch_results;g' x1.html > x2.html
	sed 's;/developers/test/daily/;/;g' x2.html > x3.html
	sed 's;<B>;<button type="button" class="btn btn-primary" data-toggle="popover" title=""><B>;g' x3.html > x4.html
	sed 's;</B></a>;</B></a></div>;g' x4.html > x5.html
        sed 's;<span>;<!-- <span>;g' x5.html > x6.html
	sed 's;</span></div></td>;</span></div></td> -->;g' x6.html > x7.html
	cp x7.html $i
	rm x*.html 
done 

cp -r /project/esmf/regression_test/test_results/* .

for f in dom_tests/* jue_tests/* mar_tests/* mie_tests/* sab_tests/* sun_tests/* tue_tests/* wed_tests/* fri_tests/* lun_tests/* mem_leak_tests/* mon_tests/* sat_tests/* thu_tests/* vie_tests/*
do 
    mv -- "$f" "${f%}.html"
done

sed -i '1i<pre>' dom_tests/*.html
sed -i '1i<pre>' fri_tests/*.html
sed -i '1i<pre>' jue_tests/*.html
sed -i '1i<pre>' lun_tests/*.html
sed -i '1i<pre>' mar_tests/*.html
sed -i '1i<pre>' mem_leak_tests/*.html
sed -i '1i<pre>' mie_tests/*.html
sed -i '1i<pre>' mon_tests/*.html
sed -i '1i<pre>' sab_tests/*.html
sed -i '1i<pre>' sat_tests/*.html
sed -i '1i<pre>' sun_tests/*.html
sed -i '1i<pre>' thu_tests/*.html
sed -i '1i<pre>' tue_tests/*.html
sed -i '1i<pre>' vie_tests/*.html
sed -i '1i<pre>' wed_tests/*.html

cd ..

git add . 
git commit -m " Build branch test results `date` "
git push origin master
