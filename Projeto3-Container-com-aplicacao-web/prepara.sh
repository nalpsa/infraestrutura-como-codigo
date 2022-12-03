#!/bin/bash


MEULOCAL=$(pwd)

clear
echo "Iniciando o script..."
echo "Preparando o ambiente..."
apt-get update
apt-get upgrade -y
mkdir -p /dados/{db,web}

echo "Instalando o Unzip e o Curl para a etapa de download dos arquivos da aplicacao..."
apt-get install unzip curl -y

echo "Baixando os arquivos do Banco e aplicação que estao no google drive..."

cd /dados/db

fileId=1EkL1ZG7_n4ed7r72IuAkzhINxTL9Zf02
fileName=db.zip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName} 

unzip db.zip

cd /dados/web

fileId=1ikk2YGkK8qpSNBS9A3JBTOc1yNHPBRC7
fileName=site.zip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName} 

unzip site.zip

clear

echo "Script concluido com Sucesso!"

cd $MEULOCAL

echo "Iniciando o docker-compose..."
docker-compose up -d

MEUIP=$(hostname -I)
echo "O(s) Seu endereço de IP é o(s)" $MEUIP
echo "Caso na linha acima informe mais de um IP voce conseguira acessar o wordpress "
echo "através do IP que estiver dentro da sua faixa de rede da sua maquina"
