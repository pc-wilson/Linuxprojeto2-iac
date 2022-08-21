#!/bin/bash

echo "Atualização de servidor..."

aptt upadate
apt upgrade -y

echo "Instalando apache2 e unizp ..."

apt install apache2 -y
apt install unzip -y

echo "Acessando o diretorio tmp..."
cd /tmp/

echo "Baixando o diretorio do Github do Prof. Denilson..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo baixado..."
unzip main.zip

echo "acessando o diretorio descompactado..."
cd /tmp/linux-site-dio-main

echo "Copiando os arquivos para o diretorio padrao da Apache2..."
cp -R /tmp/linux-site-dio-main * /var/www/html/


echo "Script terminado e realizado com sucesso..."
