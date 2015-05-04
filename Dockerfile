FROM        cmake-qt5:latest
MAINTAINER  Wouter Haffmans <wouter@simply-life.net>

WORKDIR /
RUN wget "https://git.simply-life.net/packages/ubuntu/trusty/qommando-master.tar.bz2" -O /tmp/qommand-master.tar.bz2 \
    && tar -jxvf /tmp/qommand-master.tar.bz2
