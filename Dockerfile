FROM fedora:latest

RUN dnf -y upgrade

RUN dnf -y install tuxpaint vim httpd

COPY myinfo.html /var/www/html/

EXPOSE 80/tcp

RUN systemctl enable httpd

ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]