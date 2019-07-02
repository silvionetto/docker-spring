FROM openjdk:8-jdk-slim
MAINTAINER Silvio Netto <silvio.netto@gmail.com>
RUN \
	apt-get update \
	&& apt-get -y install curl

RUN curl https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/2.1.6.RELEASE/spring-boot-cli-2.1.6.RELEASE-bin.tar.gz | tar xz -C /opt/
RUN ln -s /opt/spring-2.1.6.RELEASE/ /opt/spring
ENV SPRING_HOME=/opt/spring
ENV PATH=$PATH:$SPRING_HOME/bin

