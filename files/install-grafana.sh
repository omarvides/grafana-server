#!/bin/bash
# Enabling epel-release repositories
yum install -y epel-release

# Installing and enabling firewall
yum install firewalld
systemctl enable firewalld

# Adding ssh, http and https firewall rules
firewall-cmd --permanent --zone=public --add-service=http 
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --permanent --zone=public --add-service=ssh
firewall-cmd --reload

# Listing firewall rules
firewall-cmd --list-all

# Installing nginx
yum install -y nginx

# TODO: Configuring nginx

# Installing and enabling Grafana
yum install -y https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.1.4-1.x86_64.rpm
systemctl start grafana-server
chkconfig grafana-server on
