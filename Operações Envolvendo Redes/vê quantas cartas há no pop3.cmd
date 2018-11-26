* Pesquisa número de cartas esperando no pop3
* Autor: Antonio e Junior
* Em 27/7/2001

internet INICIA
conecta #1 "caec.nce.ufrj.br" 110
le #1 r
escreve #1 "USER upgrade"
le #1 r
escreve #1 "PASS dosvoxrnp"
le #1 r

escreve #1 "STAT"
le #1 r
escreve "--- resposta da pesquisa de cartas ---"
escreve r

escreve #1 "QUIT"
le #1 r
internet TERMINA
termina
