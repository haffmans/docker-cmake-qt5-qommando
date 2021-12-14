FROM        haffmans/cmake-qt5:latest
MAINTAINER  Wouter Haffmans <wouter@simply-life.net>

WORKDIR /
# Disable mozilla/DST_Root_CA_X3.crt - it interferes with the newer Let's Encrypt certificates
RUN    sed -i 's@mozilla/DST_Root_CA_X3.crt@!mozilla/DST_Root_CA_X3.crt@' /etc/ca-certificates.conf \
    && update-ca-certificates \
    && wget "https://git.simply-life.net/packages/ubuntu/xenial/qommando-master.tar.bz2" -O /tmp/qommando-master.tar.bz2 \
    && tar -jxvf /tmp/qommando-master.tar.bz2 \
    && rm /tmp/qommando-master.tar.bz2

# Use devel for this image...
USER devel
ENV HOME=/home/devel
WORKDIR /home/devel

# ... but revert to root on the next image builds
ONBUILD USER root
ONBUILD WORKDIR /
