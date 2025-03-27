FROM ggmartinez/centos:7
RUN echo  "Hola"
RUN yum -y install mysql-client proftpd && \
    yum clean temp && \
    rm -rf /var/cache/yum
CMD proftpd


