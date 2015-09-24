FROM        haffmans/cmake-qt5:latest
MAINTAINER  Wouter Haffmans <wouter@simply-life.net>

WORKDIR /
RUN wget "https://git.simply-life.net/packages/ubuntu/trusty/qommando-master.tar.bz2" -O /tmp/qommando-master.tar.bz2 \
    && tar -jxvf /tmp/qommando-master.tar.bz2 \
    && rm /tmp/qommando-master.tar.bz2

# Don't use devel user on the next image builds
ONBUILD USER root
ONBUILD WORKDIR /
