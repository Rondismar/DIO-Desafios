#!/bin/bash

# Script de criação de usuario
#

echo "criando os diretório"

mkdir /opt/publico
mkdir /opt/adm
mkdir /opt/ven
mkdir /opt/sec


echo "diretórios criado"
echo "Criando os grupos "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuarios "

#retirado o parametro -crypt para gerar a senha criptografada, no ubuntu não aceita esse comando

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "usuarios criados e adicionados ao grupos"

echo "editando as permissões dos grupos"


chown root:GRP_ADM /opt/adm
chown root:GRP_VEN /opt/ven
chown root:GRP_SEC /opt/sec

chmod 770 /opt/adm
chmod 770 /opt/ven
chmod 770 /opt/sec 
chmod 777 /opt/publico 

echo "fim."


