FROM centos:latest
RUN yum -y update && yum clean all
RUN yum -y install nginx
RUN systemctl enable nginx.service
EXPOSE 80
CMD ["/usr/sbin/init"]
