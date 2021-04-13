FROM php:7.2-apache

LABEL authors="randi"

HEALTHCHECK curl -f http://localhost/

WORKDIR /var/www/html/
RUN apt-get update
RUN docker-php-ext-install pdo pdo_mysql

COPY myweb-app/file-web/ .