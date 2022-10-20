#!/bin/bash

#
#Objetivo:
#
#Criar um script para descobrir hosts ativos utilizando o ping.
#O usuário deve informar a rede e o script deve retornar os hosts que respondem ao ping.
#

if [ "$1" == "" ]
then
	echo "MANUAL - PING SWEEP"
	echo "Modo de uso: $0 REDE"
	echo "Exemplo: $0 192.168.0"
else
# construir a quantidade de hosts - possível até 254 hosts em rede classe C
for host in {1..254};
do
#ping -c 1 $1.$host; # retorna todas as linhas de informações do ping
#ping -c 1 $1.$host | grep "64 bytes"; # retona somente as linhas com o texto 64 bytes ou seja que retornaram o ping
#ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1; # incluindo para retornar o que vier antes do ':'
#ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4; #incluido para retornar somente a quarta coluna
#ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4; # retorno somente dos resultados positivos para o ping e a quarta coluna após o primeiro espaço
ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'; # incluido que o que vier após o último número(.$) deve ser substituido por vazio(//)
done # fim do comando do
fi #fim do comando for
