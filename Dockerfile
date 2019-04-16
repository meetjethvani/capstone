FROM redhat/rhel7

RUN yum -y update; yum clean all
RUN yum -y install httpd; yum clean all
RUN echo "Apache" >> /var/www/html/index.html

EXPOSE 80
