#https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-10
FROM debian:buster
RUN mkdir conf
COPY ./conf ./conf
RUN apt update
RUN apt -y install mariadb-server
CMD sh ./conf/mariadbconf.sh