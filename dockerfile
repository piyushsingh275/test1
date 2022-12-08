from centos: latest
MAINTAINER priyank.kumar@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markup-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "FOREGROUND"]
EXPOSE 80
