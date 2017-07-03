#!/bin/bash -x

cwd=$(dirname $(test -L "$BASH_SOURCE" && readlink -f "$BASH_SOURCE" || echo "$BASH_SOURCE"))
dir=$(readlink -f $cwd)
name=$(basename $(readlink -f $dir))

tag=rgomes/${name}

args=$*

function clone_torch7 {
  [[ ! -d $HOME/sources/github.com/torch ]] && mkdir -p $HOME/sources/github.com/torch
  pushd $HOME/sources/github.com/torch
  if [ -d distro ] ;then
    cd distro
    if [ $args == "fetch" ] ;then
      git fetch --all --recurse-submodules
    fi
  else
    git clone https://github.com/torch/distro.git --recursive
  fi
  popd
}

function clone_itorch {
  [[ ! -d $HOME/sources/github.com/facebook ]] && mkdir -p $HOME/sources/github.com/facebook
  pushd $HOME/sources/github.com/facebook
  if [ -d iTorch ] ;then
    cd iTorch
    if [ $args == "fetch" ] ;then
      git fetch --all --recurse-submodules
    fi
  else
    git clone https://github.com/facebook/iTorch.git --recursive
  fi
  popd
}

function build_jessie_torch7 {
  # symlinks are not allowed as per https://github.com/docker/docker/issues/1676
  mv $HOME/sources/github.com/torch/distro    torch7
  mv $HOME/sources/github.com/facebook/iTorch itorch
  docker build -t ${tag} ${dir}
  mv torch7 $HOME/sources/github.com/torch/distro
  mv itorch $HOME/sources/github.com/facebook/iTorch
}

clone_torch7 && clone_itorch && build_jessie_torch7
