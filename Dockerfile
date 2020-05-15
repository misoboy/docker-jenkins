FROM jenkins/jenkins:alpine
MAINTAINER ChiSeok, Song <misoboy.kor@gmail.com>

USER root

WORKDIR /root
ADD apache-maven-3.6.3-bin.tar.gz /usr/local
RUN mv /usr/local/apache-maven-3.6.3 /usr/local/maven && \
    chown -R jenkins.jenkins /usr/local/maven

ENV MAVEN_HOME "/usr/local/maven"
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/maven/bin
