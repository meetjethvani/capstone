FROM ubuntu:latest
COPY . var/www/html
RUN apt-get install httpd -y
RUN service httpd restart
