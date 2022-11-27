# Builds a new laravel project
FROM php:fpm

# update cache and packages
RUN apt update && apt upgrade -y

# install dependencies
RUN apt install -y git curl libpng-dev libonig-dev libxml2-dev zip unzip

# install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    mv composer.phar /usr/local/bin/composer && \
    rm composer-setup.php

# create project on /var/www/html/my-app
CMD [ "composer", "create-project", "laravel/laravel", "my-app"]
