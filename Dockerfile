FROM spira/docker-base

MAINTAINER "Zak Henry" <zak.henry@gmail.com>

RUN mkdir -p ${DATA_ROOT:-/data}
