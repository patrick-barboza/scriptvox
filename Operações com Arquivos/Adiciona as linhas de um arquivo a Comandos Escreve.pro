* Adiciona as linhas de um arquivo entre o comando escreve "" num Script
* Autor: Tiago Melo Casal
* Em: 07/09/2002
*Conversão para scripvox 6.4 por Patrick Barboza
*Em 21/11/2018



escreve "Digite o nome do arquivo de entrada"
lê e
se e = "" termina "Desistiu."
busca t e
se t = "" termina "Arquivo não existe."
abre #1 e
escreve "Digite o nome do arquivo de saída"
lê s
abre #2 s &

@Lê
a := "escreve ""
lê #1 l
checa c
se c <> 0
fecha #1
fecha #2
escreve "Fim"
termina mudo
fim se

a := a + l
a := a + """
escreve #2 a
desvia @Lê
