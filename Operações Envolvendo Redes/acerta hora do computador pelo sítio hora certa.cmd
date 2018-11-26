* Script para acertar a hora do computador
* entra no site hora certa
escreve "Bem vindo ao programa de ajuste da hora via Internet!"
seja b ""
transfere de b
bipa
bipa
escreve "Obtendo a hora certa. Aguarde!"
executa "iexplore HTTP://www.horacerta.com.br/cgi-bin/horacerta.cgi?cidade=Sao_Paulo" &
espera 15

* se posiciona no campo que diz dia e hora
*repete i 2
    aciona "TAB"
    aciona "TAB"
*fim repete
* copia os dados deste campo para a variável h
aciona "CTRL+C"
aciona "ALT+A"
aciona "F"

transfere para h

copia d h 1 2
copia m h 4 6
se m = "jan" seja m "01"
se m = "fev" seja m "02"
se m = "mar" seja m "03"
se m = "abr" seja m "04"
se m = "mai" seja m "05"
se m = "jun" seja m "06"
se m = "jul" seja m "07"
se m = "ago" seja m "08"
se m = "set" seja m "09"
se m = "out" seja m "10"
se m = "nov" seja m "11"
se m = "dez" seja m "12"
copia a h 8 11
concatena d "/"
concatena d m
concatena d "/"
concatena d a

copia x h 15 16
copia y h 17 22
copia p h 24 25
se h = "12" subtrai x 12
se p = "PM" soma x 12
concatena x y

escreve "Acertando a data e hora do sistema"
seja c "command /c DATE "
concatena c d
executa c &

seja c "command /c TIME "
concatena c x
executa c &

escreve h

* fecha internet explorer
aciona "ALT+F4"

aciona "ALT+F4"

termina mudo
