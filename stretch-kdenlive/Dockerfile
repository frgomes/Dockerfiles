FROM rgomes/stretch-kde-minimal

MAINTAINER Richard Gomes - http://github.com/frgomes

RUN apt-get install -y kdenlive vlc dvdauthor genisoimage

VOLUME /root/kdenlive

CMD ["/usr/bin/supervisord","-n"]
