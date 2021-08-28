FROM php:7.4-apache
RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get -y update
RUN apt-get -y install git
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
