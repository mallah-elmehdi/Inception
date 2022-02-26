FROM debian:buster
RUN apt update
RUN apt install -y wget
RUN	apt -y install php php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath
RUN wget -c https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN rm latest.tar.gz
RUN mkdir -p /var/www/html
RUN mv wordpress/* /var/www/html
RUN mkdir conf
RUN mkdir -p /var/run/php/
COPY ./conf/ ./conf
CMD bash ./conf/wp_config.sh
