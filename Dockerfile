FROM php:5.6.32-apache
RUN docker-php-ext-install mysql mysqli
RUN docker-php-ext-install pdo pdo_mysql
