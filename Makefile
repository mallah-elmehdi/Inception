YML = srcs/docker-compose.yml
DC = docker-compose

init:
	sudo mkdir -p /home/emallah/data/files
	sudo mkdir -p /home/emallah/data/db

run: init
	$(DC) -f $(YML) up

pause:
	$(DC) -f $(YML) down
