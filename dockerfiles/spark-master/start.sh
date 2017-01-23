#!/bin/bash

# Strict mode
set -euo pipefail

echo "spark.deploy.recoveryDirectory ${SPARK_RECOVERY_DIR}" >> $SPARK_HOME/conf/spark-defaults.conf

mkdir -p $SPARK_RECOVERY_DIR

$SPARK_HOME/bin/spark-class org.apache.spark.deploy.master.Master --webui-port 8080
