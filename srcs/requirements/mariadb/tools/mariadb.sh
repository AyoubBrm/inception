#!/bin/bash
sed -i 's#127.0.0.1#0.0.0.0#' /etc/mysql/mariadb.conf.d/50-server.cnf
service mariadb start;
mariadb -e "CREATE DATABASE $MYSQLDB";
mariadb -e "CREATE USER $MYSQLUSER@'$MYSQLPORT' IDENTIFIED BY '$MYSQLPASSWD'";
mariadb -e "GRANT ALL PRIVILEGES ON $MYSQLDB.* TO $MYSQLUSER@'$MYSQLPORT'";
mariadb -e "FLUSH PRIVILEGES";
service mariadb stop;
mysqld_safe