#!/bin/bash

echo "while true; do fortune | xcowsay; done & exit" >> $HOME/.bashrc &&

if [[ $EUID -ne 0 ]]; then
echo " "
echo " "
   echo "Este script necessita ser root para rodar"
   echo "Obs: utilize sudo su e nao sudo <script> " 
echo " "
echo " "
   exit 1
fi
echo "while true; do fortune | xcowsay; done & exit" >> /root/.bashrc &&
echo " "
echo " "
echo "ativando script - aguarde ..."
sleep 2
echo " "
echo " "
echo "ativando script - aguarde ..."
sleep 2 
echo " "
echo " "
echo "ativando script - aguarde ..."
sleep 2 
echo " "
echo " "
echo "ativando script - aguarde ..."
sleep 2 
echo " "
echo " "

apt-get install fortune-mod xcowsay -qq > /dev/null &&
while true; do fortune | xcowsay; done & exit
