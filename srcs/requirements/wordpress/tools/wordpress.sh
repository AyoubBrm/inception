#! /bin/bash

if [ ! -f wp-config.php ]; then
    sed -i 's#/run/php/php8.2-fpm.sock#9000#' /etc/php/8.2/fpm/pool.d/www.conf
    chown -R www-data:www-data .
    chmod 755 .
    wp core download --allow-root
    wp config create --dbname=$WP_DB --dbhost=$WP_HOSTDB --dbuser=$WP_USERDB --dbpass=$WP_DBPASS --allow-root
    wp core install --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root
    wp user create $WP_USER $WP_EMAIL --role=$WP_ROLE --user_pass=$WP_USER_PASS --allow-root
fi
php-fpm8.2 -F