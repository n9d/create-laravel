FROM php:7.3

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y unzip libzip-dev zlib1g-dev
    
#RUN docker-php-ext-install zip pdo_mysql

#RUN apt-get update && apt-get install -y lv w3m vim ncat net-tools

#COPY ./apache2.conf /etc/apache2/apache2.conf

COPY ./php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/myapp
