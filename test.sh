#!/bin/sh

printf "network:\n  renderer: networkd\n  version: 2\n  ethernets:\n    enp1s0:\n      dhcp4: true\n    enp2s0:\n      dhcp4: true" > /etc/netplan/rescue.yaml
netplan generate
netplan apply

ip a
