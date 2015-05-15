FROM debian:jessie

MAINTAINER "Zak Henry" <zak.henry@gmail.com>

RUN mkdir -p /data
VOLUME ["/data"]

# Data startup script
ADD config/data-start.sh /opt/bin/data-start.sh
ADD config/notice.txt /opt/etc/data-notice.txt
RUN chmod u=rwx /opt/bin/data-start.sh

EXPOSE 22

ENTRYPOINT ["/opt/bin/data-start.sh"]