# hyperledger-docker

### Docker tools

Download (version 1.12.0) : [https://www.docker.com/products/docker-toolbox](https://www.docker.com/products/docker-toolbox)

### Download docker images
```
docker pull hyperledger/fabric-peer:latest
docker pull hyperledger/fabric-membersrvc:latest
```

### Clone repo
```
git clone https://github.com/PhyrexTsai/hyperledger-docker
```

### Run docker 

```
cd <your-path-to>/hyperledger-docker
docker-compose up
```

### Connect console

Use bash

```
bash -c "clear && docker exec -it hyperledger_vp0_1 sh"
```

or you can also install `Kitematic` to open a console.


### Build code

```
cd /opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go/chaincode_example02
chaincode_example02.go
go build
```

### Run configuration 

```
CORE_CHAINCODE_ID_NAME=mycc CORE_PEER_ADDRESS=0.0.0.0:7051 ./chaincode_example02
```

### Login

Users :   
[https://github.com/hyperledger/fabric/blob/master/membersrvc/membersrvc.yaml](https://github.com/hyperledger/fabric/blob/master/membersrvc/membersrvc.yaml)

Use `jim` login

```
peer network login jim
6avZQLwcUe9b
```

### REST 

You can run localhost on your machine, out side from docker.

```
curl --request GET "http://localhost:7050/chain"

-- show block detail via "http://localhost:7050/chain/blocks/<number>"
curl --request GET "http://localhost:7050/chain/blocks/1"

```

REST APIs : [http://chaincode-docs.readthedocs.io/en/latest/API/CoreAPI/#rest-api](http://chaincode-docs.readthedocs.io/en/latest/API/CoreAPI/#rest-api)

### Peer cli

```
peer chaincode deploy -u jim -n mycc -c '{"Function":"init", "Args":["a","100", "b", "200"]}'
peer chaincode invoke -u jim -n mycc -c '{"Function": "invoke", "Args": ["a", "b", "10"]}'
peer chaincode query -u jim -n mycc -c '{"Function": "query", "Args": ["a"]}'

```

cli : [http://chaincode-docs.readthedocs.io/en/latest/API/CoreAPI/#cli](http://chaincode-docs.readthedocs.io/en/latest/API/CoreAPI/#cli)


