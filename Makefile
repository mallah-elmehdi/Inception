# docker rm -vf $(docker ps -aq)
# docker rmi wordpress nginx mariadb
# docker volume rm srcs_db srcs_wordpress
# docker system prune -a
run:
	sudo rm -fr /home/mokellah/data/wp-db
	sudo rm -fr /home/mokellah/data/wp-files
	sudo mkdir -p /home/mokellah/data/wp-files
	sudo mkdir -p /home/mokellah/data/wp-db
	docker-compose -f srcs/docker-compose.yml up --build
