FROM debian:jessie

MAINTAINER Richard Gomes <rgomes.info@gmail.com>

COPY etc/apt/sources.list /etc/apt/sources.list
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list

WORKDIR /root

# Install Torch7
RUN apt-get update
RUN apt-get install -y -t jessie-backports sudo curl wget git mercurial -y
RUN apt-get install -y -t jessie-backports software-properties-common libzmq3-dev libssl-dev python-zmq
RUN curl -s https://raw.githubusercontent.com/frgomes/docker-scripts/master/jessie-torch7/scripts/install-all | sudo bash

# Install miniconda
ENV CONDA_DOWNLOAD_SCRIPT=Miniconda3-latest-Linux-x86_64.sh CONDA_DIR=/opt/conda
RUN wget -q https://repo.continuum.io/miniconda/$CONDA_DOWNLOAD_SCRIPT && \
    bash $CONDA_DOWNLOAD_SCRIPT -b -p $CONDA_DIR && \
    rm $CONDA_DOWNLOAD_SCRIPT
ENV PATH=$CONDA_DIR/bin:$PATH

# Install jupyter
RUN conda install -y jupyter

# Install iTorch
RUN git clone https://github.com/facebook/iTorch.git && \
    cd iTorch && \
    luarocks make

# Launch iTorch
WORKDIR /root/workspace
CMD ["itorch", "notebook", "--ip=0.0.0.0", "--no-browser"]
