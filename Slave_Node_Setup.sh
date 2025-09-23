#!/bin/bash
sudo dnf update -y
sudo dnf install git -y
sudo dnf install java-21-amazon-corretto -y
sudo dnf install python3 -y
sudo dnf install pyhton3-pip -y
sudo dnf install openssh-server -y
sudo systemctl enable --now sshd
sudo dnf update -y