#!/bin/bash

service nginx start
service mysql start
service php7.3-fpm start
tail -F /dev/null
