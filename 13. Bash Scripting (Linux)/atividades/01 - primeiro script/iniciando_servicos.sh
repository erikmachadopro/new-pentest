#!/bin/bash

echo "######################################"
echo "         Iniciando Serviços"
echo "######################################"
echo ""
echo "Digite o serviço a ser iniciado:"
read var1
service $var1 restart
echo ""
echo "Serviços ativos:"
echo "######################################"
ps aux | grep $var1
echo ""
echo "Portas Abertas"
echo "######################################"
netstat -nlpt
