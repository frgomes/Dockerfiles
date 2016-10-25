#!/bin/bash

# Remove VNC lock (if process already killed)
rm /tmp/.X1-lock /tmp/.X11-unix/X1

# Run VNC server with tail in the foreground
export USER=root
vncserver :1 -geometry 1920x1280 -depth 24 && tail -F /root/.vnc/*.log
