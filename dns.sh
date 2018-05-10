#!/bin/bash

#DNS
yum install bind bind-tools -y
systemctl enable named
systemctl start named
firewall-cmd --permanent --zone=public --add-service=dns
