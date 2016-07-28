#!/bin/bash

###################################
# Criador por Thiago Sena ({S3N4})#
###################################

# chmod +x D3c0d.sh
# ./D3c0d.sh



#Versão 1.0

sh_Principal () {

cat <<!

    # Created by Thiago{S3N4} v1.0

██████╗ ██████╗  ██████╗ ██████╗ ██████╗
██╔══██╗╚════██╗██╔════╝██╔═████╗██╔══██╗
██║  ██║ █████╔╝██║     ██║██╔██║██║  ██║
██║  ██║ ╚═══██╗██║     ████╔╝██║██║  ██║
██████╔╝██████╔╝╚██████╗╚██████╔╝██████╔╝
╚═════╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝

#---------------------------#
# 1) Base64   2)Hexadecimal #
#			    #
#         3)Exit	    #
#---------------------------#
!

	echo -n "Escolha uma Opção: "
	read opcao;
case $opcao in
	1) sh_base ;;
	2) sh_hexa ;;
	3) sh_sair ;;
esac
}

#Hexadecimal

sh_hexa () {

cat <<!

|-------------------|
|1)Encrypt 2)Decrypt|
|-------------------|

!

	echo -n "Qual a Opção: "
	read options
case $options in
2)
	echo -n "Decrypt: "
	read dec
	echo "$dec" | xxd -r -p
	sleep 5
	clear
;;

1)
	echo -n "Encrypt: "
	read enc
	echo "$enc" | xxd -ps
	sleep 5
	clear
;;

esac

sh_Principal

}

#base64

sh_base () {

cat <<!

|--------------------|
|1)Encrypt  2)Decrypt|
|--------------------|

!

	echo -n "Qual opção: "
	read opcao
case $opcao in
2)
	echo -n "Decrypt: "
	read decry
	echo "$decry" | base64 -d
	sleep 5
;;

1)
	echo -n "Encrypt: "
	read encry
	echo "$encry" | base64
	sleep 5
;;

esac

clear

sh_Principal
}

#Exit

sh_sair () {
	clear
	echo "Saindo..."
	sleep 2
	clear
	exit
}


sh_Principal
