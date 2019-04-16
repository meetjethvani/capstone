FROM nginx
COPY . usr/share/nginx/html
rpm -i https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
RUN yum -y update
RUN yum -y install nginx
RUN systemctl enable nginx
RUN systemctl start nginx
