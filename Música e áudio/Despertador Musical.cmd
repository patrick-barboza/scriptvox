*Script Despertador Musical
*Autor: Edson Junior (Montanha)
*Em 18 de outubro de 2003

escreve "Bem-vindo ao despertador musical!"

@pegahora
escreve "Informe a hora para ser despertado no formato hora:minuto, com dois
dígitos cada:"
le h
se h = "" desvia @cancelado
copia x h 1 2
copia y h 4 5
se x < 10
copia k h 2 2
fim se
se y < 10
copia z h 5 5
fim se
escreve "Programando para" &
se x < 10
escreve k &
senão
escreve x &
fim se
escreve "horas" &
escreve "e" &
se y < 10
escreve z &
senão
escreve y &
fim se
escreve "minutos."
escreve "Confirma hora?"
le o &
se o < "n" desvia @programa
desvia @pegahora

@programa
escreve "Informe o nome completo do arquivo a tocar:"
le m
se m = "" desvia @programa
busca a m
se a = ""
escreve "Arquivo não existe."
desvia @programa
fim se
escreve "OK, hora programada."

@checahora
seja t HORA
copia t t 1 5
se h = t desvia @desperta
espera 1
desvia @checahora

@desperta
seja c "c:\winvox\midiavox "
concatena c m
executa c
termina mudo

@cancelado
escreve "Programa cancelado."
termina mudo

**********************
