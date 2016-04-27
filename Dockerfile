FROM centos:latest
RUN yum install php-gd && service httpd restart && chown -R apache:apache /var/www/html/