#!/bin/bash

KAFKA_DIR=~/kafka_2.13-3.7.1

new_tab() {
  osascript <<END
tell application "Terminal"
    activate
    tell application "System Events" to keystroke "t" using {command down}
    delay 0.5
    do script "cd $KAFKA_DIR; $1" in front window
end tell
END
}

new_tab "echo 'Starting ZooKeeper'; bin/zookeeper-server-start.sh config/zookeeper.properties"
sleep 5

new_tab "echo 'Starting Kafka Server'; bin/kafka-server-start.sh config/server.properties"
sleep 5

# new_tab "echo 'Creating Kafka Topic'; bin/kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1"

new_tab "echo 'Starting Kafka Producer'; bin/kafka-console-producer.sh --topic test-topic --bootstrap-server localhost:9092"

new_tab "echo 'Starting Kafka Consumer'; bin/kafka-console-consumer.sh --topic test-topic --bootstrap-server localhost:9092 --from-beginning"