#!/bin/bash

ZK_VERSION=3.4.9
ZK_HOME=/opt/zookeeper-${ZK_VERSION}
ZK_WORK=/srv/zookeeper

cp=${ZK_HOME}/zookeeper-${ZK_VERSION}.jar:${ZK_HOME}/lib/jline-0.9.94.jar:${ZK_HOME}/lib/slf4j-api-1.6.1.jar:${ZK_HOME}/lib/slf4j-log4j12-1.6.1.jar:${ZK_HOME}/lib/log4j-1.2.16.jar

myid=$(ip -o addr show | fgrep "scope global" | sed -r "s/[ \t]+/ /g" | cut -d" " -f4 | cut -d/ -f1 | cut -d. -f4)

echo $myid > ${ZK_WORK}/data/myid

echo "Starting ZooKeeper..."
java -cp ${cp} org.apache.zookeeper.server.quorum.QuorumPeerMain ${ZK_WORK}/conf/netzk.cfg
