#!/bin/sh

if [ ! -d /home/$default_username ]; then
    useradd -m -p $(openssl passwd -crypt $default_password) -s /bin/bash $default_username
    usermod -aG sudo $default_username
fi


jupyterhub -f /app/jupyterhub/jupyterhub_config.py