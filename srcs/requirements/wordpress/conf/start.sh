# !/bin/bash
sleep 10
service php7.3-fpm start
#service php7.3-fpm stop
#php-fpm7.3 -F
wp config create --path=/var/www/html --dbname=website --dbuser=emallah --dbpass=123456 --dbhost=localhost --allow-root 
tail -f /dev/null