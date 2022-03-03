#!bin/sh
mysqld_safe
mysql -uroot -proot -e "CREATE DATABASE $DB_NAME"
mysql -uroot -proot -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON * . * TO '$DB_USER'@'localhost'"
mysql -uroot -proot -e "FLUSH PRIVILEGES"