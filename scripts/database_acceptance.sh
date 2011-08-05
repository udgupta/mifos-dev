#!/bin/bash

source incl.sh

mysql  $PARAMS < $SRC/test/resources/sql/acceptance_test_dump.sql
mysql  $PARAMS < $SRC/main/resources/sql/init_mifos_password.sql
