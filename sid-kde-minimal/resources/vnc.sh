#!/bin/bash

[[ ! -d /root/.vnc ]] && mkdir /root/.vnc

echo password | /opt/TurboVNC/bin/vncpasswd -f -t
/opt/TurboVNC/bin/vncserver :1 -geometry 1920x1280 -depth 24 && tail -F /root/.vnc/*.log
