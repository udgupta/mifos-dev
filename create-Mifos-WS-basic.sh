#!/bin/bash

export MIFOS_HOME=~/Projects/Mifos;
export MIFOS_WS=$MIFOS_HOME/ws-master;
export DOWNLOAD_HOME=~/Downloads;
export ECLIPSE_TAR=eclipse-java-indigo-linux-gtk-x86_64.tar.gz
export GIT_URL=git://mifos.git.sourceforge.net/gitroot/mifos
#export GIT_URL=~/Projects/Mifos-WS-Backup/ws-master;
export JDK_BIN=jdk-6u25-linux-x64.bin;
export MVN_ZIP=apache-maven-3.0.3-bin.zip

mkdir -p -v $MIFOS_WS
cd $MIFOS_WS
chmod 744 $DOWNLOAD_HOME/$JDK_BIN
$DOWNLOAD_HOME/$JDK_BIN
tar -xvzf $DOWNLOAD_HOME/$ECLIPSE_TAR -C $MIFOS_WS
unzip $DOWNLOAD_HOME/$MVN_ZIP -d $MIFOS_WS 
git clone $GIT_URL/head $MIFOS_WS/workspace/head

