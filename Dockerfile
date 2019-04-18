FROM centos:latest
COPY . var/www/html
RUN yum install httpd -y
RUN systemctl enable httpd.service
EXPOSE 80
EXPOSE 8080
