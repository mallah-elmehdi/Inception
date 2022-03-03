#!/bin/bash
apt update
apt install -y php libapache2-mod-php php-mysql php-fpm wget
mv www.conf /etc/php/7.3/fpm/pool.d
cd /var/www/html
wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
mv wordpress/* ./
rm -f latest.tar.gz
rm index.html
mv wp-config-sample.php wp-config.php