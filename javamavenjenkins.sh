#!/bin/bash
apt update
apt install openjdk-8-jdk -y
java -version
apt install maven -y
mvn -version
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
