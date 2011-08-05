#!/bin/bash

export MIFOS_HOME=~/Projects/Mifos;
export DOWNLOAD_HOME=~/Downloads;
export GIT_URL=git://mifos.git.sourceforge.net/gitroot/mifos
#export GIT_URL=~/Projects/Mifos-WS-Backup/ws-master;
export JDK_BIN=jdk-6u25-linux-x64.bin;
export MVN_ZIP=apache-maven-3.0.3-bin.zip
export MVN2_ZIP=apache-maven-2.2.1-bin.zip

export MIFOS_2_2=$MIFOS_HOME/ws-2.2;
export MIFOS_2_1=$MIFOS_HOME/ws-2.1;
export MIFOS_2_0=$MIFOS_HOME/ws-2.0;
export MIFOS_1_6=$MIFOS_HOME/ws-1.6;

export ECLIPSE_JEE_TAR=eclipse-jee-helios-SR2-linux-gtk-x86_64.tar.gz
export ECLIPSE_JAVA_TAR=eclipse-java-helios-SR2-linux-gtk-x86_64.tar.gz

export MIFOS_WS=$MIFOS_2_2
export ECLIPSE_TAR=$ECLIPSE_JAVA_TAR
mkdir -p -v $MIFOS_WS
cd $MIFOS_WS
chmod 744 $DOWNLOAD_HOME/$JDK_BIN
$DOWNLOAD_HOME/$JDK_BIN
tar -xvzf $DOWNLOAD_HOME/$ECLIPSE_TAR -C $MIFOS_WS
unzip $DOWNLOAD_HOME/$MVN_ZIP -d $MIFOS_WS 
git clone $GIT_URL/head $MIFOS_WS/workspace/head
cd $MIFOS_WS/workspace/head
git checkout g-release

export MIFOS_WS=$MIFOS_2_1
export ECLIPSE_TAR=$ECLIPSE_JAVA_TAR
mkdir -p -v $MIFOS_WS
cd $MIFOS_WS
chmod 744 $DOWNLOAD_HOME/$JDK_BIN
$DOWNLOAD_HOME/$JDK_BIN
tar -xvzf $DOWNLOAD_HOME/$ECLIPSE_TAR -C $MIFOS_WS
unzip $DOWNLOAD_HOME/$MVN_ZIP -d $MIFOS_WS 
git clone $GIT_URL/head $MIFOS_WS/workspace/head
cd $MIFOS_WS/workspace/head
git checkout f-release

export MVN_ZIP=$MVN2_ZIP

export MIFOS_WS=$MIFOS_2_0
export ECLIPSE_TAR=$ECLIPSE_JAVA_TAR
mkdir -p -v $MIFOS_WS
cd $MIFOS_WS
chmod 744 $DOWNLOAD_HOME/$JDK_BIN
$DOWNLOAD_HOME/$JDK_BIN
tar -xvzf $DOWNLOAD_HOME/$ECLIPSE_TAR -C $MIFOS_WS
unzip $DOWNLOAD_HOME/$MVN_ZIP -d $MIFOS_WS 
git clone $GIT_URL/head $MIFOS_WS/workspace/head
cd $MIFOS_WS/workspace/head
git checkout e-release

export MIFOS_WS=$MIFOS_1_6
export ECLIPSE_TAR=$ECLIPSE_JAVA_TAR
mkdir -p -v $MIFOS_WS
cd $MIFOS_WS
chmod 744 $DOWNLOAD_HOME/$JDK_BIN
$DOWNLOAD_HOME/$JDK_BIN
tar -xvzf $DOWNLOAD_HOME/$ECLIPSE_TAR -C $MIFOS_WS
unzip $DOWNLOAD_HOME/$MVN_ZIP -d $MIFOS_WS 
git clone $GIT_URL/head $MIFOS_WS/workspace/head
cd $MIFOS_WS/workspace/head
git checkout 1.6.x

