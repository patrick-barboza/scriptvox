*PROBLEMA SOMA 15
seja x 1
seja y 1
seja j 1
seja z 11
*tabuleiro
seja a 1
seja b 2
seja c 3
seja d 4
seja e 5
seja f 6
seja g 7
seja h 8
seja i 9
escreve "este é o problema soma 15. deseja instruções?"
le k&
se k = "#27" termina
se k == "s" desvia @instruções
@enter
escreve a
escreve b
escreve c
escreve d
escreve e
escreve f
escreve g
escreve h
escreve i
desvia @casa
@casaatual
tela limpa
escreve j
@opções
escreve "qual é a sua opção?"
le o&
se o = "#13" desvia @enter
se o = "#0#59" desvia @instruções
se o = "#27" aciona "alt+f4"
se o = "#0#72" desvia @cima
se o = "#0#75" desvia @esquerda
se o = "#0#77" desvia @direita
se o = "#0#80" desvia @baixo
se o = 1 desvia @troca
se o = 2 desvia @troca
se o = 3 desvia @troca
se o = 4 desvia @troca
se o = 5 desvia @troca
se o = 6 desvia @troca
se o = 7 desvia @troca
se o = 8 desvia @troca
se o = 9 desvia @troca
escreve "opção inválida"
desvia @opções
@instruções
escreve "o problema apresenta 9 números de 1 a 9, dispostos em 3 linhas"
escreve "e em 3 colunas. você deve arrumá-los de modo que a soma"
escreve "dos números de cada linha, cada coluna e cada diagonal"
escreve "seja 15. comandos setas andam pelo tabuleiro, enter fala"
escreve " o tabuleiro, números de 1 a 9 colocam o número teclado"
escreve "na casa atual, mandando o que ocupava a casa atual à casa"
escreve "de onde saiu o número teclado, f1 ajuda esc termina."
desvia @opções
@cima
subtrai y 1
se y = 0 seja y 1
desvia @casa
@esquerda
subtrai x 1
se x = 0 seja x 1
desvia @casa
@direita
soma x 1
se x = 4 seja x 3
desvia @casa
@baixo
soma y 1
se y = 4 seja y 3
@casa
seja z ""
concatena z x
concatena z y
se z = 11
seja j a
desvia @casaatual
fim se
se z = 12
seja j d
desvia @casaatual
fim se
se z = 13
seja j g
desvia @casaatual
fim se
se z = 21
seja j b
desvia @casaatual
fim se
se z = 22
seja j e
desvia @casaatual
fim se
se z = 23
seja j h
desvia @casaatual
fim se
se z = 31
seja j c
desvia @casaatual
fim se
se z = 32
seja j f
desvia @casaatual
fim se
se z = 33
seja j i
desvia @casaatual
fim se
@troca
se a = o
seja a j
desvia @trocando
fim se
se b = o
seja b j
desvia @trocando
fim se
se c = o
seja c j
desvia @trocando
fim se
se d = o
seja d j
desvia @trocando
fim se
se e = o
seja e j
desvia @trocando
fim se
se f = o
seja f j
desvia @trocando
fim se
se g = o
seja g j
desvia @trocando
fim se
se h = o
seja h j
desvia @trocando
fim se
se i = o
seja i j
desvia @trocando
fim se
@trocando
se z = 11
seja a o
desvia @conferindo
fim se
se z = 12
seja d o
desvia @conferindo
fim se
se z = 13
seja g o
desvia @conferindo
fim se
se z = 21
seja b o
desvia @conferindo
fim se
se z = 22
seja e o
desvia @conferindo
fim se
se z = 23
seja h o
desvia @conferindo
fim se
se z = 31
seja c o
desvia @conferindo
fim se
se z = 32
seja f o
desvia @conferindo
fim se
se z = 33
seja i o
desvia @conferindo
fim se
@conferindo
seja s ""
seja s a
soma s b
soma s c
se s <> 15 desvia @opções
seja s a
soma s d
soma s g
se s <> 15 desvia @opções
seja s a
soma s e
soma s i
se s <> 15 desvia @opções
seja s b
soma s e
soma s h
se s <> 15 desvia @opções
seja s c
soma s e
soma s g
se s <> 15 desvia @opções
seja s c
soma s f
soma s i
se s <> 15 desvia @opções
seja s d
soma s f
soma s e
se s <> 15 desvia @opções
seja s g
soma s h
soma s i
se s <> 15 desvia @opções
escreve "parabéns, você resolveu o problema!"
