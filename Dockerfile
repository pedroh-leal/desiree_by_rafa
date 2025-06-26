FROM php:8.0-apache

# Define a variável de ambiente PORT do Render
ENV PORT=10000

# Muda a porta padrão do Apache para a porta $PORT
RUN sed -i "s/80/\${PORT}/g" /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

COPY . /var/www/html/
RUN chmod -R 755 /var/www/html/

EXPOSE ${PORT}
