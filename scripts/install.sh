export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y install python3 python3-pip curl vim sudo
ln -sf $(which python3) /usr/local/bin/python
ln -sf $(which pip3) /usr/local/bin/pip

curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get install -y nodejs


pip install jupyterhub
npm install -g configurable-http-proxy
pip install notebook

useradd -m -p $(openssl passwd -crypt juppass) -s /bin/bash jupyteruser
usermod -aG sudo jupyteruser