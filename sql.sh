#!/bin/bash

#SQL
yum install -y mariadb mariadb-server php-mysql
systemctl enable mariadb
systemctl start mariadb
mysql_secure_installation
