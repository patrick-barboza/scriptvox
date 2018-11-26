* Mini correio eletrônico
* Autor: Antonio e Junior
* Em 9/11/2000
* Variaveis principais
* s servidor de e-mail
* o e-mail de origem
* d e-mail de destino
* m com valor 1 indica se deve mostrar o dialogo com o servidor

seja m 0

escreve "Informe o nome do servidor de smtp"
le s

* Obs: Nome no correio tem que vir entre os sinais de < e >

escreve "Qual o seu endereço eletrônico"
le o
seja e "<"
concatena e o
concatena e ">"
seja o e

escreve "Qual o endereço eletrônico do destinatário"
le d
seja e "<"
concatena e d
concatena e ">"
seja d e

internet inicia
conecta #1 s 587
escreve "Conexão realizada"
le #1 i
se m = 1 escreve i

seja c "MAIL FROM:"
concatena c o
escreve #1 c
le #1 i
se m = 1 escreve i

seja c "RCPT TO:"
concatena c d
escreve #1 c
le #1 i
se m = 1 escreve i

seja c "DATA"
escreve #1 c
le #1 i
se m = 1 escreve i

escreve #1 "From: " &
escreve #1 o
escreve #1 "To: " &
escreve #1 d
escreve #1 "Date: 12-Apr-1530"
escreve #1 "Subject: Carta de Luiz de Camões"
escreve #1
escreve #1 "As armas e os barões assinalados"
escreve #1 "Que da ocidental praia lusitana"
escreve #1 "Por mares nunca dantes navegados"
escreve #1 "Passaram muito além da Taprobana"

escreve #1 "."
le #1 i
se m = 1 escreve i

escreve #1 "QUIT"
le #1 i
se m = 1 escreve i

fecha #1
internet termina
escreve "Carta enviada, tecle enter"
le
