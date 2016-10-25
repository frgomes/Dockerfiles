FROM debian:sid

MAINTAINER Richard Gomes - http://github.com/frgomes

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends && \
    echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends && \
    sed -i.bak 's/sid main/sid main contrib non-free/g' /etc/apt/sources.list
    
RUN apt-get update
RUN apt-get install -y -qq sudo
RUN apt-get install -y -qq locales
RUN apt-get install -y -qq nano vim zile 
RUN apt-get install -y -qq zip unzip gzip bzip2 xz-utils 
RUN apt-get install -y -qq wget curl net-tools ca-certificates
RUN apt-get install -y -qq python-minimal

RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

RUN apt-get clean -y

ENV DEBIAN_FRONTEND="noninteractive"
ENV HOME="/root" TERM="xterm" LC_ALL="C.UTF-8"

RUN apt-get update
