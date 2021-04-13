FROM phpmyadmin:latest

LABEL authors="randi"

HEALTHCHECK curl -f http://localhost/ 