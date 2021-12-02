FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install apache2
#COPY index.html /var/lib/jenkins/workspace/Web_app/index.html
RUN cat /var/lib/jenkins/workspace/Web_app/index.html > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
