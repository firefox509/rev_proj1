#!/bin/bash

echo "Login records:" > report.txt
lastlog | grep -v "Never" >> report.txt

echo "" >> report.txt
echo "Most recent connections:" >> report.txt
last -n 20 >> report.txt

echo "" >> report.txt
echo "Root login and sudo records:" >> report.txt
awk '/sudo|root/ {print $0}' /var/log/secure* >> report.txt

echo "" >> report.txt
echo "Apache Webserver access logs:" >> report.txt
awk '/GET \/ HTTP/ {print $0}' /etc/httpd/logs/access* >> report.txt

echo "" >> report.txt
echo "Apache Webserver error logs:" >> report.txt
cat /etc/httpd/logs/error* >> report.txt

echo "" >> report.txt
echo "Disk Usage:" >> report.txt
df -h >> report.txt

sendmail root < report.txt
rm report.txt
