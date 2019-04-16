FROM nginx
COPY . usr/share/nginx/html
RUN yum -y update
RUN yum -y install nginx
RUN systemctl enable nginx
RUN systemctl start nginx
