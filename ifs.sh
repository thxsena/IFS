#!/bin/bash

#----------------------------
# Thiago {S3N4}
# Facebook = /thiago.sena.3956
# Github - github.com/ticosena
# Execute como Root
# Para executar Digite: chmod +x Ifs.sh
# Ifs.sh
#------------------------------------

clear

sh_Principal () {

cat <<!

  ██╗ ███████╗███████╗      
  ██║ ██╔════╝██╔════╝      
  ██║ █████╗  ███████╗      
  ██║ ██╔══╝  ╚════██║      
  ██║ ██║     ███████║ ██╗ ██╗
  ╚═╝ ╚═╝     ╚══════╝ ╚═╝ ╚═╝ Version 1.0


#--------------------------
# 1) Enable and Disable Interfaces
# 2) Change Network Address
# 3) View Available interfaces
# 4) Add New interfaces
# 5) Exit 
#--------------------------

!
	echo -n -e "\e[01;31m[*]\e[00m Select the Option: "
	read selec
case $selec in
	1) sh_deen ;;
	2) sh_new ;;
	3) sh_dis ;;
	4) sh_adr ;;
	5) sh_exit ;; 
esac

}

sh_exit () {
	
	echo "----------------------------------------------"
	echo -e "\e[01;31m Thank you for using the tool ! \e[00m"
	echo "----------------------------------------------"
	
	sleep 2
	exit
	sleep 2
	clear
}

sh_adr () {

	echo
	echo -e "\e[01;31m[*] Example name of a new network (eth0:0) \e[00m"
	echo
	
	echo -n -e "\e[01;31m[*]\e[00m New interface name: "
	read nome
	
	echo -n -e "\e[01;31m[*]\e[00m IP of the new network: "
	read reds
	
	ifconfig "$nome" "$reds"
	echo
	echo -e "\e[01;31m[*] New interface servant\e[00m"

	sleep 2
	clear

sh_Principal
}

sh_dis () {

	echo -e "\e[01;31m[*]\e[00m The Following Interfaces are available"
	echo
	
	sleep 2
	echo
	ifconfig -a 
	
	echo
	sleep 5
	clear

sh_Principal
}

sh_new () {
	
cat <<!

> 1) eth0
> 2) wlan0

!
	echo -n -e "\e[01;31m[*]\e[00m Select the Interface you want to change: "
	read inse
case $inse in

2)
	echo -n -e "\e[01;31m[*]\e[00m New IP Address: "
	read wl
	
	ifconfig -a wlan0 "$wl"
	sleep 3
	
	echo
	echo -e "\e[01;31m[*] New Address\e[00m"
	
	sleep 2
	clear

;; 


1)
	echo -n -e "\e[01;31m[*]\e[00m New IP Address: "
	read ip
	
	ifconfig -a eth0 "$ip"
	sleep 3
	
	echo
	echo -e "\e[01;31m[*] New Address\e[00m"
	
	sleep 2
	clear

;;  

esac

sh_Principal
}

sh_deen () {

cat <<!

> 1) Enabled 
> 2) Disable 

!
	echo -n -e "\e[01;31m[*]\e[00m Select Option: "
	read opt
case $opt in

2)
	echo -n -e "\e[01;31m[*]\e[00m Select Interfaces: "
	read dow
	
	ifconfig "$dow" down
	sleep 3
	
	echo
	echo -e "\e[01;31m[*] Interface Disabled\e[00m"
	
	sleep 2
	clear

;;

1)
	
	echo -n -e "\e[01;31m[*]\e[00m Select Interfaces: "
	echo
	read inter
	
	ifconfig "$inter" up
	sleep 5
	
	echo
	echo -e "\e[01;31m[*] Interface Enabled\e[00m"
	
	sleep 2
	clear
;;

esac

sh_Principal
}
sh_Principal