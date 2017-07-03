RUN pip3 install --upgrade jupyter \
  && sudo curl -L -o /usr/local/bin/coursier https://git.io/vgvpD \
    && sudo chmod 755 /usr/local/bin/coursier && /usr/local/bin/coursier --help \
      && curl -L -o /tmp/jupyter-scala https://raw.githubusercontent.com/alexarchambault/jupyter-scala/master/jupyter-scala \
        && chmod +x /tmp/jupyter-scala \
          && /tmp/jupyter-scala --force
