#!/bin/bash
sudo dnf update -y
sudo dnf install git -y
sudo dnf install java-21-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf upgrade
sudo dnf install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo mount -o remount,size=2G /tmp
sudo dnf update -y
sudo dnf install python3 -y
sudo dnf install python3-pip -y
pip3 install ansible
sudo dnf update -y
#add this comment
