FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN yum -y install nginx; yum clean all; systemctl enable nginx.service
EXPOSE 80
CMD ["/usr/sbin/init"]
