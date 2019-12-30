#!/bin/bash

if [[ $# -ne 1 ]]; then
   topic="TP.FINACC.LATEST.TMP"
   echo "sdefault topic set to: [$topic]"
else
   topic=$1
   echo "setting topic to param: [$topic]"
fi

export KAFKA_OPTS="-Djava.security.auth.login.config=/Users/ek5990/sample4/personFinancialAccounts-1/persfinacct-springboot/src/main/resources/config/local/localpkafka_jaas.conf -Djava.security.krb5.conf=/Users/ek5990/sample4/personFinancialAccounts-1/persfinacct-springboot/src/main/resources/config/dev/krb5.conf -Djavax.security.auth.useSubjectCredsOnly=true"

/Users/ek5990/Documents/kafka_2.12-2.3.0/bin/kafka-console-consumer.sh --bootstrap-server "ch3dr030109.express-scripts.com:9092,ch3dr030110.express-scripts.com:9092,ch3dr030111.express-scripts.com:9092,ch3dr030112.express-scripts.com:9092,ch3dr030113.express-scripts.com:9092,ch3dr030114.express-scripts.com:9092" --topic TP.FINACC.LATEST --group finacckafkaapi --consumer.config ./client-ssl.properties

