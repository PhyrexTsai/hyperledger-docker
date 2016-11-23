#!/bin/bash

# build fabric to generate shim-client.jar
cd /opt/gopath/src/github.com/hyperledger/fabric
/bin/sh core/chaincode/shim/java/javabuild.sh

# clone hyperledger-cloudfounding
cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/java
git clone https://github.com/PhyrexTsai/hyperledger-crowdfunding.git
cd hyperledger-crowdfunding

# peer login
peer network login admin -p Xurw3yU9zI0l

# clean build hyperledger-crowdfunding
gradle -b build.gradle clean
gradle -b build.gradle build
#gradle -b build.gradle run
