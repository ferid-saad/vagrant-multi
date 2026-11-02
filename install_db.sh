#!/bin/bash
apt-get update -y
apt-get install -y mysql-server

mysql -e "CREATE DATABASE tp_vagrant;"
mysql -e "CREATE USER 'vagrant'@'%' IDENTIFIED BY 'vagrant';"
mysql -e "GRANT ALL PRIVILEGES ON tp_vagrant.* TO 'vagrant'@'%';"
mysql -e "FLUSH PRIVILEGES;"

sed -i 's/^bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
systemctl restart mysql
