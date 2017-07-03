# Copy folder from symlinks in tmp area to container
RUN mkdir -p /root/sources
COPY TARGET/torch7-folders/distro /root/sources/distro
COPY TARGET/torch7-folders/iTorch /root/sources/iTorch

# Install dependencies
RUN /root/sources/distro/install-deps

# Run Torch7 installation scripts (build from sources)
RUN cd /root/sources/distro \
 && ./install.sh

# Install iTorch
RUN apt-get install -y libzmq3-dev libssl-dev python-zmq luarocks
RUN cd /root/sources/iTorch \
 && luarocks make
