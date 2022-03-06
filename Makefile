# docker rm -vf $(docker ps -aq)
# docker rmi wordpress nginx mariadb
# docker volume rm srcs_db srcs_wordpress
# docker system prune -a
run:
	sudo rm -fr /home/emallah/data/db
	sudo rm -fr /home/emallah/data/files
	sudo mkdir -p /home/emallah/data/files
	sudo mkdir -p /home/emallah/data/db
	docker-compose -f srcs/docker-compose.yml up --build
