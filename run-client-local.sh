#!/bin/bash
if [[ $# -ne 1 ]]; then
   topic="TP.FINACC.LATEST.TMP"
   echo "sdefault topic set to: [$topic]"
else
   topic=$1
   echo "setting topic to param: [$topic]"
fi
/Users/ek5990/Documents/kafka_2.12-2.3.0/bin/kafka-console-consumer.sh --bootstrap-server "localhost:9092" --topic $topic --group finacckafkaapi_tmp