FROM php:8.0-apache

RUN apt-get update && apt-get install -y \
  curl \
  jq \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
COPY ./src /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]