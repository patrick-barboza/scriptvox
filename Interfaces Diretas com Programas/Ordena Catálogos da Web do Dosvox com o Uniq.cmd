* Ordena os Catálogos da Web do Dosvox com o Uniq
* Autor: Tiago Melo Casal
* Em: 22/05/2004



Seja w "C:\Winvox\"
Escreve "Digite o nome do arquivo do WebCatal do Dosvox, ou Enter" &
Escreve "assumirei WebSelec.ini"
Lê l
Se l="" Concatena w "WebSelec.ini"
Se l="" Desvia @Processa
Se l *=* "\" Seja w l
Se l *=* "\" Desvia @Processa
Se l *=* ".ini" Concatena w l
Se l *=* ".ini" Desvia @Processa
Concatena w l
Concatena w ".ini"

@Processa
Abre #1 w
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Lê #1 l
Checa c
Enquanto c=0
Seja a ""
@ProcuraMaisIgual
Seja i Pos "=" l
Subtrai i 1
Copia x l 1 i
Soma i 2
Copia z l i 9999
Concatena a x
Seja d z
Se z *=* "=" Concatena a "="
Se z *=* "=" Seja l z
Se z *=* "=" Desvia @ProcuraMaisIgual
Escreve #2 d &
Escreve #2 "=" &
Escreve #2 a
Lê #1 l
Checa c
Fim Enquanto
Fecha #1
Fecha #2
Executa "Command /c Uniq C:\$$$.$$$"

Abre #1 "C:\$$$.$$$"
Remove w
Abre #2 w &
Lê #1 l
Checa c
Enquanto c=0
Seja i Pos "=" l
Subtrai i 1
Copia a l 1 i
Soma i 2
Copia d l i 9999
Escreve #2 d &
Escreve #2 "=" &
Escreve #2 a
Lê #1 l
Checa c
Fim Enquanto
Fecha #1
Fecha #2
Remove "C:\$$$.$$$"
Escreve "Feito!"
Termina Mudo
