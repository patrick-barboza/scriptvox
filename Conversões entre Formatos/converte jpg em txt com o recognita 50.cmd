* Converte arquivo jpg para txt
* Autor: Neno Henrique Albernaz
* em 10/01/2002

escreve "Conversor de arquivos jpg para txt"
chama @pegaDiretorio
chama @quantidadeDeArquivos
escreve "Aguarde"
chama @ligaRecognita50
chama @abreArqNoRecognita
chama @salvaArquivo
aciona "ALT+F4"
aciona "n"
@fim
termina mudo

************************************************************************

@pegaDiretorio
escreve "Digite o diretório dos arquivos slides"
le d
se d=""
    escreve "Desistiu"
    desvia @fim
fim se
retorna

************************************************************************

@quantidadeDeArquivos
escreve "Digite a quantidade de arquivos slides"
le q
se q=""
    escreve "Desistiu"
    desvia @fim
fim se
retorna

************************************************************************

@ligaRecognita50
seja r "\arquiv~1\recogn~1.0\recogn50.exe"
executa r &

seja t 8
seja k 1
@loopAbreRecog
    chama @esperaUmSegundo
    soma k 1
se k<=t desvia @loopAbreRecog
aciona "enter"
retorna

************************************************************************

@abreArqNoRecognita
seja i 1

@loopAbreArq
bipa 1
    chama @slideJpg
bipa 1
    aciona "ctrl+o"
    chama @esperaUmSegundo
    digita s
    chama @esperaUmSegundo
    chama @esperaUmSegundo
    se i>1 chama @maisDeUmSlide
    chama @esperaUmSegundo
    chama @esperaUmSegundo
    chama @esperaUmSegundo
    soma i 1
se i<= q desvia @loopAbreArq
retorna

************************************************************************

@maisDeUmSlide
aciona "s"
chama @esperaUmSegundo
aciona "enter"
retorna

************************************************************************

@salvaArquivo
concatena d ".txt"
aciona "alt+f"
chama @esperaUmSegundo
aciona "e"
chama @esperaUmSegundo
digita d &
chama @esperaUmSegundo
aciona "tab"
chama @esperaUmSegundo
aciona "down"
chama @esperaUmSegundo
aciona "end"
*chama @esperaUmSegundo
*aciona "end"
chama @esperaUmSegundo
aciona "up"
chama @esperaUmSegundo
aciona "up"
chama @esperaUmSegundo
aciona "tab"
chama @esperaUmSegundo
aciona "enter"

seja t 5
seja k 1
@loopSA
    chama @esperaUmSegundo
    soma k 1
se k<=t desvia @loopSA
retorna

************************************************************************

@esperaUmSegundo
espera 1
bipa 1
retorna

************************************************************************

@slideJpg
seja s d
concatena s "\slide"
concatena s i
concatena s ".jpg"
retorna
