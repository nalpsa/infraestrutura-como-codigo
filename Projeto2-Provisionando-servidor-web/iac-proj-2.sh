#!/bin/bash

clear
echo "Iniciando o script..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp linux-site-dio-main/* /var/www/html -R

clear
echo "Script concluido com Sucesso!"

MEUIP=$(hostname -I)
echo "Apache instalado e configurado com sucesso, ele pode ser acessado em: "$MEUIP