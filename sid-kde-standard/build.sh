#!/bin/bash

cwd=$(dirname $(test -L "$BASH_SOURCE" && readlink -f "$BASH_SOURCE" || echo "$BASH_SOURCE"))
dir=$(readlink -f $cwd)
name=$(basename $(readlink -f $dir))

tag=rgomes/${name}

docker build -t ${tag} $dir
