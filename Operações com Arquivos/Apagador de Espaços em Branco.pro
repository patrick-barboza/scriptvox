* Apagador de Espaços em branco
* Autor: Tiago Melo Casal
* Em: 11/10/2002 (fechado as aspas da linha 37 em 20/08/2014, erro informado pelo Scripvox 5.5)
*Conversão para scripvox 6.4 por Patrick Barboza
*Em 21/11/2018
************************************************************************
* Variáveis usadas:
* a
* c
* d
* e
* l
* n
* s
* u
* w
* v
* y
* z
************************************************************************



y := "C:\$$$.$$$"
z := "           Apagador de Espaços em branco"
Tela Limpa
Tela Normal
Escreve z
Escreve

@Novamente
d := 0
Seja e ""
Seja s 0
Seja u 0

@Opções
Escreve "Opções: I - apaga espaços do início das linhas; F - Apaga"
Escreve "espaços do fim das linhas; E - Apaga os espaços das linhas"
Escreve "que só contiverem espaços."
Lê a &
Se a="e" Desvia @DelEspLinha
Se a="f" Desvia @DelEspFim
Se a="i" Desvia @DelEspInício
Se a="#27" Escreve "Tchau"
Se a="#27" Termina Mudo
desvia @Opções

@DelEspInício
Chama @NomeDoArquivo
Escreve "Digite o número de espaços que apagarei, se existirem nos"
Escreve "inícios das linhas"
Lê n
Se n="" Escreve "Desistiu"
Se n="" Termina Mudo

Chama @AbreArquivos

Enquanto w < n
Concatena e " "
Seja w Tamanho e
Fim Enquanto

@ApagaEspaçoNoInício
Observa Teclado r
Se r <> 0
Lê &
Escreve s &
Escreve " de " &
Escreve u &
Escreve " Linhas"
Fim Se
Lê #1 l
Checa v
Se v <> 0 Desvia @Acabou
*Se d>="500" Bipa 1
*Se d>="500" Seja d 0
Soma s 1
Seja t Tamanho l
Copia c l 1 n
Se c=e
Soma n 1
Copia x l n t
Subtrai n 1
Escreve #2 x
SeNão
Escreve #2 l
Fim Se
*Soma d 1
Desvia @ApagaEspaçoNoInício

@DelEspFim
Chama @NomeDoArquivo

Chama @AbreArquivos

@ApagaEspaçoNoFim
Observa Teclado r
Se r <> 0
Lê &
Escreve s &
Escreve " de " &
Escreve u &
Escreve " Linhas"
Fim Se
Lê #1 l
Checa v
Se v <> 0 Desvia @Acabou
*Se d>="100" Bipa 1
*Se d>="100" Seja d 0
Soma s 1
Seja t Tamanho l
Se t=0 Escreve #2 l
Se t=0 Soma d 1
Se t=0 Desvia @ApagaEspaçoNoFim
Repete w t
Concatena e " "
Fim Repete
Se l=e Escreve #2 l
*Se l=e Soma d 1
Se l=e Desvia @ApagaEspaçoNoFim
Copia e l t t
Enquanto e=" "
Subtrai t 1
Seja e ""
Copia e l t t
Fim Enquanto
Seja e ""
Copia e l 1 t
Se l <> e
Escreve #2 e
Senão
Escreve #2 l
Fim Se
*Soma d 1
Seja e ""
Desvia @ApagaEspaçoNoFim

@DelEspLinha
Chama @NomeDoArquivo

Chama @AbreArquivos

@ApagaEspaçoNaLinha
Observa Teclado r
Se r <> 0
Lê &
Escreve s &
Escreve " de " &
Escreve u &
Escreve " Linhas"
Fim Se
Lê #1 l
Checa v
Se v <> 0 Desvia @Acabou
*Se d>="100" Bipa 1
*Se d>="100" Seja d 0
Soma s 1
Seja t Tamanho l
Repete w t
Concatena e " "
Fim Repete
Se l=e
Substitui l " " ""
Escreve #2 l
Senão
Escreve #2 l
Fim Se
*Soma d 1
Seja e ""
Seja w 0
Desvia @ApagaEspaçoNaLinha

@Acabou
Fecha #1
Fecha #2
Remove a
Renomeia y a
Escreve "Operação Concluída"
Escreve
Escreve "Deseja apagar espaços de outro arquivo?"
Lê p &
Se p="s"
Tela Limpa
Tela Normal
Escreve Mudo z
Escreve
Desvia @Novamente
Fim Se
Escreve "Tchau"
Termina Mudo

@NomeDoArquivo
Escreve "Digite o nome do arquivo"
Lê a
Se a="" Escreve "Desistiu"
Se a="" Termina Mudo
Retorna

@AbreArquivos
Abre #1 a
@QuantasLinhas
    Lê #1 l
    Checa v
    Se v <> 0 Fecha #1
    Se v <> 0 Desvia @ContinuaAbreArquivos
Soma u 1
Desvia @QuantasLinhas
@ContinuaAbreArquivos
Remove y &
Abre #1 a
Abre #2 y &
Retorna
