* Adiciona as linhas de um arquivo entre o comando escreve "" num Script
* Autor: Tiago Melo Casal
* Em: 07/09/2002



escreve "Digite o nome do arquivo de entrada"
lê e
abre #1 e
escreve "Digite o nome do arquivo de saída"
lê s
abre #2 s &

@Lê
seja a "escreve ""
lê #1 l
checa c
se c <> 0
fecha #1
fecha #2
escreve "Fim"
termina mudo
fim se

concatena a l
concatena a """
escreve #2 a
desvia @Lê
