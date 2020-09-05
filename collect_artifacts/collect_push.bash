#!/bin/bash -l

        
x="${ESMF_OS}_${ESMF_COMPILER}_${ESMF_COMM}"
day=`date +%A`
year=`date +%Y`
month=`date +%B`
date=`date +%d`
y="${check}_${day}_${month}_${year}"
z=`hostname`

cd ~/esmf-test-artifacts
git pull
cd ~/esmf-test-artifacts/develop/bighorn/$ESMF_COMPILER/$ESMF_BOPT/$ESMF_COMM/apps
cp -rf $ESMF_DIR/apps/apps$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log .
cp -rf $ESMF_DIR/apps/apps$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout .
cd ~/esmf-test-artifacts/develop/bighorn/$ESMF_COMPILER/$ESMF_BOPT/$ESMF_COMM/test
cp -rf $ESMF_DIR/test/test$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log .
cp -rf $ESMF_DIR/test/test$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout .
cd ~/esmf-test-artifacts/develop/bighorn/$ESMF_COMPILER/$ESMF_BOPT/$ESMF_COMM/examples
cp -rf $ESMF_DIR/examples/examples$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.Log .
cp -rf $ESMF_DIR/examples/examples$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/*.stdout .
cd ~/esmf-test-artifacts/develop/bighorn/$ESMF_COMPILER/$ESMF_BOPT/$ESMF_COMM/lib
cp -rf $ESMF_DIR/lib/lib$ESMF_BOPT/$ESMF_OS.$ESMF_COMPILER.64.$ESMF_COMM.default/esmf.mk . 
git add .
git commit -m "Platform_name artifacts pushed at `date`"
git push origin master 
