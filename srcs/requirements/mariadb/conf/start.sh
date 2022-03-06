#!bin/bash
echo "====== [0] ========"
service mysql start
echo "====== [1] ========"
mysql -uroot -proot -e "CREATE DATABASE $DB_NAME"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD' WITH GRANT OPTION"
mysql -uroot -proot -e "FLUSH PRIVILEGES"
echo "====== [2] ========"
service mysql stop
echo "====== [3] ========"
#tail -f /dev/null
mysqld_safe