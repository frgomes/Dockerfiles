RUN apt-get -y update \
 && apt-get -y install dpkg apt-file apt-transport-https apt-utils \
 && apt-get -y install sudo lsb-release \
                       tree less nano vim zile \
                       zip unzip gzip bzip2 xz-utils bsdtar \
                       wget curl net-tools \
                       gnupg2 ca-certificates \
 && apt-get -y install locales \
 && dpkg-reconfigure locales && locale-gen C.UTF-8 \
 && /usr/sbin/update-locale LANG=C.UTF-8 \
 && apt-get -y clean \
 && apt-file update
