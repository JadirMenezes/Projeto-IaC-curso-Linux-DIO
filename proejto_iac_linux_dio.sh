#!/bin/bash

echo "Criando diretorios..."

mkdir /publico, /adm, /ven, /sec

useradd carlos -m -c "Carlos Silva" -s /bin/bash -p $(mkpasswd -m sha-512 Senh123)
useradd maria -m -c "Maria Menezes" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd joao -m -c "Joao Carlos" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd debora -m -c "Debora Carvalho" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd sebastiana -m -c "Sebastiana Nogueira" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd roberto -m -c "Roberto Santos" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd josefina -m -c "Josefina Silva" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd amanda -m -c "Amanda Oliveira" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)
useradd rogerio -m -c "Rogerio Dias" -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)

echo "Criando grupos com os seus usuarios"

groupadd -U carlos,maria,joao GRP_ADM  
groupadd -U debora,sebastiana,roberto GRP_VEN 
groupadd -U josefina,amanda,rogerio GRP_SEC

Echo "Atribuindo o dono e os grupos para os diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

echo
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


