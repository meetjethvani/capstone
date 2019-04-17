FROM centos:latest
COPY . usr/share/nginx/html
RUN yum -y update && yum -y install nginx
RUN systemctl restart nginx
