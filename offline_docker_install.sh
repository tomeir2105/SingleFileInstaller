#!/bin/bash

sudo dpkg -i *.deb
sudo apt-get install -f -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

