FROM centos:latest
RUN yum -y update && yum clean all
RUN yum -y install httpd
RUN systemctl enable httpd.service
EXPOSE 80
CMD ["/usr/sbin/init"]
