Minimalist KDE Desktop

* KDE5 Plasma Desktop (minimal set of applications)
* System administration: systemsettings


### Usage

Create a function like shown below:

    function docker_stretch_kde_minimal {
      # You may or may not have TightVNC already installed and kicking in your host computer.
      # In a clean setup, you should not. However, you may be in a transitioning state which
      # implies that your host computer still have a lot of things installed which should not
      # be installed in a clean container host. In this case, we should employ something
      # different from the default port 5901.
      XRDP_PORT=55901

      docker run -it --rm \
                 -p ${XRDP_PORT}:5901 \
                 -v ${HOME}/Documents:/root/Documents \
                 -v ${HOME}/Media:/root/Media \
                 rgomes/stretch-kde-minimal
    }

and then call it:

    docker_stretch_kde_minimal
