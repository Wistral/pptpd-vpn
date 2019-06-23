#!/bin/bash
apt-get update
apt-get install pptpd iptables -y
cp pptpd.conf /etc/pptpd.conf
cp pptpd-options /etc/ppp/pptpd-options
cp chap-secrets /etc/ppp/chap-secrets
cp sysctl.conf /etc/sysctl.conf
#sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
sysctl -p
ln -s $(pwd)/rc.pptpd /etc/init.d/hfut-vpn
update-rc.d hfut-vpn defaults 9
service pptpd restart
