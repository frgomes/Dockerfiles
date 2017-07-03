RUN mkdir -p /opt && cd /opt \
 && curl http://www-us.apache.org/dist/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz | tar xzf -

RUN mkdir -p /srv/zookeeper/data /srv/zookeeper/logs
ADD /modules/debian/console/zookeeper/files /srv/zookeeper
