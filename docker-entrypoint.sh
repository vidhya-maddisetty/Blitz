#!/bin/bash
trac-admin /opt/TRAC initenv  TRAC  mysql://root:mysql@test_db_1/trac
tracd --port 8098 /opt/TRAC
