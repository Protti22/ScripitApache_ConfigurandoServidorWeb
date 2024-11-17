#!/bin/bash

echo "Atualizando Servidor"
apt-get update -y
apt-get upgrade -y
apt install apache2 -y
apt install unzip -y

echo
echo "Baixando Aplicação"
cd /temp
wget https://github.com/Protti22/VNArg/archive/refs/heads/main.zip
unzip main.zip
cd VNArg-main
cp -R * /var/www/html/
echo
echo "Finalizando Processo..."
echo "-----------------------"
echo
echo "-_-_-_-_-_-_-_-_-_-_-_-_-"
echo "Finalizado"
