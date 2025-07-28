#!/bin/bash

echo "Criando Diretórios, Grupos e Usuários..."

echo "Criando Diretórios e Dando Permissões..."
mkdir -p /projeto/publico /projeto/adm /projeto/ven /projeto/sec
chmod 777 /projeto/publico
chmod 770 /projeto/adm /projeto/ven /projeto/sec
chmod 777 /projeto/
echo "Diretórios e Permissões Criados!"

echo "Criando Grupos de Usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos Criados!"

echo "Criando Usuários..."
useradd -m -s /bin/bash carlos -p $(openssl passwd -crypt senha123) 
useradd -m -s /bin/bash maria -p $(openssl passwd -crypt senha123)  
useradd -m -s /bin/bash joao -p $(openssl passwd -crypt senha123)  
useradd -m -s /bin/bash debora -p $(openssl passwd -crypt senha123)  
useradd -m -s /bin/bash sebastiana -p $(openssl passwd -crypt senha123)   
useradd -m -s /bin/bash roberto -p $(openssl passwd -crypt senha123)  
useradd -m -s /bin/bash josefina -p $(openssl passwd -crypt senha123)  
useradd -m -s /bin/bash amanda -p $(openssl passwd -crypt senha123)  
useradd -m -s /bin/bash rogerio -p $(openssl passwd -crypt senha123) 
echo "Usuários Criados!"

echo "Adicionando os Grupos nos Diretórios..."
chown root:GRP_ADM /projeto/adm
chown root:GRP_VEN /projeto/ven
chown root:GRP_SEC /projeto/sec
echo "Grupos Adicionados nos Diretórios!"

echo "Adicionando Usuários aos Grupos..."
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio
echo "Usuários Adicionados aos Grupos!"

echo "Fim do Script!"
