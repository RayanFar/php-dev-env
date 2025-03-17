FROM php:8.2-fpm

# Install dependencies
RUN apt-get update && apt-get install -y unzip libpng-dev libjpeg-dev libfreetype6-dev libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip mysqli pdo pdo_mysql

# Install Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Copy Xdebug config
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Set work directory
WORKDIR /var/www/html

# Define build arguments
ARG USER_ID=1000
ARG GROUP_ID=1000

# Debug: Show values of arguments
RUN echo "Creating user with UID=$USER_ID and GID=$GROUP_ID"

# Ensure the group exists before adding the user
RUN groupadd --non-unique --gid "$GROUP_ID" devgroup || true \
    && useradd --non-unique --uid "$USER_ID" --gid "$GROUP_ID" -m devuser || true

# Change ownership of working directory
RUN chown -R devuser:devgroup /var/www/html

# Switch to non-root user
USER devuser

CMD ["php-fpm"]
