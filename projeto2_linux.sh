#"/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando apache2..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando aplicação da web..."

cd /tmp/

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando arquivos da aplicação para diretorio apache..."

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado..."
