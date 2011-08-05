#!/bin/bash

source incl.sh

mysql  $PARAMS < $SRC/main/resources/sql/base-schema.sql
mysql  $PARAMS < $SRC/main/resources/sql/base-data.sql
mysql  $PARAMS < $SRC/main/resources/sql/init_mifos_password.sql
mysql  $PARAMS < $SRC/test/resources/sql/integration_test_data.sql
