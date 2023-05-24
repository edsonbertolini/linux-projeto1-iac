#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e adicionando nos grupos..."

useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt adm123) -c "CARLOS_ADM" carlos
useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt adm123) -c "MARIA_ADM"  maria 
useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt adm123) -c "JOAO_ADM"  joao  

useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt adm123) -c "DEBORA_VEN" debora
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt adm123) -c "SEBASTIANA_VEN" sebastiana 
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt adm123) -c "ROBERTO_VEN" roberto  

useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt adm123) -c "JOSEFINA_SEC" josefina
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt adm123) -c "AMANDA_SEC"  amanda
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt adm123) -c "ROGERIO_SEC"  rogerio 

echo "Permissao dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "FIM DO SCRIPT !!!"