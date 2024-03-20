FROM    debian:stable
RUN     apt update &&  apt install nginx openssl -y
RUN     openssl req -subj '/CN=1337.com/O=Ayoub bouram/C=MR' -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout /etc/ssl/certs/server.key -out /etc/ssl/certs/server.crt
COPY    conf/nginx.conf /etc/nginx/conf.d
CMD ["nginx", "-g", "daemon off;"]