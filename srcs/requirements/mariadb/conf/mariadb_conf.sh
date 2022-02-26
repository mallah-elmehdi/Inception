#!bin/sh

service mysql start
mysql -uroot -proot -e "GRANT ALL ON *.* TO 'mokellah'@'localhost' IDENTIFIED BY '123456' WITH GRANT OPTION"
mysql -uroot -proot -e "FLUSH PRIVILEGES"
service mysql stop
mysqld_safe
