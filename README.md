Starting with Mifos Development on Ubuntu 11.04 (64 Bit)
========================================================

My personal notes about Mifos setup.

BASIC DEVELOPMENT SETUP
=======================

Youtube links
------------
* [Workspace 2.0 Setup](http://www.youtube.com/watch?v=TkvaUKo2-tk)
* [Workspace 2.0 Features](http://www.youtube.com/watch?v=HGqkk1am3sg)

Install MySQL (sudo apt-get install mysql-server)

  * Login at root (mysql -u root -p_password_)
  * Create database mifos and test (test db is used by mifos-db module I think)

    CREATE DATABASE mifos;
    CREATE DATABASE test;

  * Create user mifos with password mifos and grant full permission for mifos database

    GRANT ALL on mifos.* to 'mifos'@'localhost' identified by 'mifos';
    GRANT ALL on test.* to 'mifos'@'localhost' identified by 'mifos';

Install GIT (git version 1.7.4.1+ )
    
    sudo apt-get install git-core

Download the required softwares

 * Eclipse indigo (3.7+) Java Developers (tar.gz)
 * JDK 1.6u26+ (bin - self extracting)
 * Apache Maven 3.0.3+ (zip)

Run [create-Mifos-WS-basic.sh](https://github.com/ugupta/mifos-dev/blob/master/create-Mifos-WS-basic.sh)

__NOTE__ : READ the script, setup the environment and check/update the software versions before executing

I keep everything under ~/Projects/Mifos/ws-master/
 maven, jdk, eclipse etc.

I need different environment for different projects (apart from Mifos) that's why I avoid setting up global configuration (including jdk). But you can save space by configuring things in a different way.

Set Maven3 to your path (read maven documentation)

and run "mvn clean install -Dmaven.test.skip=true". This will take a while, maven will try to download the whole internet :)

Eclipse Setup
-------------
Setup JDK path in eclipse/eclipse.ini

    --launcher.defaultAction
    openFile
    -vm
    ../jdk1.6.0_25/bin/java
    -vmargs
    -Dosgi.requiredJavaVersion=1.5

Open eclipse and set ws-master/workspace as the workspace and check remember option.

Disable "Build Automatically"

Import Mifos into Project Workspace, let m2eclipse resolve dependencies and then enable "Build Automatically".

Use Project -> clean... (if dependency resolution doesn't work, red error markers should be gone)

Import Eclipse [Code formatter](https://github.com/mifos/head/blob/master/eclipse-formatter-mifos-profile.xml)

Setup Whitespace and Save Actions (Eclipse 3.7 Menu) (Optional)

- Window -> Preferences -> General -> Editors -> Text Editors
 * Check - Insert spaces for tabs
 * Check - Show whitespace charaters (open link uncheck all except tabs, this will help in detecting tabs in your code)

- Window -> Preferences -> Java -> Editor -> Save Actions
 * Check - Perform the selected actions on save
 * Uncheck - Format source code
 * Uncheck - Organize Imports
 * Check - Additional actions
 * Configure - Uncheck everything, check "Remove trailing whitespace", "Remove unused imports", "Remove unnecessary cast"

__NOTE:__ Don't make these configuration using project specific settings, it should be your workspace configuration only, workspace configuration applies to all the projects.

Put [local.properties](https://github.com/ugupta/mifos-dev/blob/master/local.properties) under ~/.mifos

~/.mifos/local.properties (~/ is $HOME)

I keep some [scripts](https://github.com/ugupta/mifos-dev/tree/master/scripts) to setup Mifos database.
copy script folder to ws-master and test scripts

scripts/database-acceptance.sh

Run **Mifos START 8080.launch** (mifos-server-workspace)

Further Reading
--------------
 * [Mifos Workspace 2.0](http://mifosforge.jira.com/wiki/display/MIFOS/Workspace+2.0+Eclipse+Maven+Settings)
 * [MySQL on RAM for Faster development](http://mifosforge.jira.com/wiki/display/MIFOS/RAMDisk)
 * [Maven Settings](http://mifosforge.jira.com/wiki/display/MIFOS/Workspace+2.0+Eclipse+Maven+Settings)

ARCH
----
 * [Modules](http://mifosforge.jira.com/wiki/display/MIFOS/Elsie+F+Architecture)
 * [Introduction](http://mifosforge.jira.com/wiki/display/MIFOS/Introduction+to+Mifos+for+Programmers)

Infrastructure : JIRA and Hudson and sf.net
-------------------------------------------
 * How to pick a Issues (search jira)
   * JIRA issue types
   * JIRA components
   * Volunteer Issues
   * Hudson builds (http://ci.mifos.org/hudson)
 
 Create accounts on JIRA, Hudson and [sf.net](http://sourceforge.net/projects/mifos)
   * Browse sf.net
 

 * [Code Submission](http://mifosforge.jira.com/wiki/display/MIFOS/Code+Submission+Process#CodeSubmissionProcess-Howtosubmitapatch)

More
----
 * [http://mifosforge.jira.com/wiki/display/MIFOS/2011+Product+Planning](http://mifosforge.jira.com/wiki/display/MIFOS/2011+Product+Planning)
 * [http://mifosforge.jira.com/wiki/display/MIFOS/MIFOS+QA+Technology+Plan](http://mifosforge.jira.com/wiki/display/MIFOS/MIFOS+QA+Technology+Plan)

