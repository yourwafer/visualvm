#!/bin/sh

# This script expects JAVA_HOME to point to the correct JDK 5.0 installation
# In case you need to customize it, please uncomment and modify the following lines

# JAVA_HOME=/opt/java/jdk1.5.0_04
# export JAVA_HOME

# Determine the location of the profile script as an absolute directory
ORIG_DIR=`pwd`
PROG_NAME=`type $0 | awk '{print $3}'`
INSTALL_DIR=`dirname $PROG_NAME`
cd $INSTALL_DIR
INSTALL_DIR=`pwd`
cd $ORIGDIR

$JAVA_HOME/bin/java -agentpath:$INSTALL_DIR/../lib/deployed/jdk15/linux/libprofilerinterface.so=$INSTALL_DIR/../lib/,5140 $@