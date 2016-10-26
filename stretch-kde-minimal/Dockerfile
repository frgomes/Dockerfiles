FROM rgomes/stretch-base

MAINTAINER Richard Gomes - http://github.com/frgomes

ENV USER=root
WORKDIR /root
VOLUME /root/Documents
VOLUME /root/Media

RUN apt-get install -y kde-plasma-desktop \
                       systemsettings \
                       tightvncserver xfonts-base xfonts-75dpi xfonts-100dpi xfonts-scalable

RUN mkdir -p /root/.vnc /tmp/${USER}-vnc; echo password | vncpasswd -f > /tmp/root-vnc/passwd
#COPY resources/xstartup /root/.vnc
#COPY resources/vnc.sh /root/vnc.sh

EXPOSE 5901

#CMD ["/root/vnc.sh"]
CMD ["/bin/bash"]
