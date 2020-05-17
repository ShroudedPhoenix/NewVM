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

#Installs FreqTrade
function FreqtradeInstall() {
    sudo apt-get install python3-venv libatlas-base-dev
    sudo apt install git
    git clone https://github.com/freqtrade/freqtrade.git
    cd freqtrade

    bash setup.sh -i
}

#Installs HyperOpt for FreqTrade
function HyperOptInstall() {
    python3 -m pip install -e .[hyperopt]
}

#Installs Python = Works
function PythonInstall() {
    sudo apt update
    sudo apt install python
    sudo apt install python3
}

#Installs Pycharm = Works
function PycharmInstall() {
    sudo snap install pycharm-community --classic
    pycharm-community
}

#Installs Anaconda
function AnacondaInstall() {
    sudo apt-get update
    sudo apt-get install curl
    cd /tmp
    curl –O https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
    sha256sum Anaconda3–2019.07–Linux–x86_64.sh
    bash Anaconda3-2019.07-Linux-x86_64.sh
}

#Installs FreqTrade Manually
function ManualFreqtrade() {
    sudo ./build_helpers/install_ta-lib.sh
    python3 -m venv .env
    source .env/bin/activate
    git clone https://github.com/freqtrade/freqtrade.git
    cd freqtrade
    python3 -m pip install --upgrade pip
    python3 -m pip install -e .
    # Initialize the user_directory
    freqtrade create-userdir --userdir user_data/
    # Create a new configuration file
    freqtrade new-config --config config.json
}
