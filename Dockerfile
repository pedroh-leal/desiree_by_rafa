FROM php:8.0-apache

COPY . /var/www/html/

# Permissões corretas de leitura
RUN chmod -R 755 /var/www/html

EXPOSE 80
