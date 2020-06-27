
IMAGE = server_image
CONTAINER = server

docker-build:
	sudo docker build -t $(IMAGE) .

docker-run:
	sudo docker run -d -p 80:80 -p 443:443 --name $(CONTAINER) $(IMAGE)

all: docker-build docker-run

docker-stop:
	sudo docker stop $(CONTAINER)

docker-rm: docker-stop
	sudo docker rm $(CONTAINER)

docker-rmi:
	sudo docker rmi $(IMAGE)

docker-exec:
	sudo docker exec -it $(CONTAINER) bash

autoindex-on:
	sudo docker exec $(CONTAINER) bash /autoindex.sh on

autoindex-off:
	sudo docker exec $(CONTAINER) bash /autoindex.sh off

clean: docker-rm docker-rmi

.PHONY: all, clean
