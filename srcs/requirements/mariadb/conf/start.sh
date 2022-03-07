#!bin/bash
if [ ! -d /var/lib/mysql/website/ ]
then
	service mysql start
	mysql -e "CREATE DATABASE $DB"
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION"
	#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
	mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');"
	#mysql -e "FLUSH PRIVILEGES"
	service mysql stop
	mysqld_safe
else
	#mysqld_safe
	mysqld_safe --skip-grant-table
fi