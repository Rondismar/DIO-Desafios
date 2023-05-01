#!/bin/bash

echo Update server and install apache2 and unzip
apt-get update && apt upgrade -y
apt-get install -y apache2 unzip

echo download from site to tmp directory, extract and copy to /var/www/html
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip  
cd /main
cp -Rf * /var/www/html
