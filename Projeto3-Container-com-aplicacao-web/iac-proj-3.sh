#!/bin/bash

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

fileId=10YbSM8LbDNLCjU-YBpzflvmU1kzw_3Pe
fileName=banco.zip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName} 

unzip banco.zip

cd /dados/web

fileId=1UziSYcyL-olN_SIZgfWWZUSJQlSEc8o9
fileName=site.zip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName} 

unzip site.zip

clear

echo "Script concluido com Sucesso!"

cd /dados

