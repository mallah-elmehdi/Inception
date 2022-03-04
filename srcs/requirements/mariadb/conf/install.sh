#!/bin/bash
apt update
apt -y install mariadb-server
mv 50-server.cnf /etc/mysql/mariadb.conf.d