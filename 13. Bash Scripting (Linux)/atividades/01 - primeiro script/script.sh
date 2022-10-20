#!/bin/bash

#Meu Primeiro Script
echo "###################################"
echo "Meu primeiro script bash" #echo exibe texto na tela
echo "###################################"
echo " "

#usar comandos do linux
echo "Sistema ligado por:"
uptime -p #exibe quanto tempo o sistema está ligado
echo " "

#exibir o comando anterior em uma única linha
echo "Sistema ligado por:" $(uptime -p)
echo ""

#mais comandos linux
echo "Diretório atual:" $(pwd)
echo "Usuário atual:" $(whoami) 
echo ""

#uso de variáveis

#variável fixa
echo "#####################"
echo "   Variável fixa"
echo "#####################"
ip=192.168.0.1
echo "Varrendo o host:" $ip
echo ""

#usando variável com entrada do usuário

echo "######################################"
echo "  Variável com entrada do usuário"
echo "######################################"
echo "Digite o ip:"
read ip_digitado
echo "Varrendo o ip:" $ip_digitado
echo ""

#mais de uma variável na linha
echo "###########################" 
echo "    Múltiplas variáveis"
echo "###########################"
echo "Digite o segundo ip:"
read segundo_ip_digitado
porta=80
echo "Varrendo o host: $segundo_ip_digitado na porta: $porta"
echo ""

#jogando entradas para um programa
echo "#######################################"
echo "  Jogando entradas para um programa"
echo "#######################################"

echo "Digite o IP:"
read outro_ip
echo "Efetuando PING no host:" $outro_ip
ping -c5 $outro_ip #alterar o número 5 para a quantidade de pacotes que deseja enviar

