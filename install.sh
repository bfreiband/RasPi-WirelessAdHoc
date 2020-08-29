#!/bin/bash

echo "Copying files"
cp full_conf_files/dhcpd.conf /etc/dhcp/
cp full_conf_files/rc.local /etc/
cp full_conf_files/interfaces /etc/network/
cp full_conf_files/isc-dhcp-server /etc/default/
echo "Process complete"
