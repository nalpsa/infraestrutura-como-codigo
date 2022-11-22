#!/bin/bash

clear

## ARMAZENA A SENHA DO USUÁRIO PARA USAR NO SCRIPT ##
read -p "Digite a sua senha para iniciar a execução do script: " -s PWDSH

echo "Preparando o ambiente..."
echo "."
echo "Excluindo diretórios que possam ter existido..."
echo -e $PWDSH | sudo rm -rf /publico/ /adm/ /ven/ /sec/
echo "."

echo "Excluindo grupos que possam ter existido..."
echo -e $PWDSH | sudo groupdel -f GRP_ADM
echo -e $PWDSH | sudo groupdel -f GRP_VEN
echo -e $PWDSH | sudo groupdel -f GRP_SEC
echo "."

echo "Excluindo usuários que possam ter existido..."
echo -e $PWDSH | sudo userdel -rf carlos
echo -e $PWDSH | sudo userdel -rf maria
echo -e $PWDSH | sudo userdel -rf joao
echo -e $PWDSH | sudo userdel -rf debora
echo -e $PWDSH | sudo userdel -rf sebastiana
echo -e $PWDSH | sudo userdel -rf roberto
echo -e $PWDSH | sudo userderl -rf josefina
echo -e $PWDSH | sudo userdel -rf amanda
echo -e $PWDSH | sudo userdel -rf rogerio

echo "."
echo "Criando os diretórios..."
echo -e $PWDSH | sudo mkdir -p {/publico,/adm/,/ven,/sec}

echo "."
echo "Criando os grupos..."
echo -e $PWDSH | sudo groupadd GRP_ADM
echo -e $PWDSH | sudo groupadd GRP_VEN
echo -e $PWDSH | sudo groupadd GRP_SEC

echo "."
echo "Criando os usuários..."
echo -e $PWDSH | sudo useradd carlos -c "Carlos" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd maria -c "Maria" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd joao -c "Joao" -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd debora -c "Debora" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd sebastiana -c "Sebastiana" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd roberto -c "Roberto" -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd josefina -c "Josefina" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd amanda -c "Amanda" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)
echo -e $PWDSH | sudo useradd rogerio -c "Rogerio" -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt Fgn@2022)

echo "."
echo "Configurando as permissões..."
echo -e $PWDSH | sudo chown root:GRP_ADM /adm
echo -e $PWDSH | sudo chown root:GRP_VEN /ven
echo -e $PWDSH | sudo chown root:GRP_SEC /sec

echo -e $PWDSH | sudo chmod 770 /adm
echo -e $PWDSH | sudo chmod 770 /ven
echo -e $PWDSH | sudo chmod 770 /sec
echo -e $PWDSH | sudo chmod 777 /publico

clear
echo "Script Finalizado com sucesso! "
