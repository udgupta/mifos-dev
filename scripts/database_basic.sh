#!/bin/bash

source incl.sh

export MAIN_SRC=$SRC/main/resources/sql

mysql  $PARAMS < $MAIN_SRC/base-schema.sql
mysql  $PARAMS < $MAIN_SRC/base-data.sql
mysql  $PARAMS < $MAIN_SRC/init_mifos_password.sql

