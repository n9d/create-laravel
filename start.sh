#!/bin/sh

composer install
touch database/database.sqlite
php artisan migrate
php artisan serve --host 0.0.0.0 --port 8000
#php-fpm

