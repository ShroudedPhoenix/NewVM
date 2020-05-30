#!/bin/bash

#Installs Atom = Works
function AtomInstall() {
    sudo snap install atom --classic
}

#Installs MySQL = Works
function MysqlInstall() {
    sudo apt-get update
    sudo apt-get install mysql-server
    sudo mysql_secure_installation utility
    sudo systemctl start mysql
}

#Installs FreqTrade = Dev
function FreqtradeInstall() {
    sudo apt-get install python3-venv libatlas-base-dev
    sudo apt install git
    git clone https://github.com/freqtrade/freqtrade.git
    cd freqtrade

    bash setup.sh -i
}

#Installs HyperOpt for FreqTrade = Dev
function HyperOptInstall() {
    python3 -m pip install -e .[hyperopt]
}

#Installs Python = Works
function PythonInstall() {
    sudo apt update
    sudo apt-get install build-essential git
    sudo apt install python
    sudo apt install python3
    sudo apt-get install python3-pip
    sudo apt-get install curl
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py
}

#Installs Pycharm = Works
function PycharmInstall() {
    sudo snap install pycharm-community --classic
    pycharm-community
}

#Installs Anaconda = Dev
function AnacondaInstall() {
    sudo apt-get update
    sudo apt-get install curl
    cd /tmp 
    curl https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh –O
    sha256sum Anaconda3–2019.07–Linux–x86_64.sh
    bash Anaconda3-2019.07-Linux-x86_64.sh
}

#Installs FreqTrade Manually = Dev
function ManualFreqtrade() {
    sudo apt install git
    git clone https://github.com/MontrealTradingGroup/freqtrade.git
    cd freqtrade
    sudo apt-get install make build-essential python3-dev
    git checkout develop
    ./setup.sh --install
    source .env/bin/activate
    python3.8 ./freqtrade/main.py -c config.json
}
