FROM debian:12

MAINTAINER zzzdeb <zolboo.deb@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && yes | apt-get install --no-install-recommends --no-install-suggests g++ clang distcc

RUN apt-get update \
    && yes | apt-get install --no-install-recommends --no-install-suggests clang-16

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists

COPY entrypoint.sh /entrypiont.sh

EXPOSE 3632
ENTRYPOINT ["/entrypiont.sh"]
