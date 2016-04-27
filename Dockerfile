FROM php:5.6-apache
RUN apt-get update && docker-php-ext-install mysql && a2enmod rewrite && service apache2 restart
ENTRYPOINT ["apache2-foreground"]