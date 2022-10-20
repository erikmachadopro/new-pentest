#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

/*
man 7 ip
man socket
cat /etc/protocols -> ver os protocolos
man connect


*/

int main(void){
	int meusocket;
	int conecta; //responsável pela conexão

	struct sockaddr_in alvo;
	meusocket = socket(AF_INET, SOCK_STREAM, 0); //0 -> protocolo utilizado
	alvo.sin_family = AF_INET;
	alvo.sin_port = htons(80);
	alvo.sin_addr.s_addr = inet_addr("192.168.0.1"); //inet_addr -> converte o endereço

	conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo);

	if(conecta == 0){
		printf("Porta Aberta \n");
		close(meusocket);
		close(conecta);
	}else{
		printf("Porta Fechada \n");
	}
}
