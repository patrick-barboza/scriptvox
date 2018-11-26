* Txt de Html do Webvox
* Autor: Tiago Melo Casal
* Em: 04/06/2004



Escreve "Digite o Nome do arquivo .txt salvo de um .html pelo Webvox"
Lê a
Se a="" Termina Mudo
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
@Lê
Seja t 0
Remove "C:\$temp.$$$" &
Abre #3 "C:\$temp.$$$" &
Lê #1 l
Checa c
Se c <> 0 Desvia @Terminou
Enquanto Não l *=* "--------------------------------------------------"
Escreve #3 l
Se l *=* "*** Título da Página:" Soma t "1"
Lê #1 l
Checa c
Se c <> 0 Desvia @Terminou
Fim Enquanto
Se t > 0 Fecha #3
Se t > 0 Desvia @Lê
Seja s l
Fecha #3
Abre #3 "C:\$temp.$$$"
Lê #3 l
Checa c
Enquanto c = 0
Escreve #2 l
Lê #3 l
Checa c
Fim Enquanto
Fecha #3
Escreve #2 s
Desvia @Lê
@Terminou
Fecha #3
Abre #3 "C:\$temp.$$$"
Lê #3 l
Checa c
Enquanto c = 0
Escreve #2 l
Lê #3 l
Checa c
Fim Enquanto
Fecha #3
Remove "C:\$temp.$$$"
Fecha #1
Fecha #2
Remove a
Renomeia "C:\$$$.$$$" a
Termina Mudo
