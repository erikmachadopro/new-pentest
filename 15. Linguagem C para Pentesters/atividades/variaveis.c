#include <stdio.h>

/*

%f -> float
%s -> string
%i -> int

%.1f -> mostrar apenas uma casa após ponto flutuante

*/

int main(void){

	int porta = 80;
	char ip[] = "192.168.0.1";
	float version = 1.1;
	
	printf("\n");
	printf("Programa Váriaveis\n\n");
	printf("Scan Versão: %.1f \n", version);
	printf("Varrendo host: %s na Porta %i \n", ip, porta);	
	return 0;
}
