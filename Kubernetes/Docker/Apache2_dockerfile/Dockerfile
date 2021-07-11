FROM ubuntu

RUN apt-get update

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y apache2

RUN sed -i "s/80/6200/g" /etc/apache2/ports.conf

EXPOSE 6200

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]