# Install Clang and libraries needed by Scala Native
RUN apt-get install -y clang-3.8 clang-3.8-dev \
 && apt-get install -y libunwind-dev libgc-dev libre2-dev

# Install SBT
RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list \
 && sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 \
 && sudo apt-get update \
 && sudo apt-get install -y sbt
