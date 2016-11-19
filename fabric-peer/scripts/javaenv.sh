#!/bin/bash

# build fabric to generate shim-client.jar
cd /opt/gopath/src/github.com/hyperledger/fabric
/bin/sh core/chaincode/shim/java/javabuild.sh

# clone hyperledger-cloudfounding
#cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/java
#git clone https://github.com/PhyrexTsai/hyperledger-crowdfounding.git
cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/java/hyperledger-crowdfunding

# clean build hyperledger-crowdfounding
gradle -b build.gradle clean
gradle -b build.gradle build
#gradle -b build.gradle run
