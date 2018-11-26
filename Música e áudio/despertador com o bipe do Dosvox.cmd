cor 14
fundo 1
tela limpa

escreve "Hora atual " &
seja h HORA
escreve h

escreve "Informe a hora do despertador: "&
le d

se d =""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Ok"

aciona "ALT+ESC"

bipa
enquanto d > h
espera 10
seja h hora
*bipa 1
fim enquanto
bipa

escreve "Hora atual " &
seja h HORA
escreve h

repete n 60
bipa
fim repete

@fim
termina mudo
