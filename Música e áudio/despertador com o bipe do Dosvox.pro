cor 14
fundo 1
tela limpa

escreve "Hora atual " &
h := HORA
escreve h

escreve "Informe a hora do despertador: "&
le d

se d ="" termina "Desistiu"

escreve "Ok"

aciona "ALT+ESC"

bipa
enquanto d > h
espera 10
h := hora
fim enquanto
bipa

escreve "Hora atual " &
h := HORA
escreve h

repete n 60
bipa
fim repete
