# !/bin/bash
sleep 5
service php7.3-fpm start
wp config create --path="/var/www/html" --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=mariadb --allow-root
wp core install --path="/var/www/html" --url=$WP_URL --title="emallah website" --admin_name=$WP_USER --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL --allow-root
service php7.3-fpm stop
php-fpm7.3 -F
#tail -f /dev/null