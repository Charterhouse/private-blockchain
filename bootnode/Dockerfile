FROM ubuntu

WORKDIR /node

ADD . /node

EXPOSE 30301

RUN apt-get update; \
  apt-get install -y iproute2; \
  apt-get install -y iptables; \
  apt-get install -y software-properties-common; \
  add-apt-repository -y ppa:ethereum/ethereum; \
  apt-get update; \
  apt-get install -y ethereum;

ENTRYPOINT ["/node/start.sh"]
CMD [""]
