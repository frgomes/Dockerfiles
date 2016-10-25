#!/bin/ash

opkg update
opkg install luci-ssl

/etc/init.d/uhttpd start
/etc/init.d/uhttpd enable
