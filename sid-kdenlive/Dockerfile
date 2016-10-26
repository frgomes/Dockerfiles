FROM rgomes/sid-kde-minimal

MAINTAINER Richard Gomes - http://github.com/frgomes

VOLUME /root/kdenlive

RUN apt-get install -y kdenlive vlc dvdauthor genisoimage

ENTRYPOINT [ "/root/vnc.sh" ]
