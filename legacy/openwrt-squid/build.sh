#!/bin/bash

[[ $( docker images | fgrep openwrt-x86-generic-rootfs > /dev/null; echo $? ) == 1 ]] && {
  docker import https://downloads.openwrt.org/chaos_calmer/15.05.1/x86/64/openwrt-15.05.1-x86-64-rootfs.tar.gz openwrt-x86-generic-rootfs:latest
}

docker build -t rgomes/openwrt-squid .
