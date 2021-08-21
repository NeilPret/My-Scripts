#!/bin/bash

#get info about networking from the ifconfig command
net_info="$(ifconfig)"
#parse out the ip address line using sed
addresses=$(echo "$net_info" | sed -n '/inet/{
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroadcast Address:/

p

}')
#format output
echo -e "Ip addresses on this computer are:\n$addresses"