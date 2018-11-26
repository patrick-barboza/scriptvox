* Teste da função MCI - Pega informações de um CD
* Autor: Antonio e Junior
* Em 13/11/2000

* Nota: a listagem completa de comandos de Multimidia (MCI)
* pode ser encontrada no HELP do Turbo Pascal ou do Delphi

ESCREVE "Insira um CD, pressionando simultaneamente Shift"
ESCREVE "Aperte Enter quando tiver feito"
LE

MCI n "Status CDAUDIO number of tracks"
ESCREVE "Número de trilhas gravadas neste CD"
ESCREVE n

MCI t "Status CDAUDIO length"
ESCREVE "Duração total do CD"
Escreve t
