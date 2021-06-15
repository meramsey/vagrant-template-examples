FROM docker.io/library/fedora:34

RUN dnf install -y httpd && \
    dnf clean all

EXPOSE 80/tcp

CMD ["/usr/sbin/httpd","-DFOREGROUND"]
