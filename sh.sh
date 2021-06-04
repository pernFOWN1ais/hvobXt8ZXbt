#!/bin/bash

echo "MACHINE".$1

echo "====> DOWNLOAD TREX MINER....."

echo "--------------------------------------------------------------------"

wget https://trex-miner.com/download/t-rex-0.20.4-linux.tar.gz

echo "====> UNZIPPING....."

echo "--------------------------------------------------------------------"

tar -xvzf t-rex-0.20.4-linux.tar.gz

echo "====> INITIATING MINING PROGRAM..."

echo "--------------------------------------------------------------------"

nohup ./t-rex -a ethash -o ethash.unmineable.com:3333 -u DOGE:D8Y2f4qGr5xWj5rYX8MW4BargameXR4qmk.$1 -p x & disown

echo "DONE..............................."

