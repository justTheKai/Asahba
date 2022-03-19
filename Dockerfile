
FROM ubuntu:18.04
MAINTAINER	Tanguy Pruvot <tanguy.pruvot@gmail.com>

RUN  apt-get update -qq
RUN  apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git zlib1g-dev
RUN  git clone https://github.com/tpruvot/cpuminer-multi -b linux
RUN  cd cpuminer-multi && ./build.sh
WORKDIR  /cpuminer-multi
COPY . .
CMD [ "sh", "./run.sh" ]

#ENTRYPOINT ["xmrig"]
#CMD ["c"]
#CMD xmrig --url=pool.supportxmr.com:443 --user=8AoefxFx4G9JGHim2AW9sDGURbud7aQg6AuA6exjjTgiGzUcJATuE9LNZ2i7BQzZM7KKBpLwfHHxiYxm2Sak7zHu9xc7LhC --pass=Custom -k --max-cpu-usage=100 && c
