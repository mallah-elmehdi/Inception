#https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-10
FROM debian:buster
COPY ./conf .
RUN apt update
RUN apt -y install mariadb-server
CMD ["sh", "conf/mariadbconf.sh"]