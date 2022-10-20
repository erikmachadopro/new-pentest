#!/bin/bash
if [ "$1" == "" ]
then
	echo "MANUAL"
	echo "Modo de uso: $0 192.168.0.1[IP] 80[Porta]"
else
	echo "Explorando o host: $1 na porta: $2"
fi
