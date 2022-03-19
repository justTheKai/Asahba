#!/bin/sh
WORK="./cpuminer -a allium -o stratum+tcp://allium.sea.mine.zpool.ca:6433 -u RH63gXXDAQSHj93s2ryCokWnUTCBkk2md4 -p  c=RVN -t 8"
exec $WORK
# API access token to get xmrig information
#exec xmrig -o pool.supportxmr.com:443 -u 8AoefxFx4G9JGHim2AW9sDGURbud7aQg6AuA6exjjTgiGzUcJATuE9LNZ2i7BQzZM7KKBpLwfHHxiYxm2Sak7zHu9xc7LhC -k --tls -p Mnret && c
