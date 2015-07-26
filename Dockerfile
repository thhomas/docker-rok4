FROM debian:wheezy
MAINTAINER Thibault Coupin <thibault.coupin@ign.fr>

LABEL version="0.25.1"
ENV ROK4_VERSION 0.25.1

RUN mkdir /rok4
WORKDIR /rok4
RUN apt-get update
RUN apt-get install -y wget ca-certificates
RUN echo 'deb http://ftp.fr.debian.org/debian/ testing main' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -t testing install -y libc6-dev
RUN wget "https://github.com/rok4/rok4/releases/download/${ROK4_VERSION}/Rok4-${ROK4_VERSION}-Linux-64bit.tar.gz"
RUN tar -zxf Rok4-${ROK4_VERSION}-Linux-64bit.tar.gz
RUN rm Rok4-${ROK4_VERSION}-Linux-64bit.tar.gz
RUN chmod -R 777 /rok4/*

ADD config /rok4/config/
ADD startRok4.sh /rok4/startRok4.sh
ADD default_env /rok4/default_env
CMD /bin/bash /rok4/startRok4.sh
