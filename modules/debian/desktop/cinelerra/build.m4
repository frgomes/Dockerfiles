# NOTE: This will install Cinelerra-CV or Cinelerra-HV, depending on Debian release.
RUN release=$(lsb_release --codename --short) \
 && echo "deb http://www.deb-multimedia.org ${release} main non-free" > /etc/apt/sources.list.d/deb-multimedia.list \
 && apt-get update \
 && apt-get install -y --allow-unauthenticated deb-multimedia-keyring \
 && apt-get update \
 && apt-get install -y --allow-unauthenticated cinelerra
