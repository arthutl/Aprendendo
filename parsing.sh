#!/bin/bash

if [ "$1" == "" ]	

		then 
	echo -e "\E[01;31m##############################################################################"; tput sgr0
	echo

	echo             "                             UTILIZE O COMANDO ASSIM                             " 
	echo             "                          $0 exemplo.com.br                                   "

	echo
	echo -e "\E[01;31m##############################################################################"; tput sgr0


	else
	echo -e "\E[01;31m##############################################################################"; tput sgr0
	echo
	echo             "==>                           HOSTS ENCONTRADOS                           <== " 
	echo
	echo -e "\E[01;31m##############################################################################"; tput sgr0
	echo
			wget -q $1
			grep "href" index.html | cut -d "/" -f3 | cut -d '"' -f1 | grep "\." | grep -v "www" | sort -u >$1
			rm index.html
			cat $1

	echo
	echo
	echo
	echo -e "\E[01;31m##############################################################################"; tput sgr0
	echo
	echo             "==>                           RESOLVENDO HOSTS                             <=="
	echo
	echo -e "\E[01;31m##############################################################################"; tput sgr0
	echo
			for url in $(cat $1);do host $url;done | grep " has " 
	echo
	echo
	echo -e "\E[01;31m##############################################################################"; tput sgr0
	echo
	echo -e "\E[05;35m                              SCRIPT FINALIZADO                             "; tput sgr0
	echo
fi
