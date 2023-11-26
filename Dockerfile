FROM php:8.2-apache-bookworm
# FROM mcr.microsoft.com/devcontainers/php:1-8.2-bullseye

# Install MariaDB & extensions
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y mariadb-client libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Install php-mysql driver
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Install php-exts
RUN docker-php-ext-install gd


# Clean up
RUN \
  apt-get autoremove -y && \
  apt-get autoclean && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

