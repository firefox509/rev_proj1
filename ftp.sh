#!/bin/bash

#FTP Server
yum install vsftpd -y
echo "anon_world_readable_only=YES" >> /etc/vsftpd/vsftpd.conf
systemctl enable vsftpd
systemctl start vsftpd
firewall-cmd --permanent --zone=public --add-service=ftp

