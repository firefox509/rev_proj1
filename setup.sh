#!/bin/bash
#Install basic necessities
yum update -y
yum install epel-release -y
yum install vim -y
yum install wget -y
yum install net-tools -y
yum install gcc -y
yum install zlib-devel -y
yum install openssl-devel -y
yum install git -y
yum install unzip zip -y
yum install mailx -y

#Install Python 3.6.5
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz
tar xf Python-3.6.5.tar.xz
cd Python-3.6.5
./configure --prefix=/opt/python
make
make install
cd ../
ln -s /opt/python/bin/python3 /bin/python3
ln -s /opt/python/bin/pip3 /bin/pip3
rm -f Python-3.6.5.tar.xz



python3 setup.py

echo "0 0 * * 7 root /root/report.txt" >> /etc/crontab
