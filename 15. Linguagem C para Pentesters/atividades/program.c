// Meu primeiro programa em C

/*

=> COMPILAÇÃO DE PROGRAMAS 

gcc program.c -o program

=> EXECUÇÃO DE PROGRAMAS

./program

=> MANUAL

man stdio

┌──(root💀kali)-[/media/sf_E_DRIVE/ethical_hacking_scripts/desec_lab/c_scripts]
└─# locate stdio.h                                                                                                                                     16 ⨯
/usr/include/stdio.h
/usr/include/c++/10/tr1/stdio.h
/usr/include/c++/11/tr1/stdio.h
/usr/include/unicode/ustdio.h
/usr/include/x86_64-linux-gnu/bits/stdio.h
/usr/lib/x86_64-linux-gnu/perl/5.32.1/CORE/nostdio.h
/usr/share/metasploit-framework/data/headers/windows/stdio.h
/usr/share/python3-pycparser/fake_libc_include/stdio.h

=> ANOTAÇÕES

\n -> pula uma linha

man ascii



*/

#include <stdio.h>

int main(void){
	printf("Hello World\n");
	return 0;
}


