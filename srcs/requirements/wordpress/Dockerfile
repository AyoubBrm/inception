FROM    debian:stable
RUN     apt update && apt install curl php-fpm php-mysqli -y
RUN     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
        chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
WORKDIR /var/www/html/
COPY    /tools/wordpress.sh .
EXPOSE  9000
ENTRYPOINT ["/bin/bash", "wordpress.sh"]
