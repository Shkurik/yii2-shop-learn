FROM nanoninja/php-fpm:7.4.4 as php-fpm

ARG XDEBUG_CLIENT_HOST=host.docker.internal
RUN echo "XDEBUG_CLIENT_HOST = ${XDEBUG_CLIENT_HOST}"

LABEL maintainer="Shkurik"

# Install Git && Wget
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y wget

WORKDIR /var/www/html
#COPY .. .

# Xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo "xdebug.client_host=${XDEBUG_CLIENT_HOST}" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Install APCu
RUN pecl install apcu_bc

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer