#!/bin/bash

cwd=$(dirname $(test -L "$BASH_SOURCE" && readlink -f "$BASH_SOURCE" || echo "$BASH_SOURCE"))
dir=$(readlink -f $cwd)
name=$(basename $(readlink -f $dir))

tag=rgomes/${name}

if [ !f ${dir}/resources/turbovnc_2.1_amd64.deb ] ;then
  wget http://heanet.dl.sourceforge.net/project/turbovnc/2.1/turbovnc_2.1_amd64.deb -O ${dir}/resources/turbovnc_2.1_amd64.deb
fi
if [ !f ${dir}/resources/turbovnc_2.1_amd64.deb ] ;then
  echo ERROR: Failed to download turbovnc_2.1_amd64.deb
else
  docker build -t ${tag} $dir
fi
