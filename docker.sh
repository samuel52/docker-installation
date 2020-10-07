#!/bin/sh

echo "First, update your existing list of packages"
sudo apt update

echo "install a few prerequisite packages"
sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo "GPG key for the official Docker repository"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Docker repository to APT sources"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

echo "update the package"
sudo apt update

apt-cache policy docker-ce

echo "install Docker"
sudo apt install docker-ce

echo "check docker status"
sudo systemctl status docker
