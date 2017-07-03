#!/bin/bash

function x2go_chpasswd {
    ### local PASS=$(pwgen -s 12 1)
    local PASS=x2go
    echo "x2go:$PASS" | chpasswd
    
    echo "=================================================================="
    echo " You can now connect to this container via SSH using              "
    echo "                                                                  "
    echo "    ssh -p <port> x2go@<host>                                     "
    echo "                                                                  "
    echo " and enter password '$PASS' when prompted.                        "
    echo "                                                                  "
    echo " Please REMEMBER TO CHANGE the above password as soon as possible!"
    echo "                                                                  "
    echo " More info on how to install x2go client and how to connect:      "
    echo "     http://wiki.x2go.org/doku.php/doc:installation:x2goclient    "
    echo "=================================================================="
}
x2go_chpasswd

mkdir -p /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix
mkdir -p /var/run/dbus
dbus-daemon --system --fork

exec /usr/sbin/sshd -D
