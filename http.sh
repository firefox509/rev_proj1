#!/bin/bash
#HTTP
yum install httpd.x86_64 -y
systemctl enable httpd
systemctl start httpd
cd /var/www/html
wget https://codepen.io/nathangath/share/zip/RgvzVY
unzip RgvzVY && rm RgvzVY
firewall-cmd --permanent --zone=public --add-service=http
cd ~

