#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

/*
man 7 ip
man socket
cat /etc/protocols -> ver os protocolos
man connect


*/

int main(int argc, char *argv[]){
	int meusocket;
	int conecta; //responsável pela conexão

	int porta;
	int inicio = 0;
	int final = 65535;
	char *destino;
	destino = argv[1];

	struct sockaddr_in alvo;

	for(porta = inicio; porta < final; porta++){
		meusocket = socket(AF_INET, SOCK_STREAM, 0); //0 -> protocolo utilizado
		alvo.sin_family = AF_INET;
		alvo.sin_port = htons(porta);
		alvo.sin_addr.s_addr = inet_addr(destino); //inet_addr -> converte o endereço

		conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo);

		if(conecta == 0){
			printf("Porta %d - status [ABERTA] \n",porta);
			close(meusocket);
			close(conecta);
		}else{
			close(meusocket);
			close(conecta);
		}
	} // fim for
}
