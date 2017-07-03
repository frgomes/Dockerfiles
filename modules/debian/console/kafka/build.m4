RUN mkdir -p /opt && cd /opt \
 && curl http://www-us.apache.org/dist/kafka/0.10.1.1/kafka_2.11-0.10.1.1.tgz | tar xzf -

RUN mkdir -p /srv/kafka/data /srv/kafka/logs
ADD /modules/debian/console/kafka/files /srv/kafka
