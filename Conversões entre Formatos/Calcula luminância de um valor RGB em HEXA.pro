* Programa que calcula a luminância de um valor RGB em hexa
* Autor: Antonio Borges
* em 27/12/2001

escreve "Entre o valor rrggbb"
le x
copia r x 1 2
copia g x 3 4
copia b x 5 6
seja l 0

seja x r
chama @converteHexa
multiplica x 4
soma l x

seja x g
chama @converteHexa
multiplica x 4
soma l x

seja x b
chama @converteHexa
multiplica x 3
soma l x

divide l 28
escreve "A luminância calculada entre 0 e 100 vale " &
escreve l
termina

*** Rotina para conversão hexadecimal

@converteHexa
copia y x 1 1
chama @converteMetade
seja z y
copia y x 2 2
chama @converteMetade
multiplica z 16
soma z y
seja x z
retorna

@converteMetade
seja y maiusc y
se y = "A" seja y = 10
se y = "B" seja y = 11
se y = "C" seja y = 12
se y = "D" seja y = 13
se y = "E" seja y = 14
se y = "F" seja y = 15
retorna
