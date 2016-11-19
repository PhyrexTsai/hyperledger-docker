#!/bin/bash
source fabric-peer/custom_variables

rm -rf hyperledger-crowdfunding
git clone https://github.com/PhyrexTsai/hyperledger-crowdfunding.git

docker-compose build
docker-compose up
 
