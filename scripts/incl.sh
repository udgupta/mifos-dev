export MIFOS_HOME=~/Projects/Mifos/ws-master;
export SRC=$MIFOS_HOME/workspace/head/db/src;
export PARAM="-h 127.0.0.1 -u mifos -pmifos";
export PARAMS=$PARAM'  -D mifos';

mysql $PARAM < $MIFOS_HOME/scripts/acceptance_test_db.sql
