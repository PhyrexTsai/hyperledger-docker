FROM hyperledger/fabric-peer
MAINTAINER Phyrex Tsai

RUN apt-get install -y xterm

# install gradle
RUN add-apt-repository -y ppa:cwchien/gradle && \
    add-apt-repository -y ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y gradle-ppa

ADD ./scripts/javaenv.sh /scripts/javaenv.sh
RUN chmod 755 /scripts/start.sh
 
#CMD ["/bin/bash", "/scripts/javaenv.sh"]
