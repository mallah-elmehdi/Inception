# !/bin/bash
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F
# /etc/init.d/php7.0-fpm restart && nginx -g "daemon off;"
# tail -f /dev/null