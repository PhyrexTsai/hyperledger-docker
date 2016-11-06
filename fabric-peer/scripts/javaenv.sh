#!/bin/bash

sudo add-apt-repository ppa:cwchien/gradle \
&& apt-get update \
&& apt-get install -y gradle-ppa

sudo add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java8-installer && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
