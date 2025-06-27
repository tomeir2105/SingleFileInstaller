#!/bin/bash
mkdir -p docker-offline
cd docker-offline
sudo apt-get update
sudo apt-get install --download-only \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin
cp /var/cache/apt/archives/*.deb .

