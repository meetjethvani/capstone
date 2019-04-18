FROM ubuntu:latest
COPY . var/www/html
RUN apt-get install httpd -y
service httpd start
#
