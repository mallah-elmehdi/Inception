FROM debian:buster
RUN apt update
RUN apt install -y wget php php-cli php-fpm \ 
	php-json php-pdo php-mysql php-zip php-gd  \ 
	php-mbstring php-curl php-xml php-pear php-bcmath
RUN wget -c https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN rm latest.tar.gz
RUN mkdir -p /var/www/html
RUN mv wordpress/* /var/www/html
RUN chown -R www-data:www-data /var/www/html/
RUN chmod 755 -R /var/www/html
RUN mkdir conf
COPY ./conf/ ./conf
RUN mv ./conf/wp-config.php var/www/html/.
CMD bash ./conf/wp_config.sh
