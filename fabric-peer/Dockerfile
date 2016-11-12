FROM hyperledger/fabric-peer
MAINTAINER Phyrex Tsai

# install gradle
RUN add-apt-repository -y ppa:cwchien/gradle && \
    add-apt-repository -y ppa:webupd8team/java

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y python-software-properties debconf-utils xterm gradle-ppa 

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections

RUN apt-get install -y oracle-java8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle 

ADD ./scripts/javaenv.sh /scripts/javaenv.sh

RUN chmod 775 /scripts/javaenv.sh
 
#CMD ["/bin/bash", "/scripts/javaenv.sh"]
