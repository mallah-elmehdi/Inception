#!/bin/bash

# INSTALL TOOLS
apt update
apt install -y php libapache2-mod-php php-mysql php-fpm wget curl mariadb-client

# UPDATE CONFIG
mv www.conf /etc/php/7.3/fpm/pool.d
#mv wp-config.php /var/www/html

# INSTALL WP CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# INSTALL WORDPRESS
cd /var/www/html
wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
mv wordpress/* ./
rm -f latest.tar.gz
rm index.html