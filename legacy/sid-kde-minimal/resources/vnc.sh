#!/bin/bash

export HOME=/root
export PATH=${PATH}:/opt/TurboVNC/bin

/opt/TurboVNC/bin/vncserver :1 -geometry 1920x1280 -depth 24 && tail -F /root/.vnc/*.log
