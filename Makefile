run:
	docker volume rm srcs_db srcs_wordpress
	sudo mkdir -p /home/mokellah/data
	docker-compose -f srcs/docker-compose.yml up
