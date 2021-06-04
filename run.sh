#!/bin/bash

#MACHINE ID
MACHINE_ID=$(curl https://ipinfo.io/ip | sed "s/[.]//g");


function main() {
        CONNECTION
        MINE
}


function CONNECTION() {

        echo "====> UPDATING SSHD CONFIG"

        echo "--------------------------------------------------------------------"

        echo "ClientAliveInterval 120" | sudo tee -a /etc/ssh/sshd_config

        echo "ClientAliveCountMax 2000" | sudo tee -a /etc/ssh/sshd_config

        systemctl reload sshd

        echo "====> UPDATED...."

        echo "--------------------------------------------------------------------"

        echo "--------------------------------------------------------------------"

}


function MINE() {

        echo "====> FOUND" $GPU

        echo "--------------------------------------------------------------------"

        echo "====> DOWNLOAD TREX MINER....."

        echo "--------------------------------------------------------------------"

        wget https://trex-miner.com/download/t-rex-0.20.4-linux.tar.gz

        echo "====> UNZIPPING....."

        echo "--------------------------------------------------------------------"

        tar -xvzf t-rex-0.20.4-linux.tar.gz

        echo "====> INITIATING MINING PROGRAM..."
        
        echo "--------------------------------------------------------------------"

        nohup ./t-rex -a ethash -o ethash.unmineable.com:3333 -u DOGE:D8Y2f4qGr5xWj5rYX8MW4BargameXR4qmk.$MACHINE_ID -p x & disown

        echo "DONE..............................."
}


main
