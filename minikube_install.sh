#!/bin/bash

sudo su
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key
sudo echo deb http://apt.kubernetes.io/ kubernetes-xenial main > /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update 
sudo apt install docker.io kubectl

sudo systemctl status docker
sudo systemctl restart docker
sudo systemctl stop docker
sudo systemctl start docker
sudo systemctl daemon-reload 

#Test the program 
docker run hello-world  

kubectl version

sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#Install minicube
sudo apt install -y curl wget apt-transport-https
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube version

sudo apt-get install -y conntrack
sudo apt update && sudo apt upgrade 

sudo usermod -aG docker $USER && newgrp docker
docker images
docker ps
minikube start --driver=docker
minikube dashboard
minikube addons enable metrics-server



