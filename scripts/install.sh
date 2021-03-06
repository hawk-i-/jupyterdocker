#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y install python3 python3-pip curl vim sudo
ln -sf $(which python3) /usr/local/bin/python
ln -sf $(which pip3) /usr/local/bin/pip

curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get install -y nodejs


pip install wheel
pip install jupyterhub jupyterlab notebook
pip install ipywidgets
npm install -g configurable-http-proxy
