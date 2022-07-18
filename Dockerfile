FROM php:8.1-fpm-alpine

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["php", "artisan", "serve"]
