FROM jenkins/jenkins:latest
MAINTAINER ChiSeok, Song <misoboy.kor@gmail.com>

USER root
RUN apt-get -y update
RUN apt-get -y install docker

WORKDIR /root
RUN curl -L -O "http://apache.tt.co.kr/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz"
RUN tar -xf apache-maven-3.6.2-bin.tar.gz
RUN mv /root/apache-maven-3.6.2 /usr/local/maven
RUN chown -R jenkins.jenkins /usr/local/maven

ENV MAVEN_HOME "/usr/local/maven"
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/maven/bin