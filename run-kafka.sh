#!/bin/bash

set -e

if [[  -z $BROKER_ID ]]; then
    export BROKER_ID="$(cut -d "-" -f 2 /etc/hostname)";
fi

if [[ -z $ZOOKEEPER_CONNECT ]]; then
    export ZOOKEEPER_CONNECT="localhost:2181"
fi

exec /home/jboss/kafka_2.11-1.0.0/bin/kafka-server-start.sh /home/jboss/kafka_2.11-1.0.0/config/server.properties --override log.dirs=$KAFKA_LOGS_DIR --override broker.id=$BROKER_ID --override zookeeper.connect=$ZOOKEEPER_CONNECT
