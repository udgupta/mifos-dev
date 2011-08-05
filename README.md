Starting with Mifos Development on Ubuntu 11.04 (64 Bit)
========================================================

BASIC DEVELOPMENT SETUP
=======================

Install MySQL (sudo apt-get install mysql-server)
  * Login at root
  * Create database mifos and test

    CREATE DATABASE mifos;

  * Create user mifos with password mifos and grant full permission for mifos database

    GRANT ALL on mifos.* to 'mifos'@'localhost' identified by 'mifos';

Install GIT (git version 1.7.4.1+ )
    
    sudo apt-get install git-core

Download the required softwares
  * Eclipse indigo (3.7+) Java Developers (tar.gz)
  * JDK 1.6u26+ (bin - self extracting)
  * Apache Maven 3.0.3+ (zip)

Run [create-Mifos-WS-basic.sh](https://github.com/ugupta/mifos-dev/blob/master/create-Mifos-WS-basic.sh)

NOTE : READ the script, setup the environment and check/update the software versions before executing

Eclipse Setup
-------------
Setup JDK path in eclipse/eclipse.ini

    --launcher.defaultAction
    openFile
    -vm
    ../jdk1.6.0_25/bin/java
    -vmargs
    -Dosgi.requiredJavaVersion=1.5
    
Open eclipse and disable "Build Automatically"

Import Mifos Workspace

Import Coding format

Setup whitespace and Save Actions

Create [local.properties](https://github.com/ugupta/mifos-dev/blob/master/local.properties)

copy script folder to ws-master and test scripts

Start Developing Mifos

previous version of Mifos workspace setup (TODO)
 READ [create-Mifos-WS-advance.sh](https://github.com/ugupta/mifos-dev/blob/master/create-Mifos-WS-advance.sh)

Future Reading
  * [Mifos Workspace 2.0](http://mifosforge.jira.com/wiki/display/MIFOS/Workspace+2.0+Eclipse+Maven+Settings)
  * [MySQL on RAM for Faster development](http://mifosforge.jira.com/wiki/display/MIFOS/RAMDisk)
  * [Maven Settings](http://mifosforge.jira.com/wiki/display/MIFOS/Workspace+2.0+Eclipse+Maven+Settings)

TOPICS
======

ARCH
----
   * [Modules - and sub topics](http://mifosforge.jira.com/wiki/display/MIFOS/Elsie+F+Architecture)
   * [Bits and Pieces](http://mifosforge.jira.com/wiki/display/MIFOS/Introduction+to+Mifos+for+Programmers)

JIRA and Hudson and sf.net
---------------
 * JIRA issue types
 * JIRA components
 * Volunteer Issues
 * How to pick a Issues (search jira)

 * Hudson builds
 * Hudson deployment jobs
 
 Create accounts on JIRA, hudson and [sf.net](http://sourceforge.net/projects/mifos)
   * Browse sf.net
 
How to
-------
[Code Submission](http://mifosforge.jira.com/wiki/display/MIFOS/Code+Submission+Process#CodeSubmissionProcess-Howtosubmitapatch)
[Developer Call]

Next
----
[http://mifosforge.jira.com/wiki/display/MIFOS/2011+Product+Planning](http://mifosforge.jira.com/wiki/display/MIFOS/2011+Product+Planning)
[http://mifosforge.jira.com/wiki/display/MIFOS/MIFOS+QA+Technology+Plan](http://mifosforge.jira.com/wiki/display/MIFOS/MIFOS+QA+Technology+Plan)

