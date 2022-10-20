#!/bin/bash

echo "##########################################################"
echo "                        SEMÁFORO"
echo ""
echo "Para esse exemplo use as cores verde, amarelo ou vermelho"
echo "##########################################################"
echo ""
echo "Qual a cor do semáforo?"

read cor
echo ""
if [ "$cor" == "verde" ]
then
	echo "SIGA EM FRENTE"
elif [ "$cor" == "amarelo" ]
then
	echo "AGUARDE"

else
	echo "PARE"
fi #fim do if
