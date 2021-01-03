FROM debian:9
LABEL author="欧德之怒"
ADD sources.list /etc/apt/sources.list
RUN apt -y update;apt -y install apt-mirror nginx vim net-tools procps systemd-sysv
ADD nginx.conf /etc/nginx/nginx.conf
ADD mirror.list /etc/apt/mirror.list
WORKDIR /home
RUN ln -sf /home/aptrepo/mirror/ /var/www/html/
EXPOSE 8080
ENTRYPOINT nginx;sleep infinity