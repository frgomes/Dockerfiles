#!/bin/bash

source ${HOME}/sources/torch7/install/bin/torch-activate

[[ ! -d /root/workspace/jupyter-notebooks ]] && mkdir -p /root/workspace/jupyter-notebooks
cd /root/workspace/jupyter-notebooks
itorch notebook --ip=0.0.0.0 --no-browser

exit
