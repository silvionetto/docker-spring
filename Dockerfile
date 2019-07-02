FROM openjdk:8-jdk-slim
MAINTAINER Silvio Netto <silvio.netto@gmail.com>
RUN \
	apt-get update \
	&& apt-get -y install curl

