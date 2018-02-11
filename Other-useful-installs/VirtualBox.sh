#!/bin/bash

#Install VirtualBox
apt-get update 
sleep 1
apt-get upgrade
sleep 1
apt-get install dkms -y 
apt-get install virtualbox -y

#Download Ubuntu 17.1