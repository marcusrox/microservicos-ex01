#!/bin/sh
php artisan migrate 
php artisan key:generate
php-fpm
