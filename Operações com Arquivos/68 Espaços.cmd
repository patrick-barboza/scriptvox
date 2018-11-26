* Script que verifica se há linhas em um arquivo com 68 espaços
* Autor: Tiago Melo Casal
* Em: 22/02/2004
* Atualizado em: 13/03/2004



Escreve "Digite o nome do arquivo a verificar se há linhas com 68 espaços:"
Lê a
Se a="" Escreve "Desistiu! Fim."
Se a="" Termina Mudo

Abre #1 a
Seja e "                                                                    "
Seja n 0
Seja s "Linhas com 68 espaços: "

Lê #1 l
Checa c
Se c <> 0 Fecha #1
Se c <> 0 Escreve "Arquivo em branco."
Se c <> 0 Termina Mudo
Enquanto Não c <> 0
Soma n 1
Se l =* e Concatena s n
Se l =* e Concatena s ", "
Lê #1 l
Checa c
Se c <> 0 Fecha #1
Fim Enquanto

Seja t Tamanho s
Se t="23" Escreve "Não há linhas com 68 espaços. Tchau!"
Se t="23" Termina Mudo

Subtrai t 2
Copia i s 1 t
Concatena i "."
Escreve i
Escreve "Deseja copiar para área de transferência? " &
Lê p &
Se p="s" Transfere de i
Escreve "Deseja encerrar? " &
Lê p &
Se p="s" Escreve "Tchau!"
Termina Mudo
