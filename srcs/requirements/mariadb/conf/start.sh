#!bin/bash
service mysql start
mysql -uroot -proot -e "CREATE DATABASE $DB_NAME"
mysql -uroot -proot -e "GRANT ALL ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD' WITH GRANT OPTION"
mysql -uroot -proot -e "FLUSH PRIVILEGES"
service mysql stop
mysqld_safe