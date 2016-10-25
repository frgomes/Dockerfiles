FROM rgomes/stretch-base

MAINTAINER Richard Gomes - http://github.com/frgomes

RUN apt-get install -y kde-plasma-desktop systemsettings

VOLUME /root/Documents
VOLUME /root/Media

ENV USER=root
WORKDIR /root

RUN apt-get install -y tightvncserver
RUN apt-get install -y xfonts-base xfonts-75dpi xfonts-100dpi

RUN mkdir -p /root/.vnc /tmp/${USER}-vnc; echo password | vncpasswd -f > /tmp/root-vnc/passwd
COPY resources/xstartup /root/.vnc
COPY resources/vnc.sh /root/vnc.sh

EXPOSE 5901

CMD ["/root/vnc.sh"]
