/*
o scanf não faz a tratativa da quantidade de bytes que deveria recer com as strings 
*/

#include <stdio.h>

int main(void){

	int porta;
	char ip[16];

	printf("\n");
	printf("ENTRADA DE DADOS SCANF \n");
	printf("\n");

	printf("Digite o IP:\n");
	scanf("%s", &ip);
	printf("\n");

	printf("Digite a Porta:\n");
	scanf("%i", &porta);
	printf("\n");

	printf("Varrendo o Host: %s na Porta %i \n",ip,porta);

	return 0;
}
