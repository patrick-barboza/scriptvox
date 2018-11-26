* Script para baixar o jornal Diário do Nordeste
* Autor: Antonio Borges
* Em 12/12/2001

escreve "Baixando o diário do Nordeste"
chama @apagaJornalDeOntem
chama @geraNomeDaHomepage
chama @trazJornal
espera 120
chama @guardaJornal
chama @descompactaJornal
toca "c:\windows\media\tada.wav"
escreve "Jornal armazenado no diretorio \jornal"
termina mudo

@apagaJornalDeOntem
executa "command /c deltree -y \jornal"
dir cria "\jornal"
retorna

@geraNomeDaHomepage
seja d data
copia a d 7 10
copia m d 4 5
copia d d 1 2
seja h "http://diariodonordeste.globo.com/"
concatena h a
concatena h "/"
concatena h m
concatena h "/"
concatena h d
concatena h "/index_dosvox.htm"
retorna

@trazJornal
executa "\winvox\webvox" &
espera 3
aciona "N"
aciona "F4"
digita h
espera 20
aciona "L"
aciona "CTRL+PAGEUP"
espera 1
aciona "TAB"
espera 2
aciona "TAB"
espera 2
aciona "ENTER"
retorna

@guardaJornal
aciona "o"
aciona "CTRL+D"
digita "\jornal\diario.zip"
espera 2
aciona "ALT+F4"
espera 1
retorna

@descompactaJornal
executa "pkunzip -do \jornal\diario.zip \jornal" &
espera 10
aciona "ALT+F4"
retorna
