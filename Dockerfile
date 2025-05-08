FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
RUN apt install default-jdk -y
WORKDIR /var/www/html
COPY . .
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
