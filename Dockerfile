FROM ubuntu:vivid
MAINTAINER Aaron Nicoli <aaronnicoli@gmail.com>

RUN apt-get update && \
    apt-get install -y wget nginx

RUN rm -f /etc/nginx/nginx.conf

ADD ./docker/scripts/entrypoint.sh /entrypoint.sh
ADD ./docker/scripts/nginx.conf /etc/nginx/nginx.conf
RUN chmod +x /entrypoint.sh

VOLUME ["/var/www"]

CMD ["/entrypoint.sh"]
