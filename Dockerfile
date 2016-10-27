FROM alpine:3.4

RUN apk --update add ngircd

# expose IRC ports to other containers
#EXPOSE :443
#EXPOSE :6664
EXPOSE :6667

####################
# Configure ngircd #
####################

RUN mkdir -p /usr/share/doc/ngircd
RUN echo " " > /usr/share/doc/ngircd/Commands.txt

RUN adduser -S irc
RUN addgroup -g 998 irc && \
  addgroup irc irc

add docker-entrypoint.sh /docker-entrypoint.sh
add ngircd.conf /etc/ngircd/ngircd.conf
add ngircd.motd /etc/ngircd/ngircd.motd

ENTRYPOINT ["/docker-entrypoint.sh"]
