FROM ubuntu
WORKDIR /tmp
COPY index.html /var/www/html/
RUN apt-get update -y; apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
