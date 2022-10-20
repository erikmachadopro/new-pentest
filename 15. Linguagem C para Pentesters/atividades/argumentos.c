#include <stdio.h>

int main(int argc, char *argv[]){
	if(argc<2){
		printf("PORTSCAN \n");
		printf("Modo de uso: ./argumentos_repeticoes 192.168.0.1 80 \n");
	}else{
		printf("Varrendo Host %s na Porta %s \n",argv[1],argv[2]);
	}
}
