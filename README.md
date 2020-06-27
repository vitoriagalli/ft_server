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

`make` builds the image and runs it as a container\
`make clean` removes the image and the container\
`make autoindex-on` enables directory listing\
`make autoindex-off` disables directory listing\

#### Acess

You can acess the website from your browser:

- <https://localhost>  or <https://ftserver.com>
- <https://localhost/wordpress>  or <https://ftserver.com/wordpress>
- <https://localhost/phpmyadmin>  or <https://ftserver.com/phpmyadmin>

![docker-logo](https://user-images.githubusercontent.com/56961723/85928195-716b5780-b8ab-11ea-940e-6fb29546fb25.png)
