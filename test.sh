#!/bin/sh

printf "network:\n\trenderer: networkd\n\tversion: 2\n\tethernets:\n\t\tenp1s0:\n\t\t\tdhcp4: true\n\t\tenp2s0:\n\t\t\tdhcp4: true" > /etc/netplan/rescue.yaml
netplan generate
netplan apply

ip a
