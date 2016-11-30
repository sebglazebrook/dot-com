#!/bin/bash

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo " deb http://apt.dockerproject.org/repo debian-jessie main" | sudo tee /etc/apt/sources.list.d/docker.list
echo " deb http://cdn.rawgit.com/sebglazebrook/debian-pkg-repo/0bc3575813da95c899b72a8a91b06e9c8e6d35e4 jessie main" | sudo tee /etc/apt/sources.list.d/sebglazebrook.list
sudo apt-get update

sudo apt-get install --yes --force-yes seb-dev-env

# Add user to docker group so they don't require sudo
sudo gpasswd --add vagrant docker

# ln -s ~/ssh/id_rsa ~/.ssh/id_rsa
