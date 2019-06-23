*jogo labirinto aleatório a fuga árdua
seja n 10
seja w 0
seja j 0
randomiza
remove "lab.tab"
@aleatório
seja r rand 7
se r = 0 seja f "você está em uma sala circular"
se r = 1 seja f "você está em uma sala oval"
se r = 2 seja f "você está em uma sala triangular"
se r = 3 seja f "você está em uma sala quadrada"
se r = 4 seja f "você está em uma sala retangular"
se r = 5 seja f "você está em uma sala pentagonal"
se r = 6 seja f "você está em uma sala exagonal"
seja r rand 16
se r = 0 seja c "com paredes vermelhas"
se r = 1 seja c "com paredes alaranjadas"
se r = 2 seja c "com paredes amarelas"
se r = 3 seja c "com paredes verdes"
se r = 4 seja c "com paredes azuis"
se r = 5 seja c "com paredes anil"
se r = 6 seja c "com paredes violeta"
se r = 7 seja c "com paredes brancas"
se r = 8 seja c "com paredes pretas"
se r = 9 seja c "com paredes cinzentas"
se r = 10 seja c "com paredes marrons"
se r = 11 seja c "com paredes prateadas"
se r = 12 seja c "com paredes douradas"
se r = 13 seja c "com paredes rosadas"
se r = 14 seja c "com paredes lilazes"
se r = 15 seja c "com paredes roxas"
soma n 1
se n = 20 seja n 21
se n = 30 seja n 31
se n = 40 seja n 41
se n = 50 seja n 51
se n = 60 seja n 61
se n = 70 seja n 71
se n = 80 seja n 81
se n = 90 seja n 91
abre #1 "lab.tab"&
escreve #1 n
escreve #1 f
escreve #1 c
escreve #1 "aqui há 4 portas."
escreve #1 "*"
fecha #1
se n = 99 desvia @ação
desvia @aleatório
@ação
seja r rand 32
se r = 0 seja s 11
se r = 1 seja s 12
se r = 2 seja s 13
se r = 3 seja s 14
se r = 4 seja s 15
se r = 5 seja s 16
se r = 6 seja s 17
se r = 7 seja s 18
se r = 8 seja s 19
se r = 9 seja s 21
se r = 10 seja s 29
se r = 11 seja s 31
se r = 12 seja s 39
se r = 13 seja s 41
se r = 14 seja s 49
se r = 15 seja s 51
se r = 16 seja s 59
se r = 17 seja s 61
se r = 18 seja s 69
se r = 19 seja s 71
se r = 20 seja s 79
se r = 21 seja s 81
se r = 22 seja s 89
se r = 23 seja s 91
se r = 24 seja s 92
se r = 25 seja s 93
se r = 26 seja s 94
se r = 27 seja s 95
se r = 28 seja s 96
se r = 29 seja s 97
se r = 30 seja s 98
se r = 31 seja s 99
seja r rand 48
se r = 0
seja k 22
seja p k
fim se
se r = 1
seja k 23
seja p k
fim se
se r = 2
seja k 24
seja p k
fim se
se r = 3
seja k 25
seja p k
fim se
se r = 4
seja k 26
seja p k
fim se
se r = 5
seja k 27
seja p k
fim se
se r = 6
seja k 28
seja p k
fim se
se r = 7
seja k 32
seja p k
fim se
se r = 8
seja k 33
seja p k
fim se
se r = 9
seja k 34
seja p k
fim se
se r = 10
seja k 35
seja p k
fim se
se r = 11
seja k 36
seja p k
fim se
se r = 12
seja k 37
seja p k
fim se
se r = 13
seja k 38
seja p k
fim se
se r = 14
seja k 42
seja p k
fim se
se r = 15
seja k 43
seja p k
fim se
se r = 16
seja k 44
seja p k
fim se
se r = 17
seja k 45
seja p k
fim se
se r = 18
seja k 46
seja p k
fim se
se r = 19
seja k 47
seja p k
fim se
se r = 20
seja k 48
seja p k
fim se
se r = 21
seja k 52
seja p k
fim se
se r = 22
seja k 53
seja p k
fim se
se r = 23
seja k 54
seja p k
fim se
se r = 24
seja k 56
seja p k
fim se
se r = 25
seja k 57
seja p k
fim se
se r = 26
seja k 58
seja p k
fim se
se r = 27
seja k 62
seja p k
fim se
se r = 28
seja k 63
seja p k
fim se
se r = 29
seja k 64
seja p k
fim se
se r = 30
seja k 65
seja p k
fim se
se r = 31
seja k 66
seja p k
fim se
se r = 32
seja k 67
seja p k
fim se
se r = 33
seja k 68
seja p k
fim se
se r = 34
seja k 72
seja p k
fim se
se r = 35
seja k 73
seja p k
fim se
se r = 36
seja k 74
seja p k
fim se
se r = 37
seja k 75
seja p k
fim se
se r = 38
seja k 76
seja p k
fim se
se r = 39
seja k 77
seja p k
fim se
se r = 40
seja k 78
seja p k
fim se
se r = 41
seja k 82
seja p k
fim se
se r = 42
seja k 83
seja p k
fim se
se r = 43
seja k 84
seja p k
fim se
se r = 44
seja k 85
seja p k
fim se
se r = 45
seja k 86
seja p k
fim se
se r = 46
seja k 87
seja p k
fim se
se r = 47
seja k 88
seja p k
fim se
seja e 5
seja x 5
seja y 5
desvia @mover
@opções
escreve "qual é a sua opção?"
le o&
se o == "r" desvia @repetir
se o == "p" desvia @pegar
se o = "a" desvia @atacar
se o == "e"
escreve "esferas mágicas "&
escreve e
desvia @opções
se o == "m"
escreve "movimentos"&
escreve j
desvia @opções
se o = "#0#59"
escreve "use as setas para se mover no labirinto m informa o número"
escreve "de movimentos e revela a quantidade de esferas mágicas"
escreve "p pega um objeto a arremeça uma esfera r repete"
escreve " f1 ajuda éske termina"
desvia @opções
fim se
se o = "#27"
escreve "você desistiu"
desvia @movimentos
fim se
se o = "#0#72" desvia @norte
se o = "#0#75" desvia @oeste
se o = "#0#77" desvia @leste
se o = "#0#80" desvia @sul
escreve "opção inválida"
desvia @opções
@atacar
se e < 0 seja e 0
se e = 0
escreve "você não tem esferas para arremeçar"
desvia @opções
fim se
subtrai e 1
se w = 0
escreve "você arremeça uma esfera contra uma das paredes da sala"
escreve "e a esfera se dissolve em uma nuvem de fumaça"
desvia @opções
fim se
escreve "você arremeça uma esfera contra o guarda e ele é desentegrado."
seja w 0
desvia @opções
@pegar
se b = k
se k = p seja p 5
escreve "você pega a chave."
seja k 0
desvia @opções
fim se
se z = 1
seja z 0
soma e 1
escreve "você pegou a esfera"
desvia @opções
fim se
escreve "não há nada aqui para pegar."
desvia @opções
@norte
seja z 0
soma j 1
se w = 1 desvia @cortar
soma y 1
se y > 9 seja y 1
desvia @mover
@oeste
seja z 0
soma j 1
se w = 1 desvia @cortar
subtrai x 1
se x < 1 seja x 9
desvia @mover
@leste
seja z 0
soma j 1
se w = 1 desvia @cortar
soma x 1
se x > 9 seja x 1
desvia @mover
@sul
seja z 0
soma j 1
se w = 1 desvia @cortar
subtrai y 1
se y < 1 seja y 9
@mover
concatena m x
concatena m y
se m = s
se p = 5 desvia @fim
fim se
abre #1 "lab.tab"
@ler1
le #1 t
checa a
se a <> 0 desvia @fecha
se t = m desvia @ler2
desvia @ler1
@ler2
le #1 t
checa a
se a <> 0 desvia @fecha
se t == "*" desvia @fecha
escreve t
desvia @ler2
@fecha
fecha #1
seja r rand 4
se r = 0 desvia @nada
se r = 1
seja z 1
escreve "você encontrou uma esfera mágica"
fim se
se r = 2 desvia @nada
se r = 3
seja w 1
escreve "você encontra um guarda"
fim se
@nada
se m = k
se k = p escreve "e também uma chave de ouro brilhante."
seja b m
fim se
seja m ""
tela limpa
desvia @opções
@repetir
concatena m x
concatena m y
abre #1 "lab.tab"
@ler3
le #1 t
checa a
se a <> 0 desvia @fecha1
se t = m desvia @ler4
desvia @ler3
@ler4
le #1 t
checa a
se a <> 0 desvia @fecha1
se t == "*" desvia @fecha1
escreve t
desvia @ler4
@fecha1
fecha #1
se z = 1 escreve "você encontrou uma esfera mágica"
se w = 1 escreve "você encontra um guarda"
se m = k
se k = p escreve "e também uma chave de ouro brilhante."
fim se
seja m ""
tela limpa
desvia @opções
@cortar
escreve "o guarda corta sua cabeça com sua espada e você morre"
desvia @movimentos
@fim
escreve "parabéns você conseguiu sair do labirinto!"
@movimentos
escreve "movimentos"&
escreve j
