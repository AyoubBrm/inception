FROM debian:stable
RUN apt update && apt install mariadb-server mariadb-client -y
COPY tools/mariadb.sh .
EXPOSE  3306
ENTRYPOINT ["/bin/bash", "mariadb.sh"]