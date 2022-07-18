#!/bin/bash

echo "***** Install stuff for ansible *****"

sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y git curl python3.10 python3-apt python3.10-distutils python3.10-venv
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python3 -m pip install --user ansible

echo "**** Start setup with ansible ****"

ansible-playbook playbook-20.04.yaml