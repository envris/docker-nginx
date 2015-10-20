FROM ubuntu:vivid
MAINTAINER Aaron Nicoli <aaronnicoli@gmail.com>

RUN apt-get update && \
    apt-get install -y wget nginx

ADD ./docker/scripts/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

VOLUME ["/etc/nginx"]

CMD ["/entrypoint.sh"]
