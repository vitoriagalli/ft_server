# FT_SERVER
![](https://img.shields.io/badge/PHP-purple)
![](https://img.shields.io/badge/Docker-blue)

Docker LEMP development environment for WordPress. \
*For learning purposes only*.

## Introduction
This project aims to run a website, with multiple services, from a single docker container.
1. Web server with [Nginx](https://www.nginx.com/)
2. SQL Database with [MariaDB](https://www.mariadb.org/)
3. Database web admin with [PhpMyAdmin](https://www.phpmyadmin.net/)
4. OpenSource CMS with [Wordpress](https://www.wordpress.com/)

The project also have a self-signed certificate [OpenSSL](https://www.openssl.org/) and an autoindex script on the container's root directory.

## Usage

#### Prerequisites

Docker: https://docs.docker.com/engine/install/

#### Build Instructions

###### Docker commands

`docker build -t $(IMAGE_NAME) .` builds the image\
`docker run -d -p 80:80 -p 443:443 --name $(CONTAINER_NAME) $(IMAGE_NAME)` runs the image as a container\
`docker stop $(CONTAINER_NAME)` stops the container\
`docker rmi $(IMAGE_NAME)` removes the image\
`docker rm $(CONTAINER_NAME)` removes the container\
`docker exec -it $(CONTAINER_NAME) bash` access the server CLI\
`docker exec $(CONTAINER_NAME) bash /autoindex.sh on` enables directory listing\
`docker exec $(CONTAINER_NAME) bash /autoindex.sh off` disables directory listing\

#### Acess

You can acess the website from your browser:

- <https://localhost>  or <https://ftserver.com>
- <https://localhost/wordpress>  or <https://ftserver.com/wordpress>
- <https://localhost/phpmyadmin>  or <https://ftserver.com/phpmyadmin>

![docker-logo](https://user-images.githubusercontent.com/56961723/85928195-716b5780-b8ab-11ea-940e-6fb29546fb25.png)
