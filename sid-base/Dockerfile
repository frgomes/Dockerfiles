FROM debian:sid

MAINTAINER Richard Gomes - http://github.com/frgomes

ENV DEBIAN_NAME="stretch" USER="root" HOME="/root" DEBIAN_FRONTEND="noninteractive"

RUN echo "APT::Install-Recommends 0;" >> /etc/apt/apt.conf.d/01norecommends \
 && echo "APT::Install-Suggests 0;" >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && apt-get install -y -qq sudo \
 && apt-get install -y -qq locales \
 && apt-get install -y -qq nano vim zile  \
 && apt-get install -y -qq zip unzip gzip bzip2 xz-utils  \
 && apt-get install -y -qq wget curl net-tools ca-certificates \
 && apt-get install -y -qq less \
 && apt-get install -y -qq python-minimal \
 && dpkg-reconfigure locales \
 && locale-gen C.UTF-8 \
 && /usr/sbin/update-locale LANG=C.UTF-8 \
 && apt-get clean -y

ENV TERM="xterm" LC_ALL="C.UTF-8"

CMD ["/bin/bash"]
