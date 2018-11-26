*poema randômico
randomiza
escreve "poema randômico
escreve "tecle enter para uma nova estrofe, esc fim"
@estrofe
seja k ""
seja l ""
seja m ""
seja n ""
seja x " "
seja z 0
@montagem
seja r rand 35
se r == 0 seja s "estrela"
se r == 1 seja s "verdade"
se r == 2 seja s "poesia"
se r == 3 seja s "inspiração"
se r == 4 seja s "globalização"
se r == 5 seja s "água"
se r == 6 seja s "luz"
se r == 7 seja s "genética"
se r == 8 seja s "guerra"
se r == 9 seja s "moradia"
se r == 10 seja s "cidade"
se r == 11 seja s "rua"
se r == 12 seja s "pessoa"
se r == 13 seja s "amizade"
se r == 14 seja s "alimentação"
se r == 15 seja s "beleza"
se r == 16 seja s "fraqueza"
se r == 17 seja s "força"
se r == 18 seja s "sinceridade"
se r == 19 seja s "palavra"
se r == 20 seja s "informação"
se r == 21 seja s "informática"
se r == 22 seja s "comunicação"
se r == 23 seja s "telefonia"
se r == 24 seja s "internet"
se r == 25 seja s "exploração"
se r == 26 seja s "ciência"
se r == 27 seja s "ética"
se r == 28 seja s "poética"
se r == 29 seja s "poluição"
se r == 30 seja s "cidadania"
se r == 31 seja s "literatura"
se r == 32 seja s "ecologia"
se r == 33 seja s "explosão"
se r == 34 seja s "empresa"
seja r rand 35
se r == 0 seja a "global"
se r == 1 seja a "escura"
se r == 2 seja a "viva"
se r == 3 seja a "morta"
se r == 4 seja a "luminosa"
se r == 5 seja a "apagada"
se r == 6 seja a "superficial"
se r == 7 seja a "natural"
se r == 8 seja a "poluída"
se r == 9 seja a "brilhante"
se r == 10 seja a "admirada"
se r == 11 seja a "feliz"
se r == 12 seja a "triste"
se r == 13 seja a "artificial"
se r == 14 seja a "real"
se r == 15 seja a "virtual"
se r == 16 seja a "vasia"
se r == 17 seja a "humana"
se r == 18 seja a "industrial"
se r == 19 seja a "científica"
se r == 20 seja a "espacial"
se r == 21 seja a "genética"
se r == 22 seja a "comercial"
se r == 23 seja a "visual"
se r == 24 seja a "moral"
se r == 25 seja a "ameaçada"
se r == 26 seja a "ética"
se r == 27 seja a "poética"
se r == 28 seja a "digital"
se r == 29 seja a "celular"
se r == 30 seja a "vital"
se r == 31 seja a "ecológica"
se r == 32 seja a "literária"
se r == 33 seja a "empresarial"
se r == 34 seja a "final"
soma z 1
se z == 1
concatena k s
concatena k x
concatena k a
desvia @montagem
fim se
se z == 2
concatena l s
concatena l x
concatena l a
desvia @montagem
fim se
se z == 3
concatena m s
concatena m x
concatena m a
desvia @montagem
fim se
se z == 4
concatena n s
concatena n x
concatena n a
desvia @fala
fim se
@fala
escreve ""
escreve k
escreve l
escreve m
escreve n
bipa
observa teclado o
se o == 1 desvia @estrofe
le t&
se t == "#27" termina
desvia @estrofe
