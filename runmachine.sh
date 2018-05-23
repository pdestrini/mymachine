#!/bin/bash
### ONLY FOR CENTOS7

echo Aggiorna-Installa pacchetti RPM addizionali
sudo yum -y install epel-release
#sudo yum -y update
#sudo reboot

echo Installa Java
sudo yum -y install java-1.8.0-openjdk.x86_64

#java -version

echo Eseguo copia di backup del profile
sudo cp /etc/profile /etc/profile_backup

echo Inserisco le variabili JAVA_HOME e JRE_HOME
echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
source /etc/profile

echo Scarico ed Installo Jenkins
cd ~ 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum -y install jenkins

echo Abilito e Starto il servizio Jenkins
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service

echo Imposto regola Firewall per porta 8080
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --reload

echo Installazione Terminata
