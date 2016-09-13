#!/bin/bash

###################################
# Criador por Thiago Sena ({S3N4})#
###################################

#Versão 1.0


#base64
sh_base() {
  reset
  echo -e '\033[1;37m#---------------------------#\033[0m'
  echo -e '\033[1;37m#\033[0m' '\033[1;33m1)Encrypt   2)Decrypt     \033[0m''\033[1;37m#\033[0m'
  echo -e '\033[1;37m#                         #\033[0m'
  echo -e '\033[1;37m#\033[0m''\033[1;33m        V)Voltar           \033[0m''\033[1;37m#\033[0m'
  echo -e '\033[1;37m#---------------------------#\033[0m'
  read -n1 -p "Qual opção: " opcao
case $opcao in
  1)
  reset
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  echo -n -e '\033[1;37m»» Encrypt: \033[0m'
  read encry
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  BS64=echo -n $encry | base64
  echo -e '\033[1;37m»» Texto codificado:\033[0m' $BS64
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  sleep 0.5
  echo
  read -n1 -p "Aperte qualquer tecla para voltar!" TECLA
case $TECLA in
    *) reset
    sh_Principal
esac
  ;;
  
  2)
  reset
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  echo -n -e '\033[1;37m»» Decrypt: \033[0m'
  read decry
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  BS64D=echo -n $decry | base64 -d
  echo -e '\033[1;37m»» Texto descodificado:\033[0m' $BS64D
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  sleep 0.5
  echo
  read -n1 -p "Aperte qualquer tecla para voltar!" TECLA
case $TECLA in
    *) reset
    sh_Principal
esac
  ;;

  V|v) echo
  reset
  sh_Principal
  ;;
  
  *) echo
  echo -e '\033[1;31mEssa opção não existe.\033[0m'
  sleep 1
  reset
  sh_Principal
  ;;
esac

}


#Hexadecimal
sh_hexa() {
  reset
  echo -e '\033[1;37m#---------------------------#\033[0m'
  echo -e '\033[1;37m#\033[0m' '\033[1;33m1)Encrypt   2)Decrypt     \033[0m''\033[1;37m#\033[0m'
  echo -e '\033[1;37m#                         #\033[0m'
  echo -e '\033[1;37m#\033[0m''\033[1;33m        V)Voltar           \033[0m''\033[1;37m#\033[0m'
  echo -e '\033[1;37m#---------------------------#\033[0m'
  read -n1 -p "Qual opção: " opcao
case $opcao in
  1)
  reset
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  echo -n -e '\033[1;37m»» Encrypt: \033[0m'
  read encry
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  HEXA=echo -n $encry | xxd -ps
  echo -e '\033[1;37m»» Texto em Hexadecimal:\033[0m' $HEXA
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  sleep 0.5
  echo
  read -n1 -p "Aperte qualquer tecla para voltar!" TECLA
case $TECLA in
    *) reset
    sh_Principal
esac
  ;;
  
  2)
  reset
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  echo -n -e '\033[1;37m»» Decrypt: \033[0m'
  read decry
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  HEXAD=echo -n $decry | xxd -r -p
  echo -e '\033[1;37m»» Hexadecimanl em Texto:\033[0m' $HEXAD
  echo -e '\033[1;37m←øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø→\033[0m'
  sleep 0.5
  echo
  read -n1 -p "Aperte qualquer tecla para voltar!" TECLA
case $TECLA in
    *) reset
    sh_Principal
esac
  ;;

  V|v) echo
  reset
  sh_Principal
  ;;
  
  *) echo
  echo -e '\033[1;31mEssa opção não existe.\033[0m'
  sleep 1
  reset
  sh_Principal
  ;;
esac

}


#Exit
sh_sair() {
  clear
  echo "Saindo..."
  sleep 1
  reset
  exit 
}


#MENU
sh_Principal() {
reset
echo -e '\033[1;35m    # Created by Thiago{S3N4} v1.0\033[0m'
echo -e '\033[1;36m
██████╗ ██████╗  ██████╗ ██████╗ ██████╗
██╔══██╗╚════██╗██╔════╝██╔═████╗██╔══██╗
██║  ██║ █████╔╝██║     ██║██╔██║██║  ██║
██║  ██║ ╚═══██╗██║     ████╔╝██║██║  ██║
██████╔╝██████╔╝╚██████╗╚██████╔╝██████╔╝
╚═════╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝
\033[0m'
 echo -e '\033[1;37m#---------------------------#\033[0m'
echo -e '\033[1;37m#\033[0m' '\033[1;33m1)Base64    2)Hexadecimal\033[0m' '\033[1;37m#\033[0m'
echo -e '\033[1;37m#                         #\033[0m'
echo -e '\033[1;37m#\033[0m''\033[1;33m         E)Exit            \033[0m''\033[1;37m#\033[0m'
echo -e '\033[1;37m#---------------------------#\033[0m'

  read -n1 -p "Escolha uma Opção: " opcao
case $opcao in
  1) sh_base ;;
  2) sh_hexa ;;
  E|e) sh_sair ;;
esac

}
sh_Principal
