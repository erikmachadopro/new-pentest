/*

*/

#include <stdio.h>

int main(void){

	char text[10];

	printf("ENTRADA DE DADOS FGETS \n\n");

	printf("Qual o seu nome? \n");
	fgets(text,10,stdin);
	printf("\n");

	printf("Nome: %s \n", text);

	return 0;
}
