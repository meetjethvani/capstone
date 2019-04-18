FROM centos:latest
COPY . var/www/html
RUN yum -y --setopt=tsflags=nodocs update
RUN yum -y --setopt=tsflags=nodocs install httpd
RUN yum clean all
RUN systemctl enable httpd.service
