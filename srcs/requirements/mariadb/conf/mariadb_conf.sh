#!bin/sh
mysqld_safe
mysql -uroot -proot -e "GRANT ALL ON *.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_USER_PASSWORD' WITH GRANT OPTION"
mysql -uroot -proot -e "FLUSH PRIVILEGES"