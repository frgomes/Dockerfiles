Full KDE Desktop

* KDE5 Plasma Desktop (complete compilation for end users)


### Usage

Create a function like shown below:

    function docker_stretch_kde_full {
      # You may or may not have a xrdp already installed and kicking in your host computer.
      # In a clean setup, you should not. However, you may be in a transitioning state which
      # implies that your host computer still have a lot of things installed which should not
      # be installed in a clean container host. In this case, we should employ something
      # different from the default port 3389.
      XRDP_PORT=53389

      docker run -it --rm \
                 -p ${XRDP_PORT}:3389 \
                 -v ${HOME}/Documents:/root/Documents \
                 -v ${HOME}/Media:/root/Media \
                 rgomes/stretch-kde-full
    }

and then call it:

    docker_stretch_kde_full
