#!/bin/bash

cd ~

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git

sudo apt-get -y install unzip

#echo 'export PS1="[\[\e[33m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\] \W]\\$ "' >> bashrc

#source .bashrc

wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

unzip terraform_0.11.13_linux_amd64.zip

sudo mv terraform /usr/local/bin/

terraform --version

# Create environment variable for correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# Add the Cloud SDK distribution URI as a package source
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update the package list and install the Cloud SDK
sudo apt-get update -y && sudo apt-get install -y google-cloud-sdk

# Install kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
 sudo apt-get update -y
sudo apt-get install -y kubectl

mkdir -p ~/.jx/bin
curl -L https://github.com/jenkins-x/jx/releases/download/v2.0.68/jx-linux-amd64.tar.gz | tar xzv -C ~/.jx/bin
export PATH=$PATH:~/.jx/bin
echo 'export PATH=$PATH:~/.jx/bin' >> ~/.bashrc
exec bash


