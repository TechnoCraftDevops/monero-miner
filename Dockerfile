FROM debian:latest
WORKDIR /miner

# install dependencies
RUN  apt-get update && apt-get upgrade -y
RUN  apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++  git -y

# clone cpu moner
RUN  git clone https://github.com/tpruvot/cpuminer-multi

# build cpu miner
WORKDIR /miner/cpuminer-multi

RUN  ./autogen.sh
RUN  ./configure --with-crypto --with-curl
RUN  ./build.sh

RUN   cp ./cpuminer /usr/local/bin/cpuminer
# run cpuminer !
#CMD  ["./cpuminer", "-a", "cryptonight", "-o", "stratum+tcp://xmr.pool.minergate.com:45700", "-u", "bou-bou2011@hotmail.fr"]
