FROM php:8.1-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql sockets
RUN curl -sS https://getcomposer.org/installer​ | php -- \
     --install-dir=/usr/local/bin --filename=composer

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app
COPY . .
RUN composer install
RUN touch database/database.sqlite
RUN touch .env
RUN cat .env.example > .env
RUN php artisan key:generate
RUN php artisan migrate
RUN php artisan db:seed --class=PersonSeeder
RUN php artisan db:seed --class=TicketSeeder
CMD ["php", "artisan", "serve", "--host=0.0.0.0"]
