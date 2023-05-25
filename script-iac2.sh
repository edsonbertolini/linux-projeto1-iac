#!/bin/bash

echo "atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o apache..."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Entrando no /tmp e baixando os arquivos da aplicacao..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Descompactando arquivo..."

unzip /tmp/main.zip

echo "Copiando arquivos para o diretorio padrao do apache "

cp -R /tmp/linux-site-dio/main/* /var/www/html/