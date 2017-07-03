#!/bin/bash

function torch7_clone_distro {
    if [ ! -d ${TARGET}/torch7-folders/distro ] ;then
        mkdir -p ${TARGET}/torch7-folders
        pushd ${TARGET}/torch7-folders
        git clone http://github.com/torch/distro.git distro --recursive
        popd
    else
        pushd ${TARGET}/torch7-folders/distro
        source admin/updateSubmodules.sh
        popd
    fi
}

function torch7_clone_iTorch {
    if [ ! -d ${TARGET}/torch7-folders/iTorch ] ;then
        mkdir -p ${TARGET}/torch7-folders
        pushd ${TARGET}/torch7-folders
        git clone http://github.com/facebook/iTorch
        popd
    else
        pushd ${TARGET}/torch7-folders/iTorch
        git pull
        popd
    fi
}

function torch7_clone {
  torch7_clone_distro && torch7_clone_iTorch
}


torch7_clone
