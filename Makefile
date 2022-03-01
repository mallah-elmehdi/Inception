# docker rm -vf $(docker ps -aq)
# docker rmi wordpress nginx mariadb
run:
	docker volume rm srcs_db srcs_wordpress
# docker system prune -a
	sudo mkdir -p /home/mokellah/data
	sudo mkdir -p /home/mokellah/data/wp-files
	sudo mkdir -p /home/mokellah/data/wp-db
	docker-compose -f srcs/docker-compose.yml up
