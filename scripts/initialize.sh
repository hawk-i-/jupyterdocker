#!/bin/sh
useradd -m -p $(openssl passwd -crypt $default_password) -s /bin/bash $default_username
usermod -aG sudo $default_username
