FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
RUN apt install default-jdk -y
RUN mkdir /data
COPY . .
WORKDIR /var/www/html
COPY index.html .
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
