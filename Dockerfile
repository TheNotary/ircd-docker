#FROM phusion/baseimage:0.9.18
FROM ubuntu:14.04

MAINTAINER Jason Carver <ut96caarrs@snkmail.com>

# RUN echo "deb https://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y ngircd


# expose IRC ports to other containers
EXPOSE :443
EXPOSE :6664
EXPOSE :6667

# RUN touch /usr/share/doc/ngircd/Commands.txt

add start.sh /start.sh
add ngircd.conf /etc/ngircd/ngircd.conf
add ngircd.motd /etc/ngircd/ngircd.motd

ENTRYPOINT ["/start.sh"]
