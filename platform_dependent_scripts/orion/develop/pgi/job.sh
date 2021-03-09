#!/bin/bash

#SBATCH --partition=orion
#SBATCH --job-name=himanshu_pgi
#SBATCH --output=pgi.out
#SBATCH --error=pgi.err
#SBATCH --account=nems
#SBATCH --time=08:00:00
#SBATCH -N 1
#SBATCH -n 12

cd /home/hpillai/esmf_test/pgi

rm -rf LOGDIR
mkdir LOGDIR

module purge
module load pgi/2019
module load hdf5/1.10.6
module load netcdf/4.7.4
module unload openmpi/4.0.2
module list

export ver=$(pgcc -dumpversion)
export ver1=$(pgcc -v)
echo "version of pgi ${ver}  checking ${ver1} "
export ROOTDIR=`pwd`

cd $ROOTDIR/esmf
unset $(compgen -v ESMF_)

export ESMF_DIR=`pwd`
export ESMF_NETCDF=nc-config
export ESMF_COMPILER=pgi
export ESMF_COMM=mpiuni
export ESMF_MPIRUN=/home/hpillai/esmf_test/pgi/esmf/src/Infrastructure/stubs/mpiuni/mpirun
export ESMF_TESTEXHAUSTIVE=ON
export ESMF_ABI=64
export ESMF_OS=`uname -s`
export ESMF_SITE=default
export ESMF_TESTWITHTHREADS=ON

export LOGDIR=$ROOTDIR/LOGDIR

export ESMF_BOPT=g


# This test_esmf script will build, install, and test esmf on a local platform.


echo "---------------------- test_esmf -----------------------"

# verify following are set by user:
: "${ESMF_DIR?Need to set ESMF_DIR}"
#: "${homedir?Need to set homedir}"
: "${LOGDIR?Need to set LOGDIR}"

: "${ESMF_COMPILER?Need to set ESMF_COMPILER}"
: "${ESMF_COMM?Need to set ESMF_COMM}"
: "${ESMF_MPIRUN?Need to set ESMF_MPIRUN}"
: "${ESMF_BOPT?Need to set ESMF_BOPT}"
: "${ESMF_OS?Need to set ESMF_OS}"
: "${ESMF_ABI?Need to set ESMF_ABI}"
: "${ESMF_SITE?Need to set ESMF_SITE}"
: "${ESMF_TESTEXHAUSTIVE?Need to set ESMF_TESTEXHAUSTIVE}"
: "${ESMF_TESTWITHTHREADS?Need to set ESMF_TESTWITHTHREADS}"

#env

if [[ ! -d ${ESMF_DIR} ]]; then
  echo "ESMF_DIR ${ESMF_DIR} does not exist, fix it, abort"
  exit 1
fi

#if [[ ! -d ${homedir} ]]; then
#  echo "homedir ${homedir} of the test script dir does not exist, fix it, abort"
#  exit 1
#fi

if [[ ! -d ${LOGDIR} ]]; then
  echo "LOGDIR ${LOGDIR} does not exist, fix it, abort"
  exit 1
fi

# The following toggles allow turning on/off portions of this script
# The benchmarking portion has not yet been tested.
build=1
do_apps=1
do_sys=1
do_examples=1
do_unit=1


# The following parameters, along with ESMF_OS, ESMF_ABI, ESMF_SITE, 
# ESMF_TESTEXHAUSTIVE and ESMF_TESTWITHTHREADS could be handled with a more
# clever (and possibly less portable) method.

# SYS_TEST_TYPE = UNI/other
# U_TEST_TYPE : UNI/other
# U_TESTS : EX/other
# THREADED : THREADED/other

SYS_TEST_TYPE="mpi"
U_TEST_TYPE="mpi"
if [ $ESMF_COMM = "mpiuni" ]; then
  SYS_TEST_TYPE="UNI"
  U_TEST_TYPE="UNI"
fi

U_TESTS="nonexhaustive"
if [ $ESMF_TESTEXHAUSTIVE = "ON" ]; then
  U_TESTS="EX"
fi

THREADED="nonthreaded"
if [ $ESMF_TESTWITHTHREADS = "ON" ]; then
  THREADED="THREADED"
fi


export APPSDIR=$ESMF_DIR/apps/apps$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/
OPT=$ESMF_BOPT

echo "ESMF_DIR = $ESMF_DIR"
echo "ESMF_COMPILER = $ESMF_COMPILER" 
echo "ESMF_COMM = $ESMF_COMM" 
echo "ESMF_BOPT = $ESMF_BOPT" 
echo "ESMF_TESTEXHAUSTIVE = $ESMF_TESTEXHAUSTIVE" 
echo "ESMF_TESTWITHTHREADS = $ESMF_TESTWITHTHREADS" 

echo "SYS_TEST_TYPE = $SYS_TEST_TYPE" 
echo "U_TEST_TYPE = $U_TEST_TYPE" 
echo "U_TESTS = $U_TESTS" 
echo "THREADED = $THREADED" 

#echo "homedir = $homedir" 
echo "APPSDIR = $APPSDIR" 
echo "LOGDIR = $LOGDIR" 



cd $ESMF_DIR



gmake -j32 info

#Clobber previous arch files
if [ "$build" == "1" ]; then
  gmake -j32 clobber  1> tmp 2>&1
fi

echo "" >> $LOGDIR/mailMessage
echo "_____________________________________________________________________________________________________" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage
# cat $ESMF_DIR/../module_list  >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage
test_results=0  #assume build passes
install_results=0  #assume install passes
unit_tests_build=0 #assume unit tests build
ex_passed=0
ex_failed=0

echo "`date` on `uname -n` " >> $LOGDIR/mailMessage
# Get ESMF checkout source

#read chkout_src <  ~/bin/esmf_chkout_src
#if read fails, use default:
if [ "$?" != "0" ]
then
  export chkout_src="https://github.com/esmf-org/esmf.git"
fi
echo "" >> $LOGDIR/mailMessage
echo "ESMF Checkout Source: $chkout_src" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage

echo "Compiler and configuration information:" >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage
echo "-------------------------------------------------------------- " >> $LOGDIR/mailMessage

module list  1> tmp 2>&1
cat tmp >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage
git remote -v 1> tmp 2>&1
if (grep -i "Not a git repository" tmp)
then
  #Checkout failed
  echo "Test_results:blue" > $LOGDIR/Test_Status
fi

echo "Repository:" >> $LOGDIR/mailMessage
cat tmp >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage
git describe --tags 1> tmp 2>&1
cat tmp >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage

echo " " >> $LOGDIR/mailMessage
gmake  -j32 ESMF_BOPT=$OPT info 1> tmp 2>&1
cat tmp >> $LOGDIR/mailMessage


if [ "$build" == "1" ]; then
  echo "|------------------------ ESMF BUILD ----------------------------|"
  gmake -j32 ESMF_BOPT=$OPT  1> tmp 2>&1
  cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
fi

if [ "$?" != "0" ]
then
  echo "Library build FAIL with ESMF_BOPT=$OPT"

  if [ $OPT != g ]
  then
    cat tmp > $LOGDIR/build_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  else
    cat tmp > $LOGDIR/build_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  fi #end of if [ $OPT != g ]

  echo "`date` library build -j4 ***********FAIL" >> $LOGDIR/mailMessage
  test_results=1
  echo "" >> $LOGDIR/mailMessage
  echo "" >> $LOGDIR/mailMessage
  echo "The following is the 'tail' of the build failure">> $LOGDIR/mailMessage
  echo "" >> $LOGDIR/mailMessage
  tail  -50 tmp >> $LOGDIR/mailMessage

  # If checkout did not fail, set test status to red, build failed
  if !(grep "blue" $LOGDIR/Test_Status)
  then
    echo "Test_results:red" > $LOGDIR/Test_Status
    echo "Set Test Status to red."
  fi
  
else

  echo "Library build PASS with ESMF_BOPT=$OPT"
  echo "`date` library build -j4 ...........PASS" >> $LOGDIR/mailMessage

  # Check for warnings
  numwarnings='grep -ic "warning[ ]*:" tmp'
  if [ numwarnings != 0 ]
  then
    echo "Builds with warnings." >> $LOGDIR/mailMessage
  fi # warnings


  # check if all files should be logged
  if [[ $LOGTMP = "ALL" ]]
  then
    if [ $OPT != g ]
    then 
      cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else    
      cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    fi #end of if [ $OPT != g ]
  fi # end of if [[ $LOGTMP = "ALL" ]]
  
  #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/build_$OPT_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  echo "|------------------------ INSTALL -------------------------------|"

  gmake -j32 ESMF_BOPT=$OPT  install 1> tmp 2>&1
  cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/install_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  if [ "$?" != "0" ]
  then
    echo "Library install FAILED with ESMF_BOPT=$OPT"
    install_results=1  # install failed

    if [ $OPT != g ]
    then
      cat tmp > $LOGDIR/install_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else
      cat tmp > $LOGDIR/install_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    fi #end of if [ $OPT != g ]

    echo "`date` library install **********FAIL" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "The following is the 'tail' of the install failure">> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    tail  -50 tmp >> $LOGDIR/mailMessage

    # Set test status as yellow, if it is not red
    if !(grep "red" $LOGDIR/Test_Status)
    then
      echo "Test_results:yellow" > $LOGDIR/Test_Status
      echo "Set Test Status to yellow."
    fi

  else

    echo "Library install PASSED with ESMF_BOPT=$OPT"
    echo "`date` library install ..........PASS" >> $LOGDIR/mailMessage

    echo "|------------------------ INSTALLCHECK --------------------------|"

    gmake -j32 ESMF_BOPT=$OPT  installcheck 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/installcheck_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "Library install check FAILED with ESMF_BOPT=$OPT"
      install_results=1  # install failed

      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/installcheck_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/installcheck_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]

      echo "`date` library installcheck *****FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the install failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi

    else

      echo "Library installcheck PASSED with ESMF_BOPT=$OPT"
      echo "`date` library installcheck .....PASS" >> $LOGDIR/mailMessage
    fi

    if [ "$build" == "1" ]; then
      echo "|------------------------ QUICKSTART ----------------------------|"
      gmake -j32 ESMF_BOPT=$OPT  build_quick_start 1> tmp 2>&1
      cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/quickstartbuild_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    fi
    
    if [ "$?" != "0" ]
    then
      echo "Quick start build check FAILED with ESMF_BOPT=$OPT"
      quickstart_results=1  # install failed

      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/quickstart_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/quickstart_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]

      echo "`date` quickstart build *********FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the quickstart build  failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage

      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi

    else
      echo "Quickstart build passed with ESMF_BOPT=$OPT"
      echo "`date` quickstart build .........PASS" >> $LOGDIR/mailMessage
      quickstart_results=0  # quick_start passed
    fi
  fi
  
  if [ $do_apps == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "|------------------------ APPs TESTS -------------------------|" >> $LOGDIR/mailMessage

    echo "|------------------------ APPS -------------------------------|"

    gmake -j32 ESMF_BOPT=$OPT  build_apps 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_apps_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "build apps FAILED with ESMF_BOPT=$OPT"
      install_results=1  # build apps failed

      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/buils_apps_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/buils_apps_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]
      echo "`date` apps build ***************FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the build_apps failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage

      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      export apps_pass=0
      export apps_fail=0
      # Save results for summary
      echo "PASS $apps_pass FAIL $apps_fail" > $LOGDIR/apps_results

    else

      echo "build apps PASSED with ESMF_BOPT=$OPT"
      echo "`date` apps build ...............PASS" >> $LOGDIR/mailMessage

    fi #end of build apps

    #$homedir/exec_test "apps_test" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR
    cd $APPSDIR

	RUN=$ESMF_MPIRUN

echo "RUN: [$RUN]"




		apps_pass=0
		apps_fail=0


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
			then
                        	$RUN -n 4 ./ESMF_Regrid --help 1> ESMF_Regrid.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Regrid --help 1> ESMF_Regrid.stdout  2>&1
			fi
                else
                        ./ESMF_Regrid --help 1> ESMF_Regrid.stdout  2>&1
                fi
		if [ "$?" != "0" ]
        	then
			echo "ESMF_Regrid FAILED with ESMF_BOPT=$OPT"
                	echo "`date` ESMF_Regrid --help ***********FAIL" >> $LOGDIR/mailMessage

                	# Set test status as yellow, if it is not red
                	if !(grep "red" $LOGDIR/Test_Status)
                	then
                        	echo "Test_results:yellow" > $LOGDIR/Test_Status
                        	echo "Set Test Status to yellow."
                	fi
                	# Update number of test failures
			apps_fail=`expr $apps_fail + 1`
                	read failures < $LOGDIR/Test_Failures
                	total=`expr $failures + 1`
                	echo "$total" > $LOGDIR/Test_Failures
                	echo "New failure total is $total."


                else

                	echo "ESMF_Regrid PASSED with ESMF_BOPT=$OPT"
                	echo "`date` ESMF_Regrid --help ...........PASS" >> $LOGDIR/mailMessage
			apps_pass=`expr $apps_pass + 1`
		fi

		echo "The following is the output of ESMF_Regrid --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Regrid.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Regrid --version 1> ESMF_Regrid.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Regrid --version 1> ESMF_Regrid.stdout  2>&1
			fi
                else
                        ./ESMF_Regrid --version 1> ESMF_Regrid.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Regrid FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid --version ********FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Regrid PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid --version ........PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Regrid --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Regrid.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Regrid -V 1> ESMF_Regrid.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Regrid -V 1> ESMF_Regrid.stdout  2>&1
			fi
                else
                        ./ESMF_Regrid -V 1> ESMF_Regrid.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Regrid FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid -V ***************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Regrid PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid -V ...............PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Regrid -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Regrid.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Info --help  1> ESMF_Info.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Info --help  1> ESMF_Info.stdout  2>&1
			fi
                else
                        ./ESMF_Info --help  1> ESMF_Info.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Info FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --help *************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Info PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --help .............PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Info --help ">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_Info.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Info --version  1> ESMF_Info.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Info --version  1> ESMF_Info.stdout  2>&1
			fi
                else
                        ./ESMF_Info --version  1> ESMF_Info.stdout  2>&1
                fi

                if [ "$?" != "0" ]
                then
                        echo "ESMF_Info FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --version **********FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Info PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --version ..........PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Info --version ">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_Info.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Info -V  1> ESMF_Info.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Info -V  1> ESMF_Info.stdout  2>&1
			fi
                else
                        ./ESMF_Info -V  1> ESMF_Info.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Info FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info -V *****************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Info PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info -V .................PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Info -V ">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_Info.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_InfoC --help  1> ESMF_InfoC.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_InfoC --help  1> ESMF_InfoC.stdout  2>&1
			fi
                else
                        ./ESMF_InfoC --help  1> ESMF_InfoC.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_InfoC FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --help ************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_InfoC PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --help ............PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_InfoC --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_InfoC.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_InfoC --version  1> ESMF_InfoC.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_InfoC --version  1> ESMF_InfoC.stdout  2>&1
			fi
                else
                        ./ESMF_InfoC --version  1> ESMF_InfoC.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_InfoC FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --version *********FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_InfoC PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --version .........PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_InfoC --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_InfoC.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_InfoC -V  1> ESMF_InfoC.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_InfoC -V  1> ESMF_InfoC.stdout  2>&1
			fi
                else
                        ./ESMF_InfoC -V  1> ESMF_InfoC.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then 
                        echo "ESMF_InfoC FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC -V ****************FAIL" >> $LOGDIR/mailMessage
                        
                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then 
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures 
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_InfoC PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC -V ................PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_InfoC -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_InfoC.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_RegridWeightGen --help  1> ESMF_RegridWeightGen.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_RegridWeightGen --help  1> ESMF_RegridWeightGen.stdout  2>&1
			fi
                else
                        ./ESMF_RegridWeightGen --help  1> ESMF_RegridWeightGen.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_RegridWeightGen FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --help **FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_RegridWeightGen PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --help ..PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                        echo "The following is the output of ESMF_RegridWeightGen --help">> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        cat ESMF_RegridWeightGen.stdout >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_RegridWeightGen --version  1> ESMF_RegridWeightGen.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_RegridWeightGen --version  1> ESMF_RegridWeightGen.stdout  2>&1
			fi
                else
                        ./ESMF_RegridWeightGen --version  1> ESMF_RegridWeightGen.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_RegridWeightGen FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --version FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_RegridWeightGen PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --version PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                        echo "The following is the output of ESMF_RegridWeightGen --version">> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        cat ESMF_RegridWeightGen.stdout >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage




	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_RegridWeightGen -V  1> ESMF_RegridWeightGen.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_RegridWeightGen -V  1> ESMF_RegridWeightGen.stdout  2>&1
			fi
                else
                        ./ESMF_RegridWeightGen -V  1> ESMF_RegridWeightGen.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_RegridWeightGen FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen -V ******FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_RegridWeightGen PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen -V ......PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                        echo "The following is the output of ESMF_RegridWeightGen -V">> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        cat ESMF_RegridWeightGen.stdout >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage




	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Scrip2Unstruct --help  1> ESMF_Scrip2Unstruct.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Scrip2Unstruct --help  1> ESMF_Scrip2Unstruct.stdout  2>&1
			fi
                else
                        ./ESMF_Scrip2Unstruct --help  1> ESMF_Scrip2Unstruct.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Scrip2Unstruct FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --help ***FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Scrip2Unstruct PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --help ...PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Scrip2Unstruct --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Scrip2Unstruct.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage




	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Scrip2Unstruct --version  1> ESMF_Scrip2Unstruct.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Scrip2Unstruct --version  1> ESMF_Scrip2Unstruct.stdout  2>&1
			fi
                else
                        ./ESMF_Scrip2Unstruct --version  1> ESMF_Scrip2Unstruct.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Scrip2Unstruct FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --version FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Scrip2Unstruct PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --version PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Scrip2Unstruct --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Scrip2Unstruct.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                        


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Scrip2Unstruct -V  1> ESMF_Scrip2Unstruct.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Scrip2Unstruct -V  1> ESMF_Scrip2Unstruct.stdout  2>&1
			fi
                else
                        ./ESMF_Scrip2Unstruct -V  1> ESMF_Scrip2Unstruct.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Scrip2Unstruct FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct -V *******FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Scrip2Unstruct PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct -V .......PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi      

                echo "The following is the output of ESMF_Scrip2Unstruct -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Scrip2Unstruct.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

		if [ $RUN == aprun ] && [ $ESMF_COMPILER == intel ]
                then
                	$RUN -n 1 ./ESMF_WebServController --help  1> ESMF_WebServController.stdout  2>&1
		else
                	./ESMF_WebServController --help  1> ESMF_WebServController.stdout  2>&1
		fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_WebServController FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --help FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_WebServController PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --help PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_WebServController --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_WebServController.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

		if [ $RUN == aprun ] && [ $ESMF_COMPILER == intel ]
                then
                	$RUN -n 1 ./ESMF_WebServController --version  1> ESMF_WebServController.stdout  2>&1
		else
                	./ESMF_WebServController --version  1> ESMF_WebServController.stdout  2>&1
		fi
                if [ "$?" != "0" ]
                then 
                        echo "ESMF_WebServController FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --version FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_WebServController PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --version PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_WebServController --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_WebServController.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

		if [ $RUN == aprun ] && [ $ESMF_COMPILER == intel ]
                then
                	$RUN -n 1 ./ESMF_WebServController -V  1> ESMF_WebServController.stdout  2>&1
		else
                	./ESMF_WebServController -V  1> ESMF_WebServController.stdout  2>&1
		fi
                if [ "$?" != "0" ]
                then 
                        echo "ESMF_WebServController FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController -V ****FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_WebServController PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController -V ....PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_WebServController -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_WebServController.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

		tar --atime-preserve='replace' -cf app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar *.stdout
        	gzip app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
        	mv -f app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.


		# Save results for summary
		echo "PASS $apps_pass FAIL $apps_fail" > $LOGDIR/apps_results


		cd $ESMF_DIR

    #check if queue was available
    #     if !(grep "passed" $LOGDIR/queue_results)
    #     then
    #             # Set test status as yellow, if it is not red
    #             if !(grep "red" $LOGDIR/Test_Status)
    #             then
    #                     echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                     echo "Set Test Status to yellow."
    #             fi
    #             echo "Queue not available "
    #             echo "`date` Queue not available **********FAIL" >> $LOGDIR/mailMessage
    #             export apps_pass=0
    #             export apps_fail=0
		# # Save results for summary
    #             echo "PASS $apps_pass FAIL $apps_fail" > $LOGDIR/apps_results
    #     else


    cd $APPSDIR

    tar --atime-preserve='replace' -cf app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar *.stdout
    gzip app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.

    read PASS apps_pass FAIL apps_fail < $LOGDIR/apps_results

    apps_total=`expr $apps_fail + $apps_pass`
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "Ran $apps_total applications tests, $apps_pass passed and $apps_fail failed." >> $LOGDIR/mailMessage

  # fi
  fi #run_apps
  
  cd $ESMF_DIR

  if [ $do_sys == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "|----------------------- SYSTEM TESTS -------------------------|" >>   $LOGDIR/mailMessage
  
    echo "|------------------------ SYSTEM TESTS --------------------------|"
    
    gmake -j32 ESMF_BOPT=$OPT build_system_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "system_tests build FAIL "
      echo "`date` build_system_tests *******FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the system tests failure">> $LOGDIR/  mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
  
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
  
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
    
    else
      echo "build_system_tests PASS "
      echo "`date` build_system_tests .......PASS" >> $LOGDIR/mailMessage
  
      if [[ $LOGTMP = "ALL" ]]
      then
        if [ $OPT != g ]
        then
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        fi #end of if [ $OPT != g ]
      fi # end of if [[ $LOGTMP = "ALL" ]]
  
    fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT   build_system_tests 1> tmp 2>&1
  
    # Run the system tests 
    #$homedir/exec_test "sys_test" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR

	if [[ $SYS_TEST_TYPE == "UNI" ]]; then
    make run_system_tests_uni 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_system_tests_uni_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  else
    make run_system_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  fi

    # #check if queue was available
    # if !(grep "passed" $LOGDIR/queue_results)
    # then
    #         # Set test status as yellow, if it is not red
    #         if !(grep "red" $LOGDIR/Test_Status)
    #         then
    #                 echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                 echo "Set Test Status to yellow."
    #         fi
    #         echo "Queue not available "
    #         echo "`date` Queue not available **********FAIL" >> $LOGDIR/  mailMessage
    #         export sysTestPass=0
    #         export sysTestFail=0
    # 
    # else
  
  
    if [[ $SYS_TEST_TYPE = "UNI" ]]
    then
      echo "run_system_tests_uni PASS "
      echo "`date` run_system_tests_uni .........PASS" >> $LOGDIR/mailMessage
    else
      echo "run_system_tests PASS "
      echo "`date` run_system_tests .............PASS" >> $LOGDIR/mailMessage
    fi #end of if [[ $SYS_TEST_TYPE = "UNI" ]]
  
    if [[ $LOGTMP = "ALL" ]]
    then
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]
    fi # end of if [[ $LOGTMP = "ALL" ]]
  
    make check_system_tests >> $LOGDIR/mailMessage
    read pass sysTestPass fail sysTestFail < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/system_tests_results
  
    if [[ $sysTestFail != 0 ]]
    then
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $sysTestFail`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
  
    #make tarballs of test directories
    mkdir test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    # fi # queue results
  fi

  if [ $do_examples == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "|------------------------- EXAMPLES ---------------------------|" >>   $LOGDIR/mailMessage
  
    echo "|------------------------ EXAMPLES ------------------------------|"

    gmake  -j32 ESMF_BOPT=$OPT build_examples 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "examples build FAIL "
      echo "`date` build_examples build *****FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the examples failure">> $LOGDIR/  mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
  
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
  
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
  
    else
      echo "build_examples PASS "
      echo "`date` build_examples ...........PASS" >> $LOGDIR/mailMessage
  
      if [[ $LOGTMP = "ALL" ]]
      then
        if [ $OPT != g ]
        then
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        fi #end of if [ $OPT != g ]
      fi # end of if [[ $LOGTMP = "ALL" ]]
  
    fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT build_examples 1>   tmp 2>&1
  
    # Run the examples on sn702
    #$homedir/exec_test "examples" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR

	if [[ $SYS_TEST_TYPE == "UNI" ]]; then
    make run_examples_uni 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_examples_uni_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  else
    make run_examples 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  fi

    #check if queue was available
    # if !(grep "passed" $LOGDIR/queue_results)
    # then
    #         # Set test status as yellow, if it is not red
    #         if !(grep "red" $LOGDIR/Test_Status)
    #         then
    #                 echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                 echo "Set Test Status to yellow."
    #         fi
    #         echo "Queue not available "
    #         echo "`date` Queue not available **********FAIL" >> $LOGDIR/  mailMessage
    #         export ex_passed=0
    #         export ex_failed=0
    # else
  
    if [[ $SYS_TEST_TYPE = "UNI" ]]
    then
      echo "run_examples_uni PASS "
      echo "`date` run_examples_uni .............PASS" >> $LOGDIR/mailMessage
    else
      echo "run_examples PASS "
      echo "`date` run_examples .................PASS" >> $LOGDIR/mailMessage
    fi #end of if [[ $SYS_TEST_TYPE = "UNI" ]]
  
    if [[ $LOGTMP = "ALL" ]]
    then
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
      fi #end of if [ $OPT != g ]
    fi # end of if [[ $LOGTMP = "ALL" ]]
  
    
    gmake -j32 check_examples >> $LOGDIR/mailMessage
    read pass ex_passed fail ex_failed < $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/examples_results
    if [[ $ex_failed != 0 ]]
    then
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $ex_failed`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
  
  
  
    # Make tarball of the examples Log and stdout files
    mkdir examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xml   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xsd   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
  
    # fi queue results
  fi 

  if [ $do_unit == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
  
  
    if [[ $U_TESTS = "NON" ]]
    then
      echo "|-------------------NON_EXHAUSTIVE UNIT TESTS -----------------|"   >> $LOGDIR/mailMessage
    else
      echo "|-------------------- EXHAUSTIVE UNIT TESTS -------------------|"   >> $LOGDIR/mailMessage
    fi # end of if [[ $U_TESTS = "NON" ]]
    
    echo "|------------------------ UNIT TESTS ----------------------------|"

    gmake  -j32 build_unit_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    
    if [ "$?" != "0" ]
    then
      echo "build_unit_tests FAIL "
      echo "`date` build_unit_tests *********FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the build_unit_tests failure">>   $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
  
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      unit_tests_build=1 #unit tests failed to build
  
    else
      echo "build_unit_tests PASS "
      echo "`date` build_unit_tests .........PASS" >> $LOGDIR/mailMessage
  
      if [[ $LOGTMP = "ALL" ]]
      then
        if [ $OPT != g ]
        then
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        fi #end of if [ $OPT != g ]
      fi # end of if [[ $LOGTMP = "ALL" ]]
  
    fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT  build_unit_tests   1> tmp 2>&1
  
  
    # Run the unit tests on sn702
    #$homedir/exec_test "unit" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR 

	if [[ $U_TEST_TYPE == "UNI" ]]; then
    make run_unit_tests_uni 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_unit_tests_uni_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  else
    make run_unit_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  fi

    #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    # if !(grep "passed" $LOGDIR/queue_results)
    # then
    #         # Set test status as yellow, if it is not red
    #         if !(grep "red" $LOGDIR/Test_Status)
    #         then
    #                 echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                 echo "Set Test Status to yellow."
    #         fi
    #         echo "Queue not available "
    #         echo "`date` Queue not available **********FAIL" >> $LOGDIR/  mailMessage
    #         export test_pass=0
    #         export test_fail=0
    # else
    #
  
    if [[ $U_TESTS_TYPE = "UNI" ]]
    then
      echo "run_unit_tests_uni PASS "
      echo "`date` run_unit_tests_uni ...........PASS" >> $LOGDIR/mailMessage
    else
      echo "run_test PASS "
      echo "`date` run_unit_tests ...............PASS" >> $LOGDIR/mailMessage
    fi # end of if [[ $U_TESTS_TYPE = "UNI" ]]
    if [[ $LOGTMP = "ALL" ]]
    then
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
	#cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out 
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
        #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
      fi #end of if [ $OPT != g ]
    fi # end of if [[ $LOGTMP = "ALL" ]]
  
  
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    
    gmake -j32 check_unit_tests >> $LOGDIR/mailMessage
    read pass test_pass fail test_fail < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/unit_tests_results 
    if [[ $test_fail != 0 ]]
    then
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $test_fail`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
    
    #make tarballs of test directories
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
  

    # fi queue results
  fi
fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT  1> tmp 2>&1


if [ $do_apps == 1 ]; then
  #Get apps tests results
  read PASS apps_pass FAIL apps_fail < $LOGDIR/apps_results
else
  apps_pass=0
  apps_fail=0
fi

# Make name as short as possible
name=`uname -n | sed 's/\..*//'`


if [[ $test_results != 0 ]] 
then  #The build failed
  echo "**FAIL** $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI" >> $LOGDIR/summary
else
  if [[ $install_results != 0 || $quickstart_results != 0 ]]
  then  #The install failed
    echo "PASS FAIL $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $test_pass/$test_fail $ex_passed/$ex_failed $sysTestPass/$sysTestFail $apps_pass/$apps_fail" >> $LOGDIR/summary
  else
    echo "PASS PASS $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $test_pass/$test_fail $ex_passed/$ex_failed $sysTestPass/$sysTestFail $apps_pass/$apps_fail" >> $LOGDIR/summary
  fi
fi #end of if [$test_results != 0]



# Check if benchmarking should be run.
if [[ $test_results == 0 && $unit_tests_build == 0  && $BENCHMARKRUN  == "ON" ]]
then  #If the library build or the unit tests build failed,  don't run benchmarking
  if [[ $BENCHMARKINSTALL == "ON" ]]
  then
    gmake -j32 ESMF_BOPT=$OPT install_unit_tests_benchmark 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/install_unit_tests_benchmark_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "install_unit_tests_benchmark  FAIL "
      echo "`date` install_unit_tests_benchmark *FAIL" >> $LOGDIR/mailMessage
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/benchmark_install`date +%d``uname -n`install_unit_tests_benchmark$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/benchmark_install`date +%d``uname -n`install_unit_tests_benchmark$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the install_unit_tests_benchmark failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
            	"Set Test Status to yellow."
      fi
    else
      echo "install_unit_tests_benchmark  PASS "
      echo "`date` install_unit_tests_benchmark .PASS" >> $LOGDIR/mailMessage
    fi
  fi
  
  gmake -j32 ESMF_BOPT=$OPT run_unit_tests_benchmark 1> tmp 2>&1
  cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_unit_tests_benchmark_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  if [ "$?" != "0" ]
  then
    echo "run_unit_tests_benchmark  FAIL "
    echo "`date` run_unit_tests_benchmark *****FAIL" >> $LOGDIR/mailMessage
    if [ $OPT != g ]
    then
      cat tmp > $LOGDIR/benchmark_run`date +%d``uname -n`run_examples_uni$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else
      cat tmp > $LOGDIR/benchmark_run`date +%d``uname -n`run_examples_uni$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    fi # end of if [ $OPT != g ]
    #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/build_$OPT_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
	
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "The following is the 'tail' of the run_unit_tests_benchmark failure">> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    tail  -50 tmp >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    # Set test status as lime, if it is green
    if (grep "green" $LOGDIR/Test_Status)
    then
      echo "Test_results:lime" > $LOGDIR/Test_Status
      echo "Set Test Status to lime."
    fi
  else
    echo "run_unit_tests_benchmark  PASS "
    echo "`date` run_unit_tests_benchmark .....PASS" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    cat tmp >> $LOGDIR/mailMessage
    read pass bm_pass_total fail bm_test_failures match match < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/unit_tests_bm_results
    echo "bm_pass_total = $bm_pass_total bm_test_failures = $ bm_test_failures"
    if [[ $bm_test_failures != 0 ]]
    then
      # Set test status as lime, if it is green
      if (grep "green" $LOGDIR/Test_Status)
      then
        echo "Test_results:lime" > $LOGDIR/Test_Status
        echo "Set Test Status to lime."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $bm_test_failures`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
    if [[ $install_results != 0 || $quickstart_results != 0 ]]
    then  #The install failed
      echo "PASS FAIL $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $bm_pass_total/$bm_test_failures Benchmark test results" >> $LOGDIR/summary
    else
      echo "PASS PASS $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $bm_pass_total/$bm_test_failures Benchmark test results" >> $LOGDIR/summary
    fi
  fi
fi # end of check if benchmarking should be done.



echo "" >> $LOGDIR/mailMessage


# keep expect happy
echo "test_esmf has finished"


######### Start the mail message file ################################


echo "" > $LOGDIR/mailHeader
echo "" > $LOGDIR/header
echo "Script end: `date`" >> $LOGDIR/header



echo "" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailHeader
echo "" >> $LOGDIR/mailHeader
echo "" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "______________________________________ESMF BUILD AND TEST SUMMARY___________________________" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "                                            " >> $LOGDIR/header
echo "                    INSTALL/" >> $LOGDIR/header
echo "           BUILD  QUICK_START OS.COMPILER.COMM.ABI    UNIT TESTS   EXAMPLES  SYSTEM TESTS  APPS TESTS">> $LOGDIR/header

echo "_____________________________________________________________________________________________________" >> $LOGDIR/header

echo "          PASS/FAIL PASS/FAIL                           PASS/FAIL   PASS/FAIL  PASS/FAIL   PASS/FAIL">> $LOGDIR/header

echo "_____________________________________________________________________________________________________" >> $LOGDIR/header


############################# Put the mail message together and mail it ####################

awk '{if ($1 ~/PASS/) printf ("%-12s%-10s%-8s%-25s%10s%10s%10s%10s\n",  $3, $1, $2, $4, $5, $6, $7, $8) ;else  printf ("%-10s%-20s%-10s\n", $2, $1,  $3 )}'  $LOGDIR/summary > $LOGDIR/newsummary
cat $LOGDIR/mailHeader $LOGDIR/header $LOGDIR/newsummary > $LOGDIR/sum
cat $LOGDIR/sum $LOGDIR/mailMessage > $LOGDIR/newMailMessage
echo "" >>  $LOGDIR/newMailMessage

echo " The tarballs of the tests and examples directories can be found at:" >>  $LOGDIR/newMailMessage
echo " $LOGDIR." >>  $LOGDIR/newMailMessage
echo " These tarballs contain the *Log and *stdout files only, not the executables." >>  $LOGDIR/newMailMessage
echo " This directory also contains failed build output files with the naming convention of " >>  $LOGDIR/newMailMessage
echo " build_ESMF_BOPT_(day)(platform)ESMF_OS ESMF_ABI ESMF_COMPILER ESMF_COMM." >>  $LOGDIR/newMailMessage
echo " For example, if the build fails on longs on the 19th of the month with ESMF_BOPT=g, the file " >>  $LOGDIR/newMailMessage
echo " would be called 'build_g_19longslinux32pgimpiuni'." >>  $LOGDIR/newMailMessagei

cd /home/hpillai/storage/develop
x="${ESMF_OS}_${ESMF_COMPILER}_${ESMF_COMM}"
mkdir testg_$x
mkdir examplesg_$x
mkdir libg_$x
mkdir appsg_$x
mkdir g_outputfiles

cp -rf $ESMF_DIR/test/testg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log testg_$x/
cp -rf $ESMF_DIR/test/testg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout testg_$x/
cp -rf $ESMF_DIR/test/testg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*_results testg_$x/
cp -rf $ESMF_DIR/test/testg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.config testg_$x/
cp -rf $ESMF_DIR/examples/examplesg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log examplesg_$x/
cp -rf $ESMF_DIR/examples/examplesg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*_results examplesg_$x/
cp -rf $ESMF_DIR/examples/examplesg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.config examplesg_$x/
cp -rf $ESMF_DIR/examples/examplesg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout examplesg_$x/
cp -rf $ESMF_DIR/lib/libg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/esmf.mk libg_$x/
cp -rf $ESMF_DIR/apps/appsg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log appsg_$x/
cp -rf $ESMF_DIR/apps/appsg/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout appsg_$x/

for f in *pgi*.out; do mv "$f" "${f%.out}_g.out"; done
mv *_g.out g_outputfiles/

cd $ROOTDIR

export ESMF_BOPT=O


# This test_esmf script will build, install, and test esmf on a local platform.


echo "---------------------- test_esmf -----------------------"

# verify following are set by user:
: "${ESMF_DIR?Need to set ESMF_DIR}"
#: "${homedir?Need to set homedir}"
: "${LOGDIR?Need to set LOGDIR}"

: "${ESMF_COMPILER?Need to set ESMF_COMPILER}"
: "${ESMF_COMM?Need to set ESMF_COMM}"
: "${ESMF_MPIRUN?Need to set ESMF_MPIRUN}"
: "${ESMF_BOPT?Need to set ESMF_BOPT}"
: "${ESMF_OS?Need to set ESMF_OS}"
: "${ESMF_ABI?Need to set ESMF_ABI}"
: "${ESMF_SITE?Need to set ESMF_SITE}"
: "${ESMF_TESTEXHAUSTIVE?Need to set ESMF_TESTEXHAUSTIVE}"
: "${ESMF_TESTWITHTHREADS?Need to set ESMF_TESTWITHTHREADS}"

#env

if [[ ! -d ${ESMF_DIR} ]]; then
  echo "ESMF_DIR ${ESMF_DIR} does not exist, fix it, abort"
  exit 1
fi

#if [[ ! -d ${homedir} ]]; then
#  echo "homedir ${homedir} of the test script dir does not exist, fix it, abort"
#  exit 1
#fi

if [[ ! -d ${LOGDIR} ]]; then
  echo "LOGDIR ${LOGDIR} does not exist, fix it, abort"
  exit 1
fi

# The following toggles allow turning on/off portions of this script
# The benchmarking portion has not yet been tested.
build=1
do_apps=1
do_sys=1
do_examples=1
do_unit=1


# The following parameters, along with ESMF_OS, ESMF_ABI, ESMF_SITE, 
# ESMF_TESTEXHAUSTIVE and ESMF_TESTWITHTHREADS could be handled with a more
# clever (and possibly less portable) method.

# SYS_TEST_TYPE = UNI/other
# U_TEST_TYPE : UNI/other
# U_TESTS : EX/other
# THREADED : THREADED/other

SYS_TEST_TYPE="mpi"
U_TEST_TYPE="mpi"
if [ $ESMF_COMM = "mpiuni" ]; then
  SYS_TEST_TYPE="UNI"
  U_TEST_TYPE="UNI"
fi

U_TESTS="nonexhaustive"
if [ $ESMF_TESTEXHAUSTIVE = "ON" ]; then
  U_TESTS="EX"
fi

THREADED="nonthreaded"
if [ $ESMF_TESTWITHTHREADS = "ON" ]; then
  THREADED="THREADED"
fi


export APPSDIR=$ESMF_DIR/apps/apps$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/
OPT=$ESMF_BOPT

echo "ESMF_DIR = $ESMF_DIR"
echo "ESMF_COMPILER = $ESMF_COMPILER" 
echo "ESMF_COMM = $ESMF_COMM" 
echo "ESMF_BOPT = $ESMF_BOPT" 
echo "ESMF_TESTEXHAUSTIVE = $ESMF_TESTEXHAUSTIVE" 
echo "ESMF_TESTWITHTHREADS = $ESMF_TESTWITHTHREADS" 

echo "SYS_TEST_TYPE = $SYS_TEST_TYPE" 
echo "U_TEST_TYPE = $U_TEST_TYPE" 
echo "U_TESTS = $U_TESTS" 
echo "THREADED = $THREADED" 

#echo "homedir = $homedir" 
echo "APPSDIR = $APPSDIR" 
echo "LOGDIR = $LOGDIR" 



cd $ESMF_DIR



gmake -j32 info

#Clobber previous arch files
if [ "$build" == "1" ]; then
  gmake -j32 clobber  1> tmp 2>&1
fi

echo "" >> $LOGDIR/mailMessage
echo "_____________________________________________________________________________________________________" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage
# cat $ESMF_DIR/../module_list  >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage
test_results=0  #assume build passes
install_results=0  #assume install passes
unit_tests_build=0 #assume unit tests build
ex_passed=0
ex_failed=0

echo "`date` on `uname -n` " >> $LOGDIR/mailMessage
# Get ESMF checkout source

#read chkout_src <  ~/bin/esmf_chkout_src
#if read fails, use default:
if [ "$?" != "0" ]
then
  export chkout_src="https://github.com/esmf-org/esmf.git"
fi
echo "" >> $LOGDIR/mailMessage
echo "ESMF Checkout Source: $chkout_src" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage

echo "Compiler and configuration information:" >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage
echo "-------------------------------------------------------------- " >> $LOGDIR/mailMessage

module list  1> tmp 2>&1
cat tmp >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage
git remote -v 1> tmp 2>&1
if (grep -i "Not a git repository" tmp)
then
  #Checkout failed
  echo "Test_results:blue" > $LOGDIR/Test_Status
fi

echo "Repository:" >> $LOGDIR/mailMessage
cat tmp >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage
git describe --tags 1> tmp 2>&1
cat tmp >> $LOGDIR/mailMessage
echo " " >> $LOGDIR/mailMessage

echo " " >> $LOGDIR/mailMessage
gmake  -j32 ESMF_BOPT=$OPT info 1> tmp 2>&1
cat tmp >> $LOGDIR/mailMessage


if [ "$build" == "1" ]; then
  echo "|------------------------ ESMF BUILD ----------------------------|"
  gmake -j32 ESMF_BOPT=$OPT  1> tmp 2>&1
  cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
fi

if [ "$?" != "0" ]
then
  echo "Library build FAIL with ESMF_BOPT=$OPT"

  if [ $OPT != g ]
  then
    cat tmp > $LOGDIR/build_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  else
    cat tmp > $LOGDIR/build_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
  fi #end of if [ $OPT != g ]

  echo "`date` library build -j4 ***********FAIL" >> $LOGDIR/mailMessage
  test_results=1
  echo "" >> $LOGDIR/mailMessage
  echo "" >> $LOGDIR/mailMessage
  echo "The following is the 'tail' of the build failure">> $LOGDIR/mailMessage
  echo "" >> $LOGDIR/mailMessage
  tail  -50 tmp >> $LOGDIR/mailMessage

  # If checkout did not fail, set test status to red, build failed
  if !(grep "blue" $LOGDIR/Test_Status)
  then
    echo "Test_results:red" > $LOGDIR/Test_Status
    echo "Set Test Status to red."
  fi
  
else

  echo "Library build PASS with ESMF_BOPT=$OPT"
  echo "`date` library build -j4 ...........PASS" >> $LOGDIR/mailMessage

  # Check for warnings
  numwarnings='grep -ic "warning[ ]*:" tmp'
  if [ numwarnings != 0 ]
  then
    echo "Builds with warnings." >> $LOGDIR/mailMessage
  fi # warnings


  # check if all files should be logged
  if [[ $LOGTMP = "ALL" ]]
  then
    if [ $OPT != g ]
    then 
      cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else    
      cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    fi #end of if [ $OPT != g ]
  fi # end of if [[ $LOGTMP = "ALL" ]]
  
  #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/build_$OPT_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  echo "|------------------------ INSTALL -------------------------------|"

  gmake -j32 ESMF_BOPT=$OPT  install 1> tmp 2>&1
  cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/install_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  if [ "$?" != "0" ]
  then
    echo "Library install FAILED with ESMF_BOPT=$OPT"
    install_results=1  # install failed

    if [ $OPT != g ]
    then
      cat tmp > $LOGDIR/install_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else
      cat tmp > $LOGDIR/install_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    fi #end of if [ $OPT != g ]

    echo "`date` library install **********FAIL" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "The following is the 'tail' of the install failure">> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    tail  -50 tmp >> $LOGDIR/mailMessage

    # Set test status as yellow, if it is not red
    if !(grep "red" $LOGDIR/Test_Status)
    then
      echo "Test_results:yellow" > $LOGDIR/Test_Status
      echo "Set Test Status to yellow."
    fi

  else

    echo "Library install PASSED with ESMF_BOPT=$OPT"
    echo "`date` library install ..........PASS" >> $LOGDIR/mailMessage

    echo "|------------------------ INSTALLCHECK --------------------------|"

    gmake -j32 ESMF_BOPT=$OPT  installcheck 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/installcheck_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "Library install check FAILED with ESMF_BOPT=$OPT"
      install_results=1  # install failed

      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/installcheck_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/installcheck_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]

      echo "`date` library installcheck *****FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the install failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi

    else

      echo "Library installcheck PASSED with ESMF_BOPT=$OPT"
      echo "`date` library installcheck .....PASS" >> $LOGDIR/mailMessage
    fi

    if [ "$build" == "1" ]; then
      echo "|------------------------ QUICKSTART ----------------------------|"
      gmake -j32 ESMF_BOPT=$OPT  build_quick_start 1> tmp 2>&1
      cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/quickstartbuild_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    fi
    
    if [ "$?" != "0" ]
    then
      echo "Quick start build check FAILED with ESMF_BOPT=$OPT"
      quickstart_results=1  # install failed

      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/quickstart_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/quickstart_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]

      echo "`date` quickstart build *********FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the quickstart build  failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage

      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi

    else
      echo "Quickstart build passed with ESMF_BOPT=$OPT"
      echo "`date` quickstart build .........PASS" >> $LOGDIR/mailMessage
      quickstart_results=0  # quick_start passed
    fi
  fi
  
  if [ $do_apps == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "|------------------------ APPs TESTS -------------------------|" >> $LOGDIR/mailMessage

    echo "|------------------------ APPS -------------------------------|"

    gmake -j32 ESMF_BOPT=$OPT  build_apps 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_apps_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "build apps FAILED with ESMF_BOPT=$OPT"
      install_results=1  # build apps failed

      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/buils_apps_O_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/buils_apps_g_`date +%d``uname -n`$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]
      echo "`date` apps build ***************FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the build_apps failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage

      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      export apps_pass=0
      export apps_fail=0
      # Save results for summary
      echo "PASS $apps_pass FAIL $apps_fail" > $LOGDIR/apps_results

    else

      echo "build apps PASSED with ESMF_BOPT=$OPT"
      echo "`date` apps build ...............PASS" >> $LOGDIR/mailMessage

    fi #end of build apps

    #$homedir/exec_test "apps_test" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR

	cd $APPSDIR
	RUN=$ESMF_MPIRUN

echo "RUN: [$RUN]"




		apps_pass=0
		apps_fail=0


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
			then
                        	$RUN -n 4 ./ESMF_Regrid --help 1> ESMF_Regrid.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Regrid --help 1> ESMF_Regrid.stdout  2>&1
			fi
                else
                        ./ESMF_Regrid --help 1> ESMF_Regrid.stdout  2>&1
                fi
		if [ "$?" != "0" ]
        	then
			echo "ESMF_Regrid FAILED with ESMF_BOPT=$OPT"
                	echo "`date` ESMF_Regrid --help ***********FAIL" >> $LOGDIR/mailMessage

                	# Set test status as yellow, if it is not red
                	if !(grep "red" $LOGDIR/Test_Status)
                	then
                        	echo "Test_results:yellow" > $LOGDIR/Test_Status
                        	echo "Set Test Status to yellow."
                	fi
                	# Update number of test failures
			apps_fail=`expr $apps_fail + 1`
                	read failures < $LOGDIR/Test_Failures
                	total=`expr $failures + 1`
                	echo "$total" > $LOGDIR/Test_Failures
                	echo "New failure total is $total."


                else

                	echo "ESMF_Regrid PASSED with ESMF_BOPT=$OPT"
                	echo "`date` ESMF_Regrid --help ...........PASS" >> $LOGDIR/mailMessage
			apps_pass=`expr $apps_pass + 1`
		fi

		echo "The following is the output of ESMF_Regrid --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Regrid.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Regrid --version 1> ESMF_Regrid.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Regrid --version 1> ESMF_Regrid.stdout  2>&1
			fi
                else
                        ./ESMF_Regrid --version 1> ESMF_Regrid.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Regrid FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid --version ********FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Regrid PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid --version ........PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Regrid --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Regrid.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Regrid -V 1> ESMF_Regrid.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Regrid -V 1> ESMF_Regrid.stdout  2>&1
			fi
                else
                        ./ESMF_Regrid -V 1> ESMF_Regrid.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Regrid FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid -V ***************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Regrid PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Regrid -V ...............PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Regrid -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Regrid.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Info --help  1> ESMF_Info.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Info --help  1> ESMF_Info.stdout  2>&1
			fi
                else
                        ./ESMF_Info --help  1> ESMF_Info.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Info FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --help *************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Info PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --help .............PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Info --help ">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_Info.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Info --version  1> ESMF_Info.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Info --version  1> ESMF_Info.stdout  2>&1
			fi
                else
                        ./ESMF_Info --version  1> ESMF_Info.stdout  2>&1
                fi

                if [ "$?" != "0" ]
                then
                        echo "ESMF_Info FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --version **********FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Info PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info --version ..........PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Info --version ">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_Info.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Info -V  1> ESMF_Info.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Info -V  1> ESMF_Info.stdout  2>&1
			fi
                else
                        ./ESMF_Info -V  1> ESMF_Info.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Info FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info -V *****************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Info PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Info -V .................PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Info -V ">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_Info.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_InfoC --help  1> ESMF_InfoC.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_InfoC --help  1> ESMF_InfoC.stdout  2>&1
			fi
                else
                        ./ESMF_InfoC --help  1> ESMF_InfoC.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_InfoC FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --help ************FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_InfoC PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --help ............PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_InfoC --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_InfoC.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_InfoC --version  1> ESMF_InfoC.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_InfoC --version  1> ESMF_InfoC.stdout  2>&1
			fi
                else
                        ./ESMF_InfoC --version  1> ESMF_InfoC.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_InfoC FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --version *********FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_InfoC PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC --version .........PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_InfoC --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_InfoC.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage
                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_InfoC -V  1> ESMF_InfoC.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_InfoC -V  1> ESMF_InfoC.stdout  2>&1
			fi
                else
                        ./ESMF_InfoC -V  1> ESMF_InfoC.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then 
                        echo "ESMF_InfoC FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC -V ****************FAIL" >> $LOGDIR/mailMessage
                        
                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then 
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures 
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_InfoC PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_InfoC -V ................PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_InfoC -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_InfoC.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_RegridWeightGen --help  1> ESMF_RegridWeightGen.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_RegridWeightGen --help  1> ESMF_RegridWeightGen.stdout  2>&1
			fi
                else
                        ./ESMF_RegridWeightGen --help  1> ESMF_RegridWeightGen.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_RegridWeightGen FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --help **FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_RegridWeightGen PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --help ..PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                        echo "The following is the output of ESMF_RegridWeightGen --help">> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        cat ESMF_RegridWeightGen.stdout >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_RegridWeightGen --version  1> ESMF_RegridWeightGen.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_RegridWeightGen --version  1> ESMF_RegridWeightGen.stdout  2>&1
			fi
                else
                        ./ESMF_RegridWeightGen --version  1> ESMF_RegridWeightGen.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_RegridWeightGen FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --version FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_RegridWeightGen PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen --version PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                        echo "The following is the output of ESMF_RegridWeightGen --version">> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        cat ESMF_RegridWeightGen.stdout >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage




	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_RegridWeightGen -V  1> ESMF_RegridWeightGen.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_RegridWeightGen -V  1> ESMF_RegridWeightGen.stdout  2>&1
			fi
                else
                        ./ESMF_RegridWeightGen -V  1> ESMF_RegridWeightGen.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_RegridWeightGen FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen -V ******FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_RegridWeightGen PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_RegridWeightGen -V ......PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                        echo "The following is the output of ESMF_RegridWeightGen -V">> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        cat ESMF_RegridWeightGen.stdout >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage
                        echo "" >> $LOGDIR/mailMessage




	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Scrip2Unstruct --help  1> ESMF_Scrip2Unstruct.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Scrip2Unstruct --help  1> ESMF_Scrip2Unstruct.stdout  2>&1
			fi
                else
                        ./ESMF_Scrip2Unstruct --help  1> ESMF_Scrip2Unstruct.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Scrip2Unstruct FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --help ***FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Scrip2Unstruct PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --help ...PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Scrip2Unstruct --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Scrip2Unstruct.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage




	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Scrip2Unstruct --version  1> ESMF_Scrip2Unstruct.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Scrip2Unstruct --version  1> ESMF_Scrip2Unstruct.stdout  2>&1
			fi
                else
                        ./ESMF_Scrip2Unstruct --version  1> ESMF_Scrip2Unstruct.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Scrip2Unstruct FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --version FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Scrip2Unstruct PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct --version PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_Scrip2Unstruct --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Scrip2Unstruct.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                        


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

                if [ $ESMF_COMM != mpiuni ]
                then
			if [ $RUN == aprun ] || [ $RUN == srun ]
                        then
                        	$RUN -n 4 ./ESMF_Scrip2Unstruct -V  1> ESMF_Scrip2Unstruct.stdout  2>&1
			else
                        	$RUN -np 4 ./ESMF_Scrip2Unstruct -V  1> ESMF_Scrip2Unstruct.stdout  2>&1
			fi
                else
                        ./ESMF_Scrip2Unstruct -V  1> ESMF_Scrip2Unstruct.stdout  2>&1
                fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_Scrip2Unstruct FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct -V *******FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_Scrip2Unstruct PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_Scrip2Unstruct -V .......PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi      

                echo "The following is the output of ESMF_Scrip2Unstruct -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat ESMF_Scrip2Unstruct.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

		if [ $RUN == aprun ] && [ $ESMF_COMPILER == intel ]
                then
                	$RUN -n 1 ./ESMF_WebServController --help  1> ESMF_WebServController.stdout  2>&1
		else
                	./ESMF_WebServController --help  1> ESMF_WebServController.stdout  2>&1
		fi
                if [ "$?" != "0" ]
                then
                        echo "ESMF_WebServController FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --help FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_WebServController PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --help PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_WebServController --help">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_WebServController.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage


	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

		if [ $RUN == aprun ] && [ $ESMF_COMPILER == intel ]
                then
                	$RUN -n 1 ./ESMF_WebServController --version  1> ESMF_WebServController.stdout  2>&1
		else
                	./ESMF_WebServController --version  1> ESMF_WebServController.stdout  2>&1
		fi
                if [ "$?" != "0" ]
                then 
                        echo "ESMF_WebServController FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --version FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_WebServController PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController --version PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_WebServController --version">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_WebServController.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage



	echo "" >> $LOGDIR/mailMessage
	echo "|--------------------------------------------------------------|" >> $LOGDIR/mailMessage

		if [ $RUN == aprun ] && [ $ESMF_COMPILER == intel ]
                then
                	$RUN -n 1 ./ESMF_WebServController -V  1> ESMF_WebServController.stdout  2>&1
		else
                	./ESMF_WebServController -V  1> ESMF_WebServController.stdout  2>&1
		fi
                if [ "$?" != "0" ]
                then 
                        echo "ESMF_WebServController FAILED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController -V ****FAIL" >> $LOGDIR/mailMessage

                        # Set test status as yellow, if it is not red
                        if !(grep "red" $LOGDIR/Test_Status)
                        then
                                echo "Test_results:yellow" > $LOGDIR/Test_Status
                                echo "Set Test Status to yellow."
                        fi
                        # Update number of test failures
                        apps_fail=`expr $apps_fail + 1`
                        read failures < $LOGDIR/Test_Failures
                        total=`expr $failures + 1`
                        echo "$total" > $LOGDIR/Test_Failures
                        echo "New failure total is $total."


                else

                        echo "ESMF_WebServController PASSED with ESMF_BOPT=$OPT"
                        echo "`date` ESMF_WebServController -V ....PASS" >> $LOGDIR/mailMessage
                        apps_pass=`expr $apps_pass + 1`
                fi

                echo "The following is the output of ESMF_WebServController -V">> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                cat  ESMF_WebServController.stdout >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage
                echo "" >> $LOGDIR/mailMessage

		tar --atime-preserve='replace' -cf app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar *.stdout
        	gzip app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
        	mv -f app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.


		# Save results for summary
		echo "PASS $apps_pass FAIL $apps_fail" > $LOGDIR/apps_results


		cd $ESMF_DIR

    #check if queue was available
    #     if !(grep "passed" $LOGDIR/queue_results)
    #     then
    #             # Set test status as yellow, if it is not red
    #             if !(grep "red" $LOGDIR/Test_Status)
    #             then
    #                     echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                     echo "Set Test Status to yellow."
    #             fi
    #             echo "Queue not available "
    #             echo "`date` Queue not available **********FAIL" >> $LOGDIR/mailMessage
    #             export apps_pass=0
    #             export apps_fail=0
		# # Save results for summary
    #             echo "PASS $apps_pass FAIL $apps_fail" > $LOGDIR/apps_results
    #     else


    cd $APPSDIR

    tar --atime-preserve='replace' -cf app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar *.stdout
    gzip app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f app$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.

    read PASS apps_pass FAIL apps_fail < $LOGDIR/apps_results

    apps_total=`expr $apps_fail + $apps_pass`
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "Ran $apps_total applications tests, $apps_pass passed and $apps_fail failed." >> $LOGDIR/mailMessage

  # fi
  fi #run_apps
  
  cd $ESMF_DIR

  if [ $do_sys == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "|----------------------- SYSTEM TESTS -------------------------|" >>   $LOGDIR/mailMessage
  
    echo "|------------------------ SYSTEM TESTS --------------------------|"
    
    gmake -j32 ESMF_BOPT=$OPT build_system_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "system_tests build FAIL "
      echo "`date` build_system_tests *******FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the system tests failure">> $LOGDIR/  mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
  
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
  
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
    
    else
      echo "build_system_tests PASS "
      echo "`date` build_system_tests .......PASS" >> $LOGDIR/mailMessage
  
      if [[ $LOGTMP = "ALL" ]]
      then
        if [ $OPT != g ]
        then
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        fi #end of if [ $OPT != g ]
      fi # end of if [[ $LOGTMP = "ALL" ]]
  
    fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT   build_system_tests 1> tmp 2>&1
  
    # Run the system tests 
    #$homedir/exec_test "sys_test" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR

	if [[ $SYS_TEST_TYPE == "UNI" ]]; then
    make run_system_tests_uni 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_system_tests_uni_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  else
    make run_system_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  fi

    # #check if queue was available
    # if !(grep "passed" $LOGDIR/queue_results)
    # then
    #         # Set test status as yellow, if it is not red
    #         if !(grep "red" $LOGDIR/Test_Status)
    #         then
    #                 echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                 echo "Set Test Status to yellow."
    #         fi
    #         echo "Queue not available "
    #         echo "`date` Queue not available **********FAIL" >> $LOGDIR/  mailMessage
    #         export sysTestPass=0
    #         export sysTestFail=0
    # 
    # else
  
  
    if [[ $SYS_TEST_TYPE = "UNI" ]]
    then
      echo "run_system_tests_uni PASS "
      echo "`date` run_system_tests_uni .........PASS" >> $LOGDIR/mailMessage
    else
      echo "run_system_tests PASS "
      echo "`date` run_system_tests .............PASS" >> $LOGDIR/mailMessage
    fi #end of if [[ $SYS_TEST_TYPE = "UNI" ]]
  
    if [[ $LOGTMP = "ALL" ]]
    then
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_system_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi #end of if [ $OPT != g ]
    fi # end of if [[ $LOGTMP = "ALL" ]]
  
    make check_system_tests >> $LOGDIR/mailMessage
    read pass sysTestPass fail sysTestFail < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/system_tests_results
  
    if [[ $sysTestFail != 0 ]]
    then
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $sysTestFail`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
  
    #make tarballs of test directories
    mkdir test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf test$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    # fi # queue results
  fi

  if [ $do_examples == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "|------------------------- EXAMPLES ---------------------------|" >>   $LOGDIR/mailMessage
  
    echo "|------------------------ EXAMPLES ------------------------------|"

    gmake  -j32 ESMF_BOPT=$OPT build_examples 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "examples build FAIL "
      echo "`date` build_examples build *****FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the examples failure">> $LOGDIR/  mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
  
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
  
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
  
    else
      echo "build_examples PASS "
      echo "`date` build_examples ...........PASS" >> $LOGDIR/mailMessage
  
      if [[ $LOGTMP = "ALL" ]]
      then
        if [ $OPT != g ]
        then
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        fi #end of if [ $OPT != g ]
      fi # end of if [[ $LOGTMP = "ALL" ]]
  
    fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT build_examples 1>   tmp 2>&1
  
    # Run the examples on sn702
    #$homedir/exec_test "examples" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR

	if [[ $SYS_TEST_TYPE == "UNI" ]]; then
    make run_examples_uni 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_examples_uni_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  else
    make run_examples 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  fi

    #check if queue was available
    # if !(grep "passed" $LOGDIR/queue_results)
    # then
    #         # Set test status as yellow, if it is not red
    #         if !(grep "red" $LOGDIR/Test_Status)
    #         then
    #                 echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                 echo "Set Test Status to yellow."
    #         fi
    #         echo "Queue not available "
    #         echo "`date` Queue not available **********FAIL" >> $LOGDIR/  mailMessage
    #         export ex_passed=0
    #         export ex_failed=0
    # else
  
    if [[ $SYS_TEST_TYPE = "UNI" ]]
    then
      echo "run_examples_uni PASS "
      echo "`date` run_examples_uni .............PASS" >> $LOGDIR/mailMessage
    else
      echo "run_examples PASS "
      echo "`date` run_examples .................PASS" >> $LOGDIR/mailMessage
    fi #end of if [[ $SYS_TEST_TYPE = "UNI" ]]
  
    if [[ $LOGTMP = "ALL" ]]
    then
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_examples_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
      fi #end of if [ $OPT != g ]
    fi # end of if [[ $LOGTMP = "ALL" ]]
  
    
    gmake -j32 check_examples >> $LOGDIR/mailMessage
    read pass ex_passed fail ex_failed < $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/examples_results
    if [[ $ex_failed != 0 ]]
    then
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $ex_failed`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
  
  
  
    # Make tarball of the examples Log and stdout files
    mkdir examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*stdout   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*Log   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xml   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    cp $ESMF_DIR/examples/examples$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/*xsd   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    tar --atime-preserve='replace' -cf   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar   examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
    gzip examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar
    mv -f examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.tar.gz $LOGDIR/.
    rm -rf examples$OPT.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM
  
    # fi queue results
  fi 

  if [ $do_unit == 1 ]; then

    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
  
  
    if [[ $U_TESTS = "NON" ]]
    then
      echo "|-------------------NON_EXHAUSTIVE UNIT TESTS -----------------|"   >> $LOGDIR/mailMessage
    else
      echo "|-------------------- EXHAUSTIVE UNIT TESTS -------------------|"   >> $LOGDIR/mailMessage
    fi # end of if [[ $U_TESTS = "NON" ]]
    
    echo "|------------------------ UNIT TESTS ----------------------------|"

    gmake  -j32 build_unit_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    
    if [ "$?" != "0" ]
    then
      echo "build_unit_tests FAIL "
      echo "`date` build_unit_tests *********FAIL" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the build_unit_tests failure">>   $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
  
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      unit_tests_build=1 #unit tests failed to build
  
    else
      echo "build_unit_tests PASS "
      echo "`date` build_unit_tests .........PASS" >> $LOGDIR/mailMessage
  
      if [[ $LOGTMP = "ALL" ]]
      then
        if [ $OPT != g ]
        then
          cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        else
          cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`build_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
        fi #end of if [ $OPT != g ]
      fi # end of if [[ $LOGTMP = "ALL" ]]
  
    fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT  build_unit_tests   1> tmp 2>&1
  
  
    # Run the unit tests on sn702
    #$homedir/exec_test "unit" $ESMF_DIR $OPT $ESMF_COMM $SYS_TEST_TYPE   $U_TEST_TYPE $U_TESTS $THREADED $homedir $APPSDIR $LOGDIR 

	if [[ $U_TEST_TYPE == "UNI" ]]; then
    make run_unit_tests_uni 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_unit_tests_uni_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  else
    make run_unit_tests 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  fi

    #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    # if !(grep "passed" $LOGDIR/queue_results)
    # then
    #         # Set test status as yellow, if it is not red
    #         if !(grep "red" $LOGDIR/Test_Status)
    #         then
    #                 echo "Test_results:yellow" > $LOGDIR/Test_Status
    #                 echo "Set Test Status to yellow."
    #         fi
    #         echo "Queue not available "
    #         echo "`date` Queue not available **********FAIL" >> $LOGDIR/  mailMessage
    #         export test_pass=0
    #         export test_fail=0
    # else
    #
  
    if [[ $U_TESTS_TYPE = "UNI" ]]
    then
      echo "run_unit_tests_uni PASS "
      echo "`date` run_unit_tests_uni ...........PASS" >> $LOGDIR/mailMessage
    else
      echo "run_test PASS "
      echo "`date` run_unit_tests ...............PASS" >> $LOGDIR/mailMessage
    fi # end of if [[ $U_TESTS_TYPE = "UNI" ]]
    if [[ $LOGTMP = "ALL" ]]
    then
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/build_O_`date +%d``uname -  n`run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
	#cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out 
      else
        cat tmp > $LOGDIR/build_g_`date +%d``uname -  n`run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER
        #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/run_unit_tests_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
      fi #end of if [ $OPT != g ]
    fi # end of if [[ $LOGTMP = "ALL" ]]
  
  
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    
    gmake -j32 check_unit_tests >> $LOGDIR/mailMessage
    read pass test_pass fail test_fail < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/unit_tests_results 
    if [[ $test_fail != 0 ]]
    then
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
        echo "Set Test Status to yellow."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $test_fail`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
    
    #make tarballs of test directories
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
  

    # fi queue results
  fi
fi #end of if [ "$?" != "0" ] for make ESMF_BOPT=$OPT  1> tmp 2>&1


if [ $do_apps == 1 ]; then
  #Get apps tests results
  read PASS apps_pass FAIL apps_fail < $LOGDIR/apps_results
else
  apps_pass=0
  apps_fail=0
fi

# Make name as short as possible
name=`uname -n | sed 's/\..*//'`


if [[ $test_results != 0 ]] 
then  #The build failed
  echo "**FAIL** $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI" >> $LOGDIR/summary
else
  if [[ $install_results != 0 || $quickstart_results != 0 ]]
  then  #The install failed
    echo "PASS FAIL $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $test_pass/$test_fail $ex_passed/$ex_failed $sysTestPass/$sysTestFail $apps_pass/$apps_fail" >> $LOGDIR/summary
  else
    echo "PASS PASS $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $test_pass/$test_fail $ex_passed/$ex_failed $sysTestPass/$sysTestFail $apps_pass/$apps_fail" >> $LOGDIR/summary
  fi
fi #end of if [$test_results != 0]



# Check if benchmarking should be run.
if [[ $test_results == 0 && $unit_tests_build == 0  && $BENCHMARKRUN  == "ON" ]]
then  #If the library build or the unit tests build failed,  don't run benchmarking
  if [[ $BENCHMARKINSTALL == "ON" ]]
  then
    gmake -j32 ESMF_BOPT=$OPT install_unit_tests_benchmark 1> tmp 2>&1
    cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/install_unit_tests_benchmark_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
    if [ "$?" != "0" ]
    then
      echo "install_unit_tests_benchmark  FAIL "
      echo "`date` install_unit_tests_benchmark *FAIL" >> $LOGDIR/mailMessage
      if [ $OPT != g ]
      then
        cat tmp > $LOGDIR/benchmark_install`date +%d``uname -n`install_unit_tests_benchmark$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      else
        cat tmp > $LOGDIR/benchmark_install`date +%d``uname -n`install_unit_tests_benchmark$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
      fi # end of if [ $OPT != g ]
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "The following is the 'tail' of the install_unit_tests_benchmark failure">> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      tail  -50 tmp >> $LOGDIR/mailMessage
      echo "" >> $LOGDIR/mailMessage
      # Set test status as yellow, if it is not red
      if !(grep "red" $LOGDIR/Test_Status)
      then
        echo "Test_results:yellow" > $LOGDIR/Test_Status
            	"Set Test Status to yellow."
      fi
    else
      echo "install_unit_tests_benchmark  PASS "
      echo "`date` install_unit_tests_benchmark .PASS" >> $LOGDIR/mailMessage
    fi
  fi
  
  gmake -j32 ESMF_BOPT=$OPT run_unit_tests_benchmark 1> tmp 2>&1
  cp -rf $ESMF_DIR/tmp  /home/hpillai/storage/develop/run_unit_tests_benchmark_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
  if [ "$?" != "0" ]
  then
    echo "run_unit_tests_benchmark  FAIL "
    echo "`date` run_unit_tests_benchmark *****FAIL" >> $LOGDIR/mailMessage
    if [ $OPT != g ]
    then
      cat tmp > $LOGDIR/benchmark_run`date +%d``uname -n`run_examples_uni$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    else
      cat tmp > $LOGDIR/benchmark_run`date +%d``uname -n`run_examples_uni$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM
    fi # end of if [ $OPT != g ]
    #cp -rf $ESMF_DIR/tmp  /home1/07356/tg866552/storage/develop/build_$OPT_$ESMF_OS$ESMF_ABI$ESMF_COMPILER$ESMF_COMM.out
	
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "The following is the 'tail' of the run_unit_tests_benchmark failure">> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    tail  -50 tmp >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    # Set test status as lime, if it is green
    if (grep "green" $LOGDIR/Test_Status)
    then
      echo "Test_results:lime" > $LOGDIR/Test_Status
      echo "Set Test Status to lime."
    fi
  else
    echo "run_unit_tests_benchmark  PASS "
    echo "`date` run_unit_tests_benchmark .....PASS" >> $LOGDIR/mailMessage
    echo "" >> $LOGDIR/mailMessage
    cat tmp >> $LOGDIR/mailMessage
    read pass bm_pass_total fail bm_test_failures match match < $ESMF_DIR/test/test$OPT/$ESMF_OS.$ESMF_COMPILER.$ESMF_ABI.$ESMF_COMM.$ESMF_SITE/unit_tests_bm_results
    echo "bm_pass_total = $bm_pass_total bm_test_failures = $ bm_test_failures"
    if [[ $bm_test_failures != 0 ]]
    then
      # Set test status as lime, if it is green
      if (grep "green" $LOGDIR/Test_Status)
      then
        echo "Test_results:lime" > $LOGDIR/Test_Status
        echo "Set Test Status to lime."
      fi
      # Update number of test failures
      read failures < $LOGDIR/Test_Failures
      total=`expr $failures + $bm_test_failures`
      echo "$total" > $LOGDIR/Test_Failures
      echo "New failure total is $total."
    fi
    if [[ $install_results != 0 || $quickstart_results != 0 ]]
    then  #The install failed
      echo "PASS FAIL $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $bm_pass_total/$bm_test_failures Benchmark test results" >> $LOGDIR/summary
    else
      echo "PASS PASS $name($OPT) $ESMF_OS.$ESMF_COMPILER.$ESMF_COMM.$ESMF_ABI $bm_pass_total/$bm_test_failures Benchmark test results" >> $LOGDIR/summary
    fi
  fi
fi # end of check if benchmarking should be done.



echo "" >> $LOGDIR/mailMessage


# keep expect happy
echo "test_esmf has finished"

######### Start the mail message file ################################


echo "" > $LOGDIR/mailHeader
echo "" > $LOGDIR/header
echo "Script end: `date`" >> $LOGDIR/header



echo "" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailMessage
echo "" >> $LOGDIR/mailHeader
echo "" >> $LOGDIR/mailHeader
echo "" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "______________________________________ESMF BUILD AND TEST SUMMARY___________________________" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "" >> $LOGDIR/header
echo "                                            " >> $LOGDIR/header
echo "                    INSTALL/" >> $LOGDIR/header
echo "           BUILD  QUICK_START OS.COMPILER.COMM.ABI    UNIT TESTS   EXAMPLES  SYSTEM TESTS  APPS TESTS">> $LOGDIR/header

echo "_____________________________________________________________________________________________________" >> $LOGDIR/header

echo "          PASS/FAIL PASS/FAIL                           PASS/FAIL   PASS/FAIL  PASS/FAIL   PASS/FAIL">> $LOGDIR/header

echo "_____________________________________________________________________________________________________" >> $LOGDIR/header


############################# Put the mail message together and mail it ####################

awk '{if ($1 ~/PASS/) printf ("%-12s%-10s%-8s%-25s%10s%10s%10s%10s\n",  $3, $1, $2, $4, $5, $6, $7, $8) ;else  printf ("%-10s%-20s%-10s\n", $2, $1,  $3 )}'  $LOGDIR/summary > $LOGDIR/newsummary
cat $LOGDIR/mailHeader $LOGDIR/header $LOGDIR/newsummary > $LOGDIR/sum
cat $LOGDIR/sum $LOGDIR/mailMessage > $LOGDIR/newMailMessage
echo "" >>  $LOGDIR/newMailMessage

echo " The tarballs of the tests and examples directories can be found at:" >>  $LOGDIR/newMailMessage
echo " $LOGDIR." >>  $LOGDIR/newMailMessage
echo " These tarballs contain the *Log and *stdout files only, not the executables." >>  $LOGDIR/newMailMessage
echo " This directory also contains failed build output files with the naming convention of " >>  $LOGDIR/newMailMessage
echo " build_ESMF_BOPT_(day)(platform)ESMF_OS ESMF_ABI ESMF_COMPILER ESMF_COMM." >>  $LOGDIR/newMailMessage
echo " For example, if the build fails on longs on the 19th of the month with ESMF_BOPT=g, the file " >>  $LOGDIR/newMailMessage
echo " would be called 'build_g_19longslinux32pgimpiuni'." >>  $LOGDIR/newMailMessage

cd /home/hpillai/storage/develop
mkdir testO_$x
mkdir examplesO_$x
mkdir libO_$ESMF_OS_$x
mkdir appsO_$ESMF_OS_$x
mkdir O_outputfiles

cp -rf $ESMF_DIR/test/testO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout testO_$x/
cp -rf $ESMF_DIR/test/testO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*_results testO_$x/
cp -rf $ESMF_DIR/test/testO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.config testO_$x/
cp -rf $ESMF_DIR/examples/examplesO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout examplesO_$x/
cp -rf $ESMF_DIR/examples/examplesO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*_results examplesO_$x/
cp -rf $ESMF_DIR/examples/examplesO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.config examplesO_$x/
cp -rf $ESMF_DIR/lib/libO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/esmf.mk libO_$x/
cp -rf $ESMF_DIR/apps/appsO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout appsO_$x/
cp -rf $ESMF_DIR/test/testO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log testO_$x/
cp -rf $ESMF_DIR/examples/examplesO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log examplesO_$x/
cp -rf $ESMF_DIR/apps/appsO/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log appsO_$x/

for h in *pgi*.out; do mv "$h" "${h%.out}_O.out"; done
mv *_O.out O_outputfiles/

cd $ROOTDIR

mail -s "ESMF_Trunk_Orion_pgi" himanshu@ucar.edu < $LOGDIR/newMailMessage

exit
