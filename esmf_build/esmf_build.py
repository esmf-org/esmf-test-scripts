import os

os.system("module list")
print("---------------------- test_esmf -----------------------")
build=1
do_apps=1
do_sys=1
do_examples=1
do_unit=1

SYS_TEST_TYPE="mpi"
U_TEST_TYPE="mpi"
if( ESMF_COMM = "mpiuni" ):
  SYS_TEST_TYPE="UNI"
  U_TEST_TYPE="UNI"

U_TESTS="nonexhaustive"
if( ESMF_TESTEXHAUSTIVE = "ON" ):
  U_TESTS="EX"

THREADED="nonthreaded"
if( ESMF_TESTWITHTHREADS = "ON" ):
  THREADED="THREADED"

os.system("export APPSDIR="+ESMF_DIR+"/apps/apps"+ESMF_BOPT+"/"+ESMF_OS+"."+ESMF_COMPILER+"."+ESMF_ABI+"."+ESMF_COMM+"."+ESMF_SITE+"/")
OPT = ESMF_BOPT

print("ESMF_DIR = "+ESMF_DIR)
print("ESMF_COMPILER = "+ESMF_COMPILER)
print("ESMF_COMM = "+ESMF_COMM)
print("ESMF_BOPT = "+ESMF_BOPT) 
print("ESMF_TESTEXHAUSTIVE = "+ESMF_TESTEXHAUSTIVE) 
print("ESMF_TESTWITHTHREADS = "+ ESMF_TESTWITHTHREADS)

print("SYS_TEST_TYPE = "+ SYS_TEST_TYPE) 
print("U_TEST_TYPE = "+ U_TEST_TYPE)
print("U_TESTS = "+ U_TESTS)
print("THREADED = "+ THREADED) 

print("homedir = "+ homedir)
print("APPSDIR = "+ APPSDIR)
print("LOGDIR = "+ LOGDIR)

os.system("cd "+ESMF_DIR)
os.system("gmake info")

if(build == "1" ):
    os.system("make clobber  1> tmp 2>&1")

os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
os.system("echo \"_____________________________________________________________________________________________________\" >> "+LOGDIR+"/mailMessage")
os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
os.system("echo \"\" >> "+LOGDIR+"/mailMessage")

test_results=0
install_results=0
unit_tests_build=0
ex_passed=0
ex_failed=0

os.system("echo \"`date` on `uname -n` \" >> "+LOGDIR+"/mailMessage")
os.system("echo \"Compiler and configuration information:\" >> "+LOGDIR+"/mailMessage")
os.system("echo \" \" >> $LOGDIR/mailMessage")
os.system("echo \"-------------------------------------------------------------- \" >> "+LOGDIR+"/mailMessage:")

os.system("module list  1> tmp 2>&1")
os.system("cat tmp >> "+LOGDIR+"/mailMessage")
os.system("echo \" \" >> "+LOGDIR+"/mailMessage")
os.system("git remote -v 1> tmp 2>&1")
if (grep -i "Not a git repository" tmp):
  os.system("echo \"Test_results:blue\" > "+LOGDIR+"/Test_Status")

os.system("echo \"Repository:\" >> "+LOGDIR+"/mailMessage")
os.system("cat tmp >> "+LOGDIR+"/mailMessage")
os.system("echo \" \" >> "+LOGDIR+"/mailMessage")
os.system("git describe --tags 1> tmp 2>&1")
os.system("cat tmp >> "+LOGDIR+"/mailMessage")
os.system("echo \" \" >> "+LOGDIR+"/mailMessage")

os.system("echo \" \" >> "+LOGDIR+"/mailMessage")
os.system("make  ESMF_BOPT="+OPT+" info 1> tmp 2>&1")
os.system("cat tmp >> "+LOGDIR+"/mailMessage")

if(build == "1"):
  print("|------------------------ ESMF BUILD ----------------------------|")
  os.system("make -j4 ESMF_BOPT="+OPT+"  1> tmp 2>&1")

if("$?" != "0"):
  print("Library build FAIL with ESMF_BOPT="+ OPT)

  if(OPT != g ):
    cat tmp > $LOGDIR/build_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  else:
    cat tmp > $LOGDIR/build_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

  os.system("echo \"`date` library build -j4 ***********FAIL\" >> "+LOGDIR+"/mailMessage")
  test_results=1
  os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
  os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
  os.system("echo \"The following is the 'tail' of the build failure\">> "+LOGDIR+"/mailMessage")
  os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
  os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")

  if !(grep "blue" $LOGDIR/Test_Status):
    os.system("echo \"Test_results:red\" > "+LOGDIR+"/Test_Status")
    print("Set Test Status to red.")
  
else:
  print("Library build PASS with ESMF_BOPT="+OPT)
  os.system("echo \"`date` library build -j4 ...........PASS\" >> "+LOGDIR+"/mailMessage")

  numwarnings='grep -ic "warning[ ]*:" tmp'
  if(numwarnings != 0 ):
    os.system("echo \"Builds with warnings.\" >> "+LOGDIR+"/mailMessage")

  if( LOGTMP = "ALL" ):
    if( OPT != g ):
      cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else:   
      cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

  print("|------------------------ INSTALL -------------------------------|")

  os.system("make ESMF_BOPT="+OPT+" install 1> tmp 2>&1")
  if [ "$?" != "0" ]:
    print("Library install FAILED with ESMF_BOPT="+ OPT)
    install_results=1

    if( OPT != g ):
      cat tmp > $LOGDIR/install_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else:
      cat tmp > $LOGDIR/install_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

    os.system("echo \"`date` library install **********FAIL\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"The following is the 'tail' of the install failure\">> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")

    if !(grep "red" $LOGDIR/Test_Status):
      os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
      print("Set Test Status to yellow.")

  else:
    print("Library install PASSED with ESMF_BOPT=", OPT)
    os.system("echo \"`date` library install ..........PASS\" >> "+LOGDIR+"/mailMessage")

    print("|------------------------ INSTALLCHECK --------------------------|")

    os.system("make ESMF_BOPT="+OPT+"  installcheck 1> tmp 2>&1")
    if [ "$?" != "0" ]:
      print("Library install check FAILED with ESMF_BOPT="+OPT)
      install_results=1

      if [ $OPT != g ]:
        cat tmp > $LOGDIR/installcheck_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/installcheck_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

      os.system("echo \"`date` library installcheck *****FAIL\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the install failure\">> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")

    else:
      print("Library installcheck PASSED with ESMF_BOPT="+OPT)
      os.system("echo \"`date` library installcheck .....PASS\" >> "+LOGDIR+"/mailMessage")

    if(build == "1"):
      print("|------------------------ QUICKSTART ----------------------------|")
      os.system("make ESMF_BOPT="+OPT+" build_quick_start 1> tmp 2>&1")
    
    if [ "$?" != "0" ]:
      print("Quick start build check FAILED with ESMF_BOPT="+OPT)
      quickstart_results=1

      if [ $OPT != g ]:
        cat tmp > $LOGDIR/quickstart_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/quickstart_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

      os.system("echo \"`date` quickstart build *********FAIL\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the quickstart build  failure\">> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")

      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")

    else:
      print("Quickstart build passed with ESMF_BOPT="+OPT)
      os.system("echo \"`date` quickstart build .........PASS\" >> "+LOGDIR+"/mailMessage")
      quickstart_results=0
  
  if(do_apps == 1 ):

    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"|------------------------ APPs TESTS -------------------------|\" >> "+LOGDIR+"/mailMessage")

    print("|------------------------ APPS -------------------------------|")

    os.system("make ESMF_BOPT="+OPT+"  build_apps 1> tmp 2>&1")
    if [ "$?" != "0" ]:
      print("build apps FAILED with ESMF_BOPT="+OPT)
      install_results=1

      if( OPT != g ):
        cat tmp > $LOGDIR/buils_apps_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/buils_apps_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      os.system("echo \"`date` apps build ***************FAIL\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the build_apps failure\">> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")

      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")

      os.system("export apps_pass=0")
      os.system("export apps_fail=0")
      os.system("echo \"PASS $apps_pass FAIL $apps_fail\" > "+LOGDIR+"/apps_results")

    else:

      print("build apps PASSED with ESMF_BOPT="+OPT)
      os.system("echo \"`date` apps build ...............PASS\" >> "+LOGDIR+"/mailMessage")

    $homedir/exec_test "apps_test" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR

    os.system("cd "+APPSDIR)

    tar --atime-preserve='replace' -cf app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar *.stdout
    gzip app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.

    read PASS apps_pass FAIL apps_fail < $LOGDIR/apps_results

    apps_total=`expr $apps_fail + $apps_pass`
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"Ran $apps_total applications tests, $apps_pass passed and $apps_fail failed.\" >> "+LOGDIR+"/mailMessage")

  
  os.system("cd "+ESMF_DIR)

  if( do_sys == 1 ):

    os.system("echo \"\" >> "+LOGDIR+"/mailMessage
    os.system("echo \"|----------------------- SYSTEM TESTS -------------------------|\" >>   "+LOGDIR+"/mailMessage")
  
    print( "|------------------------ SYSTEM TESTS --------------------------|" )
    
    os.system("make ESMF_BOPT="+OPT+" build_system_tests 1> tmp 2>&1")
    if [ "$?" != "0" ]:
      print("system_tests build FAIL ")
      os.system("echo \"`date` build_system_tests *******FAIL\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the system tests failure\">> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
  
      if [ $OPT != g ]:
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")
    
    else:
      print("build_system_tests PASS ")
      os.system("echo \"`date` build_system_tests .......PASS\" >> "+LOGDIR+"/mailMessage")
  
      if( LOGTMP = "ALL" ):
        if( OPT != g ):
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else:
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  
    $homedir/exec_test "sys_test" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR
  
    if(SYS_TEST_TYPE = "UNI" ):
      print("run_system_tests_uni PASS ")
      os.system("echo \"`date` run_system_tests_uni .........PASS\" >> "+LOGDIR+"/mailMessage")
    else:
      print("run_system_tests PASS ")
      os.system("echo \"`date` run_system_tests .............PASS\" >> "+LOGDIR+"/mailMessage")
  
    if(LOGTMP = "ALL"):
      if(OPT != g ):
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

  
    os.system("make check_system_tests >> "+LOGDIR+"/mailMessage")
    read pass sysTestPass fail sysTestFail < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/system_tests_results
  
    if(sysTestFail != 0 )
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")

      os.system("read failures < "+LOGDIR+"/Test_Failures")
      total=`expr $failures + $sysTestFail`
      os.system("echo "+total+" > "+LOGDIR+"/Test_Failures")
      print("New failure total is $total.")
  
    mkdir test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM

  if( do_examples == 1 ):

    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"|------------------------- EXAMPLES ---------------------------|\" >>   "+LOGDIR+"/mailMessage")
  
    print("|------------------------ EXAMPLES ------------------------------|")

    os.system("make  ESMF_BOPT="+OPT+" build_examples 1> tmp 2>&1")
    if [ "$?" != "0" ]
      echo "examples build FAIL "
      os.system("echo \"`date` build_examples build *****FAIL\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the examples failure\">> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
  
      if( OPT != g ):
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")
  
    else:
      print("build_examples PASS ")
      os.system("echo \"`date` build_examples ...........PASS\" >> "+LOGDIR+"/mailMessage")
  
      if( LOGTMP = "ALL" ):
        if( OPT != g ):
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else:
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

    $homedir/exec_test "examples" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR
  
    if( SYS_TEST_TYPE = "UNI" ):
      print("run_examples_uni PASS ")
      os.system("echo \"`date` run_examples_uni .............PASS\" >> "+LOGDIR+"/mailMessage")
    else:
      print("run_examples PASS ")
      os.system("echo \"`date` run_examples .................PASS\" >> "+LOGDIR+"/mailMessage")
  
    if( LOGTMP = "ALL" ):
      if( OPT != g ):
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
      else:
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
    
    os.system("make check_examples >> "+LOGDIR+"/mailMessage")
    read pass ex_passed fail ex_failed < $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/examples_results
    if( ex_failed != 0 ):
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")

      os.system("read failures < "+LOGDIR+"/Test_Failures")
      total=`expr $failures + $ex_failed`
      os.system("echo "+total+" > "+LOGDIR+"/Test_Failures")
      print("New failure total is "+total+".")
  
    mkdir examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xml   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xsd   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM

  if( do_unit == 1 ):
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
  
  
    if( U_TESTS = "NON" ):
      os.system("echo \"|-------------------NON_EXHAUSTIVE UNIT TESTS -----------------|\"   >> "+LOGDIR+"/mailMessage")
    else:
      os.system("echo \"|-------------------- EXHAUSTIVE UNIT TESTS -------------------|\"   >> "+LOGDIR+"/mailMessage")
    
    print("|------------------------ UNIT TESTS ----------------------------|")

    os.system("make  build_unit_tests 1> tmp 2>&1")
    
    if [ "$?" != "0" ]:
      print("build_unit_tests FAIL ")
      os.system("echo \"`date` build_unit_tests *********FAIL\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the build_unit_tests failure\">>   "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      if( OPT != g ):
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")
      unit_tests_build=1
  
    else:
      print("build_unit_tests PASS ")
      os.system("echo \"`date` build_unit_tests .........PASS\" >> "+LOGDIR+"/mailMessage")
  
      if( LOGTMP = "ALL" ):
        if(OPT != g ):
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else:
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

    $homedir/exec_test "unit" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR
  
    if( U_TESTS_TYPE = "UNI" ):
      echo "run_unit_tests_uni PASS "
      os.system("echo \"`date` run_unit_tests_uni ...........PASS\" >> "+LOGDIR+"/mailMessage")
    else:
      echo "run_test PASS "
      os.system("echo \"`date` run_unit_tests ...............PASS\" >> "+LOGDIR+"/mailMessage")
    if( LOGTMP = "ALL" ):
      if( OPT != g ):
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
      else:
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
  
  
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    
    os.system("make check_unit_tests >> "+LOGDIR+"/mailMessage")
    read pass test_pass fail test_fail < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/unit_tests_results 
    if( test_fail != 0 ):
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to yellow.")
      os.system("read failures < "+LOGDIR+"/Test_Failures")
      total=`expr $failures + $test_fail`
      os.system("echo "+total+" > "+LOGDIR+"/Test_Failures")
      print("New failure total is "+total+".")
    
    mkdir test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xml   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xsd   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/test_harness*   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM


if( do_apps == 1 ):
  os.system("read PASS apps_pass FAIL apps_fail < "+LOGDIR+"/apps_results")
else:
  apps_pass=0
  apps_fail=0

name=`uname -n | sed 's/\..*//'`


if( test_results != 0 ):
  echo "**FAIL** $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI\" >> $LOGDIR/summary
else:
  if( install_results != 0 or quickstart_results != 0 ):
    echo "PASS FAIL $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $test_pass/$test_fail $ex_passed/$ex_failed $sysTestPass/$sysTestFail $apps_pass/$apps_fail" >> $LOGDIR/summary
  else:
    echo "PASS PASS $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $test_pass/$test_fail $ex_passed/$ex_failed $sysTestPass/$sysTestFail $apps_pass/$apps_fail" >> $LOGDIR/summary

if( test_results == 0 and unit_tests_build == 0  and BENCHMARKRUN  == "ON" ):
  if( BENCHMARKINSTALL == "ON" ):
    os.system("make ESMF_BOPT="+OPT+" install_unit_tests_benchmark 1> tmp 2>&1")
    if [ "$?" != "0" ]:
      print("install_unit_tests_benchmark  FAIL ")
      os.system("echo \"`date` install_unit_tests_benchmark *FAIL\" >> "+LOGDIR+"/mailMessage")
      if [ $OPT != g ]:
        cat tmp > $LOGDIR/benchmark_install`date +%d``uname -n`install_unit_tests_benchmark$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else:
        cat tmp > $LOGDIR/benchmark_install`date +%d``uname -n`install_unit_tests_benchmark$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"The following is the 'tail' of the install_unit_tests_benchmark failure\">> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")
      os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
      if !(grep "red" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:yellow\" > "+LOGDIR+"/Test_Status")
            	"Set Test Status to yellow."
    else:
      print("install_unit_tests_benchmark  PASS ")
      os.system("echo \"`date` install_unit_tests_benchmark .PASS\" >> "+LOGDIR+"/mailMessage")

  os.system("make ESMF_BOPT="+OPT+" run_unit_tests_benchmark 1> tmp 2>&1")
  if [ "$?" != "0" ]:
    print("run_unit_tests_benchmark  FAIL ")
    os.system("echo \"`date` run_unit_tests_benchmark *****FAIL\" >> "+LOGDIR+"/mailMessage")
    if [ $OPT != g ]:
      cat tmp > $LOGDIR/benchmark_run`date +%d``uname -n`run_examples_uni$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else:
      cat tmp > $LOGDIR/benchmark_run`date +%d``uname -n`run_examples_uni$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM

    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"The following is the 'tail' of the run_unit_tests_benchmark failure\">> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("tail  -50 tmp >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")

    if (grep "green" $LOGDIR/Test_Status):
      os.system("echo \"Test_results:lime\" > "+LOGDIR+"/Test_Status")
      print("Set Test Status to lime.")
  else:
    print("run_unit_tests_benchmark  PASS ")
    os.system("echo \"`date` run_unit_tests_benchmark .....PASS\" >> "+LOGDIR+"/mailMessage")
    os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
    os.system("cat tmp >> "+LOGDIR+"/mailMessage")
    read pass bm_pass_total fail bm_test_failures match match < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/unit_tests_bm_results
    echo "bm_pass_total = $bm_pass_total bm_test_failures = $ bm_test_failures"
    if( bm_test_failures != 0 ):
      if (grep "green" $LOGDIR/Test_Status):
        os.system("echo \"Test_results:lime\" > "+LOGDIR+"/Test_Status")
        print("Set Test Status to lime.")

      os.system("read failures < "+LOGDIR+"/Test_Failures")
      total=`expr $failures + $bm_test_failures`
      os.system("echo "+total+" > "+LOGDIR+"/Test_Failures")
      print("New failure total is "+total+".")

    if( install_results != 0 or quickstart_results != 0 ):
      echo "PASS FAIL $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $bm_pass_total/$bm_test_failures Benchmark test results" >> $LOGDIR/summary
    else:
      echo "PASS PASS $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $bm_pass_total/$bm_test_failures Benchmark test results" >> $LOGDIR/summary

os.system("echo \"\" >> "+LOGDIR+"/mailMessage")
print("test_esmf has finished")

