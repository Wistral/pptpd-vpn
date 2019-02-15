#!/bin/bash
sudo apt-get update
sudo apt-get install ssh pptpd iptables -y
sudo cp pptpd.conf /etc/pptpd.conf
sudo cp pptpd-options /etc/ppp/pptpd-options
#在chap-secrets修改账户名和密码
sudo cp chap-secrets /etc/ppp/chap-secrets
sudo cp sysctl.conf /etc/sysctl.conf
#sudo sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
sudo sysctl -p
sudo ./pptpd.rc


