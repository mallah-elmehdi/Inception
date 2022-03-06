#!/bin/bash

# INSTALL TOOLS
apt-get update
apt-get install -y mariadb-client php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath curl wget

# UPDATE CONFIG
mv www.conf /etc/php/7.3/fpm/pool.d

# INSTALL WP CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# INSTALL WORDPRESS
wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
mkdir -p /var/www/html
mv wordpress/* /var/www/html
rm -f latest.tar.gz
rm -f /var/www/html/index.html