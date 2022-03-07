# !/bin/bash
if [ ! -f /var/www/html/wp-config.php ]
then
	sleep 5
	service php7.3-fpm start

	# CREATE THE CONFIG FILE
	wp config create --dbname=$DB --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --path=/var/www/html --allow-root

	# INSTALL THE SITE
	wp core install --url=$DOMAIN_NAME --title="emallah website" --admin_name=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=$USER1_EMAIL --path=/var/www/html --allow-root

	# CREAT USERS
	wp user create  $USER2_NAME $USER2_EMAIL --role=$USER2_ROLE --user_pass=$USER2_PASSWORD --path=/var/www/html --allow-root

	service php7.3-fpm stop
	php-fpm7.3 -F
else
	service php7.3-fpm start
	service php7.3-fpm stop
	php-fpm7.3 -F
fi