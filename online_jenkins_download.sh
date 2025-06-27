#!/bin/bash
mkdir -p jenkins-offline
cd jenkins-offline

docker pull jenkins/jenkins:lts
docker save jenkins/jenkins:lts -o jenkins-image.tar

