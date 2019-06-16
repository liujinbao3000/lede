
FROM ubuntu:14.04
COPY run.sh /
RUN /run.sh
WORKDIR /home/lede
VOLUME /home/lede/
