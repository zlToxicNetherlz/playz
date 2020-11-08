FROM php:7.2-apache-stretch
RUN apt-get update -y && apt-get install -y openssl zip unzip git 
RUN docker-php-ext-install pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY .env.example .env
COPY . /var/www/html
COPY ./public/.htaccess /var/www/html/.htaccess
RUN chown -R www-data:www-data /var/www
RUN chmod -R 755 /var/www/storage
WORKDIR /var/www/html

COPY ./php.ini /usr/local/etc/php/conf.d
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist

RUN php artisan key:generate
RUN php artisan migrate

RUN chmod -R 777 storage
RUN a2enmod rewrite
RUN service apache2 restart
# CMD php artisan serve --host=0.0.0.0 --port=3000
# EXPOSE 3000
EXPOSE 80