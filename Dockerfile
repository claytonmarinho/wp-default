FROM centos:centos6
MAINTAINER Clayton Marinho <claytonmarinho@gmail.com>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install httpd php php-mysql php-gd pwgen bash-completion psmisc tar; yum clean all
RUN echo %sudo	ALL=NOPASSWD: ALL >> /etc/sudoers

RUN chown -R apache:apache /var/www/

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D FOREGROUND"]