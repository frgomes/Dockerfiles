FROM rgomes/stretch-base

MAINTAINER Richard Gomes - http://github.com/frgomes

RUN apt-get install -y kde-plasma-desktop systemsettings

RUN apt-get install -y tightvncserver
RUN mkdir /tmp/root-vnc; echo password | vncpasswd -f > /tmp/root-vnc/passwd

EXPOSE 5901

VOLUME /root/Documents
VOLUME /root/Media

# Copy VNC script that handles restarts
COPY resources/vnc.sh /root
CMD ["/root/vnc.sh"]
