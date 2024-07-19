FROM ubuntu:24.04

RUN groupadd -g 1001 build && useradd -u 1001 -g 1001 build


RUN set -x \
    && apt update -y \
    && apt install rubygems ruby-dev squashfs-tools rpm -y \
    && gem install fpm \
    && mkdir /src

WORKDIR /src/

CMD ["/usr/local/bin/fpm"]