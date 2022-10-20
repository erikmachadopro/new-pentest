#!/bin/bash

#
# Objetivo
# Script para descobrir quais hosts na rede possuem uma determinada porta aberta.
# O usuário deve informar a rede e a porta que deseja verificar.
#
# scan mais silencioso.

if [ "$1" == "" ]
then
	echo "SCAN NET - PORTSCAN NETWORK"
	echo "Modo de uso: $0 REDE PORTA"
	echo "Exemplo: $0 192.168.0 80"
else
for ip in {1..254};
do
#hping3 -S -c 1 $1.$ip;
#hping3 -S -c 1 $1.$ip 2> /dev/null; # retorna os itens sem a parte de erro
#hping3 -S -c 1 $1.$ip 2> /dev/null | grep "flags=SA"; # retorna os itens sem a parte de erro e somente quem estiver com a porta aberta (SA)
#hping3 -S -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2; #retorna somente o endereço ip
hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2; # retorna a segunda parte após o sinal de igual
done
fi
