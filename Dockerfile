FROM ubuntu

MAINTAINER Philip Damra  <djheru@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd

ONBUILD ADD sshd_config /etc/ssh/sshd_config

#Default command
CMD /usr/sbin/sshd -D

#ENV and config settings
USER nobody
WORKDIR /tmp

EXPOSE 2222
