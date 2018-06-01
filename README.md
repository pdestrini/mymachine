# Project Title
Vagrant_Jenkins 

# Getting Started
Clone del repository git@github.com:pdestrini/mymachine.git
eseguire vagrant up

# Prerequisites
Installazione ultima versione Vagrant
Installazione ultima versione VirtualBox

# Installing
- git clone https://github.com/pdestrini/mymachine.git

Nel vagrantfile è stata configurata un rete private con indirizzo ip: "192.168.56.23"
Tramite il provisiong del Vagranfile viene eseguito lo scrip install_jenkins.sh che installerà jenkins sulla macchina
- vagrant up
- vagrant ssh

http://192.168.56.23:8080/

Copiare dal server vagrant la key presente in /var/lib/jenkins/secrets/initialAdminPassword ed inserirla nel box "Password amministratore" delle console jenkins
Creare da console l'utente jenkins

# Built With
Git
Virtual Box
Vagrant
Jenkins

# Versioning
Prima Versione

# Authors
Paolo Destrini

# Acknowledgments
* Eugenio Marzo
* Manuel Felici
