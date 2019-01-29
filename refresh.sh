
#/bin/bash

cd ~
cd /usr/local/bin
./paxex-cli stop
rm -rf paxexd paxex-cli paxex-tx
wget https://github.com/paxexcrypto/Paxex/releases/download/2.1.0/paxex-2.1.0-x86_64-linux-gnu.tar.gz
tar -xzf paxex-2.1.0-x86_64-linux-gnu.tar.gz
rm -rf paxex-2.1.0-x86_64-linux-gnu.tar.gz
./paxexd -daemon
sleep 30
./paxex-cli getinfo
