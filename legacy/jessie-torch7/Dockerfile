FROM debian:jessie

MAINTAINER Richard Gomes - http://github.com/frgomes

COPY etc/apt/sources.list /etc/apt/sources.list
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list

RUN apt-get update
RUN apt-get install -y -t jessie-backports software-properties-common
RUN apt-get install -y -t jessie-backports wget curl zip unzip gzip bzip2 p7zip xz-utils
RUN apt-get install -y -t jessie-backports git mercurial python-pip
RUN apt-get install -y -t jessie-backports sudo

# Run Torch7 installation scripts (dependencies only)
RUN mkdir -p /root/sources
COPY scripts/install-deps /root/sources
RUN /root/sources/install-deps

RUN pip install --upgrade pip
RUN pip install jupyter ipywidgets

# Run Torch7 installation scripts (build from sources)
ADD torch7 /root/sources/torch7
RUN cd /root/sources/torch7 && ./install.sh

# Install iTorch
ADD itorch /root/sources/itorch
RUN cd /root/sources/itorch && \
    . /root/sources/torch7/install/bin/torch-activate && \
    luarocks make

# Launcher script for iTorch
COPY scripts/startup.sh /root

VOLUME /root/Documents
VOLUME /root/Media
VOLUME /root/workspace

CMD [ "/root/startup.sh" ]
