FROM php:7.4-fpm as php-base
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -y unzip libzip-dev zlib1g-dev
RUN apt-get install -y sqlite 
#RUN docker-php-ext-install zip pdo_mysql 
COPY ./php.ini /usr/local/etc/php/php.ini



FROM php-base as initial
RUN apt-get update && \
    apt-get install -y \
    lv w3m vim ncat net-tools procps \ 
    libfcgi-bin
RUN mkdir /src
WORKDIR /src



FROM initial as development
WORKDIR /src


FROM php-base as production
COPY . /src
WORKDIR /src
RUN composer install --no-dev
CMD ["php-fpm"]
