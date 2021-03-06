FROM php:7.2-apache
RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /var/www/html/
COPY ./myweb-app/file-web /var/www/html/
HEALTHCHECK CMD curl -f http://localhost/ || exit 1

