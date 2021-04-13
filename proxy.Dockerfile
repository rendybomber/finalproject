FROM nginx:1.15.6

LABEL authors="randi"

HEALTHCHECK curl -f http://localhost/

RUN apt-get update

COPY myweb-app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80