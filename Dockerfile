FROM ggmartinez/centos:7
RUN echo  "Hola"
RUN yum -y install httpd php php-mysql && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY index.php /var/www/html/
CMD httpd -D FOREGROUND


