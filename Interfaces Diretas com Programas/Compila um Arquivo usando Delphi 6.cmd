* Script que compila em Borland Delphi 6
* Autor: Tiago Melo Casal
* Em: 29/08/2002

escreve "Digite o nome e caminho do arquivo a compilar"
seja b "C:\arquiv~1\borland\delphi6\bin\dcc32.exe "
seja t " -uC:\winvox\fontes\tradutor %1"
lê a
se a="" escreve "Desistiu"
se a="" termina mudo
concatena b a
concatena b t
executa b
escreve "Concluí"
termina mudo
