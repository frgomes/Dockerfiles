#---------------------------------------------------------
FROM debian:jessie
MAINTAINER Richard Gomes - http://github.com/frgomes
ENV DEBIAN_NAME="jessie"
ENV DEBIAN_FRONTEND="noninteractive"
ENV TERM="xterm" LC_ALL="C.UTF-8"
ENV USER="root" HOME="/root"
#---------------------------------------------------------
RUN echo "deb http://http.debian.net/debian/ jessie-backports main" > /etc/apt/sources.list.d/backports.list \
 && apt-get update \
 && apt-get dist-upgrade -y
