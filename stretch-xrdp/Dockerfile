FROM rgomes/stretch-base

MAINTAINER Richard Gomes - http://github.com/frgomes

# CREDITS: https://github.com/csmarosi/dockerFiles/blob/master/xrdp_base/Dockerfile

RUN apt-get install --no-install-recommends -y -q \
        git \
        rxvt-unicode-lite ratpoison \
        libssl-dev libpam0g-dev libx11-dev libxfixes-dev libxrandr-dev \
        python-libxml2 \
        xfonts-utils \
        procps

# For a smaller image, remove build tools & artifacts after compilation.
RUN apt-get install --no-install-recommends -y -q \
        build-essential patch make autoconf automake libtool pkg-config \
        bzip2 xsltproc flex bison g++ gettext libxml-sax-expat-perl

RUN cd /opt && \
    git clone --recursive https://github.com/neutrinolabs/xrdp.git

RUN cd /opt/xrdp && \
    ./bootstrap && \
    ./configure && \
    make && \
    make install && \
    xrdp-keygen xrdp auto && \
    cp instfiles/pam.d/xrdp-sesman.other /etc/pam.d/xrdp-sesman && \
    cd /opt/xrdp/xorg/X11R7.6 && \
    ./buildx.sh /opt/X11rdp && \
    ln -s /opt/X11rdp/bin/X11rdp /usr/local/bin/X11rdp && \
    cp /etc/xrdp/xrdp.sh /etc/init.d/

RUN cd / && rm -rf /opt/xrdp

RUN apt-get remove -yq \
        git build-essential patch make autoconf automake libtool pkg-config \
        xsltproc flex bison g++ gettext libxml-sax-expat-perl && \
    apt-get autoremove -yq && \
    apt-get clean

RUN echo 'ALL ALL=NOPASSWD:ALL' > /etc/sudoers.d/allSudo && \
    echo 'root:root' | chpasswd

RUN apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN echo "service xrdp start" >> /root/.bashrc
EXPOSE 3389

CMD ["/usr/bin/supervisord","-n"]
