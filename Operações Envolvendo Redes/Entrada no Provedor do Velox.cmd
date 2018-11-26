* Script para entrada no provedor do Velox
* Autor: José Antonio Borges
* 31/8/2003

escreve "Script para entrada no Velox"

escreve "Qual o provedor (12 globo.com 30 terra.com)"
le p
escreve "Qual sua conta"
le c
escreve "Qual sua senha"
le senha s
escreve "Espere um minuto"

chama @acionaVeloxZone

repete t 7
    aciona "tab"
fim repete
digita "enter"
espera 5

aciona "tab"
repete t p
    aciona "tab"
fim repete
digita "enter"
espera 10

repete t 17
    aciona "tab"
fim repete
digita c &
espera 1
aciona "tab"
espera 1
digita s
espera 1
aciona "tab"
espera 1
aciona "enter"

espera 10
clica TELA 630 440
aciona "CTRL+A"
aciona "CTRL+C"
transfere para x
escreve x
termina

@acionaVeloxZone
executa "iexplore www.veloxzone.com.br" &
@esperaVelox
    espera 5
    captura titulo x
    se x =* "http" desvia @esperaVelox
espera 10
captura titulo x
se x =* "Velox"
    aciona "ALT+F4"
    espera 1
fim se
retorna
