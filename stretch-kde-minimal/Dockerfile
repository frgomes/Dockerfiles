FROM rgomes/stretch-xrdp

MAINTAINER Richard Gomes - http://github.com/frgomes

RUN apt-get install -y kde-plasma-desktop systemsettings

VOLUME /root/Documents
VOLUME /root/Media

COPY +supervisord.conf /tmp
RUN cat /tmp/+supervisord.conf >> /etc/supervisor/conf.d/supervisord.conf
RUN echo "/usr/bin/startkde" >> /root/.bashrc

CMD ["/usr/bin/supervisord","-n"]
