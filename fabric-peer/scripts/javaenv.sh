#!/bin/bash

# install gradle
#sudo add-apt-repository ppa:cwchien/gradle \
#  && apt-get update \
#  && apt-get install -y gradle-ppa

# install java 8
sudo add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

# build fabric to generate shim-client.jar
cd /opt/gopath/src/github.com/hyperledger/fabric
/bin/sh core/chaincode/shim/java/javabuild.sh

# clone hyperledger-cloudfounding
cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/java
git clone https://github.com/PhyrexTsai/hyperledger-crowdfounding.git
cd hyperledger-crowdfounding

# clean build hyperledger-crowdfounding
gradle -b build.gradle clean
gradle -b build.gradle build
#gradle -b build.gradle run
