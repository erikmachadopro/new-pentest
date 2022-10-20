#!/bin/bash
echo "O cliente autorizou o Pentest?"
echo ""
echo "Opções"
echo "1 - Sim"
echo "2 - Não"
read resposta
echo ""
case $resposta in
"1")
	echo "PODE INICIAR O PENTEST"
;;
"2")
	echo "PENTEST PENDENTE! AGUARDE O CLIENTE AUTORIZAR"
;;
esac
