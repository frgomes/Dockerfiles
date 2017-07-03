Tools for video editing

* kdenlive, vlc, dvdauthor, genisoimage


### Usage

Create a function like shown below:

    function docker_sid_kdenlive {
      # You may or may not have VNC already installed and kicking in your host computer.
      # In a clean setup, you should not. However, you may be in a transitioning state which
      # implies that your host computer still have a lot of things installed which should not
      # be installed in a clean container host. In this case, we should employ something
      # different from the default port 5901.
      XRDP_PORT=55901

      [[ ! -d $HOME/kdenlive ]] && mkdir -p $HOME/kdenlive

      docker run -it --rm \
                 -p ${XRDP_PORT}:5901 \
                 -v ${HOME}/kdenlive:/root/kdenlive \
                 -v ${HOME}/Documents:/root/Documents \
                 -v ${HOME}/Media:/root/Media \
                 rgomes/sid-kdenlive
    }

and then call it:

    $ docker_sid_kdenlive
    $ /opt/TurboVNC/bin/vncviewer localhost:55901


### Requirements

Make sure you install TurboVNC on whatever client machine you would like to use to access your Docker instances.
The commands below install ``vncviewer``:

    $ wget http://heanet.dl.sourceforge.net/project/turbovnc/2.1/turbovnc_2.1_amd64.deb
    $ sudo dpkg -i turbovnc_2.1_amd64.deb

Verify what has been installed:

    $ ls -al /opt/TurboVNC/bin

Consult manual pages:

    $ man -M /opt/TurboVNC/man vncviewer
