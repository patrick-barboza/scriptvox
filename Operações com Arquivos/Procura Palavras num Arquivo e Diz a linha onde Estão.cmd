* Procura Palavras em um arquivo, e informa a linha em que elas estão
* Em: 20/05/2003
* Autor: Tiago melo Casal



Escreve "Digite as palavras a serem procuradas: " &
Lê a
Se a="" Escreve "Desistiu"
Se a="" Termina Mudo
Escreve "Digite o endereço e nome do arquivo, onde deseja que seja"
escreve "procurado as palavras: " &
Lê b
Se a="" Escreve "Desistiu"
Se a="" Termina Mudo

Abre #1 b
Lê #1 c
Checa d
Se d <> 0 Desvia @Termina
Seja e 1
Enquanto Não c *=* a
Lê #1 c
Checa d
Se d <> 0 Desvia @Termina
Soma e 1
Fim Enquanto

@Termina
Fecha #1
Escreve "Achei "&
Escreve a
Escreve "no arquivo "&
Escreve b
Escreve "na linha "&
Escreve e
Escreve "nessa linha essta escrito "&
Escreve c
Termina Mudo
