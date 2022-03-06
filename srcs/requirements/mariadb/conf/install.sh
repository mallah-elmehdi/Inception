#!/bin/bash
apt-get update
apt-get -y install mariadb-server
mv 50-server.cnf /etc/mysql/mariadb.conf.d
