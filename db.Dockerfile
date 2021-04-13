FROM mysql:5.7

LABEL authors="randi"

RUN apt-get update

HEALTHCHECK curl -f exit 0 

COPY myweb-app/database/dump.sql /home/
