FROM php:7.3-apache
RUN docker-php-ext-install pdo_mysql mysqli mbstring
RUN a2enmod rewrite
