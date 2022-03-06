# !/bin/bash
sleep 5
service php7.3-fpm start

# CREATE THE CONFIG FILE
wp config create --path="/var/www/html" --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=mariadb --allow-root

# INSTALL THE SITE
wp core install --path="/var/www/html" --url=$WP_URL --title="emallah website" --admin_name=$WP_USER --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL --allow-root

# CREAT USERS
wp user create  $USER1_NAME $USER1_EMAIL --role=$USER1_ROLE --user_pass=$USER1_PASSWORD --path=/var/www/html --allow-root
wp user create  $USER2_NAME $USER2_EMAIL --role=$USER2_ROLE --user_pass=$USER2_PASSWORD --path=/var/www/html --allow-root

service php7.3-fpm stop
php-fpm7.3 -F