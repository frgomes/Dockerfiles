#---------------------------------------------------------
FROM debian:stretch
MAINTAINER Richard Gomes - http://github.com/frgomes
ENV DEBIAN_NAME="stretch"
ENV DEBIAN_FRONTEND="noninteractive"
ENV TERM="xterm" LC_ALL="C.UTF-8"
ENV USER="root" HOME="/root"
#---------------------------------------------------------
RUN apt-get update
