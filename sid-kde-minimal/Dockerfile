FROM rgomes/sid-base

MAINTAINER Richard Gomes - http://github.com/frgomes

# see: http://www.turbovnc.org
# see: http://www.virtualgl.org

RUN apt-get install -y kde-plasma-desktop systemsettings

VOLUME /root/Documents
VOLUME /root/Media

WORKDIR /root

RUN apt-get install -y vnc4server xfonts-base xfonts-75dpi xfonts-100dpi xfonts-scalable

COPY resources/turbovnc_2.1_amd64.deb /tmp
RUN dpkg -i /tmp/turbovnc_2.1_amd64.deb

RUN mkdir /root/.vnc
COPY resources/xstartup /root/.vnc/xstartup
COPY resources/passwd   /root/.vnc/passwd
COPY resources/vnc.sh   /root/vnc.sh

EXPOSE 5901

ENTRYPOINT /root/vnc.sh
