FROM nginx
COPY . usr/share/nginx/html
RUN apt-get update
RUN service nginx restart
