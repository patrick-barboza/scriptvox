*jogo resta 1
*criado por LÉO AUGUSTO TARILONTE JUNIOR
*iniciado em 16/03/2004
*finalizado em 06/04/2004
seja $conferente ""
seja $controle ""
seja $contador 0
seja $casa 13
seja $13 "."
seja $14 "."
seja $15 "."
seja $23 "."
seja $24 "."
seja $25 "."
seja $31 "."
seja $32 "."
seja $33 "."
seja $34 "."
seja $35 "."
seja $36 "."
seja $37 "."
seja $41 "."
seja $42 "."
seja $43 "."
seja $44 "vasio"
seja $45 "."
seja $46 "."
seja $47 "."
seja $51 "."
seja $52 "."
seja $53 "."
seja $54 "."
seja $55 "."
seja $56 "."
seja $57 "."
seja $63 "."
seja $64 "."
seja $65 "."
seja $73 "."
seja $74 "."
seja $75 "."
@início
escreve "Este é o jogo resta 1, deseja instruções?"
le $resposta&
se $resposta = "#27" desvia @final
se $resposta = "n"
escreve "Use setas, letra x para marcar, ENTER no vazio ou F1 para ajuda"
desvia @opções
fim se
se $resposta = "s" desvia @ajuda
escreve "tecla inválida"
desvia @início
@opções
tela limpa
*TELA TABULEIRO
se $13 = "." seja $treze "+"
se $13 = "vasio" seja $treze "O"
se $14 = "." seja $quatorze "+"
se $14 = "vasio" seja $quatorze "O"
se $15 = "." seja $quinze "+"
se $15 = "vasio" seja $quinze "O"
se $23 = "." seja $vinte3 "+"
se $23 = "vasio" seja $vinte3 "O"
se $24 = "." seja $vinte4 "+"
se $24 = "vasio" seja $vinte4 "O"
se $25 = "." seja $vinte5 "+"
se $25 = "vasio" seja $vinte5 "O"
se $31 = "." seja $trinta1 "+"
se $31 = "vasio" seja $trinta1 "O"
se $32 = "." seja $trinta2 "+"
se $32 = "vasio" seja $trinta2 "O"
se $33 = "." seja $trinta3 "+"
se $33 = "vasio" seja $trinta3 "O"
se $34 = "." seja $trinta4 "+"
se $34 = "vasio" seja $trinta4 "O"
se $35 = "." seja $trinta5 "+"
se $35 = "vasio" seja $trinta5 "O"
se $36 = "." seja $trinta6 "+"
se $36 = "vasio" seja $trinta6 "O"
se $37 = "." seja $trinta7 "+"
se $37 = "vasio" seja $trinta7 "O"
se $41 = "." seja $quarenta1 "+"
se $41 = "vasio" seja $quarenta1 "O"
se $42 = "." seja $quarenta2 "+"
se $42 = "vasio" seja $quarenta2 "O"
se $43 = "." seja $quarenta3 "+"
se $43 = "vasio" seja $quarenta3 "O"
se $44 = "." seja $quarenta4 "+"
se $44 = "vasio" seja $quarenta4 "O"
se $45 = "." seja $quarenta5 "+"
se $45 = "vasio" seja $quarenta5 "O"
se $46 = "." seja $quarenta6 "+"
se $46 = "vasio" seja $quarenta6 "O"
se $47 = "." seja $quarenta7 "+"
se $47 = "vasio" seja $quarenta7 "O"
se $51 = "." seja $cinquenta1 "+"
se $51 = "vasio" seja $cinquenta1 "O"
se $52 = "." seja $cinquenta2 "+"
se $52 = "vasio" seja $cinquenta2 "O"
se $53 = "." seja $cinquenta3 "+"
se $53 = "vasio" seja $cinquenta3 "O"
se $54 = "." seja $cinquenta4 "+"
se $54 = "vasio" seja $cinquenta4 "O"
se $55 = "." seja $cinquenta5 "+"
se $55 = "vasio" seja $cinquenta5 "O"
se $56 = "." seja $cinquenta6 "+"
se $56 = "vasio" seja $cinquenta6 "O"
se $57 = "." seja $cinquenta7 "+"
se $57 = "vasio" seja $cinquenta7 "O"
se $63 = "." seja $sessenta3 "+"
se $63 = "vasio" seja $sessenta3 "O"
se $64 = "." seja $sessenta4 "+"
se $64 = "vasio" seja $sessenta4 "O"
se $65 = "." seja $sessenta5 "+"
se $65 = "vasio" seja $sessenta5 "O"
se $73 = "." seja $setenta3 "+"
se $73 = "vasio" seja $setenta3 "O"
se $74 = "." seja $setenta4 "+"
se $74 = "vasio" seja $setenta4 "O"
se $75 = "." seja $setenta5 "+"
se $75 = "vasio" seja $setenta5 "O"
seja $linha1 $treze
concatena $linha1 $quatorze
concatena $linha1 $quinze
seja $linha2 $vinte3
concatena $linha2 $vinte4
concatena $linha2 $vinte5
seja $linha3 $trinta1
concatena $linha3 $trinta2
concatena $linha3 $trinta3
concatena $linha3 $trinta4
concatena $linha3 $trinta5
concatena $linha3 $trinta6
concatena $linha3 $trinta7
seja $linha4 $quarenta1
concatena $linha4 $quarenta2
concatena $linha4 $quarenta3
concatena $linha4 $quarenta4
concatena $linha4 $quarenta5
concatena $linha4 $quarenta6
concatena $linha4 $quarenta7
seja $linha5 $cinquenta1
concatena $linha5 $cinquenta2
concatena $linha5 $cinquenta3
concatena $linha5 $cinquenta4
concatena $linha5 $cinquenta5
concatena $linha5 $cinquenta6
concatena $linha5 $cinquenta7
seja $linha6 $sessenta3
concatena $linha6 $sessenta4
concatena $linha6 $sessenta5
seja $linha7 $setenta3
concatena $linha7 $setenta4
concatena $linha7 $setenta5
tela @23,3
escreve mudo $linha1
tela @23,4
escreve mudo $linha2
tela @21,5
escreve mudo $linha3
tela @21,6
escreve mudo $linha4
tela @21,7
escreve mudo $linha5
tela @23,8
escreve mudo $linha6
tela @23,9
escreve mudo $linha7
escreve
*escreve "Qual é sua opção?"
le mudo $opcao&
se $opcao = "#27" desvia @final
se $opcao = "#13"
seja $indice "t"
desvia @marcar
fim se
se $opcao = "#0#59" desvia @ajuda
se $opcao = "#0#72" desvia @cima
se $opcao = "#0#75" desvia @esquerda
se $opcao = "#0#77" desvia @direita
se $opcao = "#0#80" desvia @baixo
se $opcao = "x"
fim se
seja $indice "x"
desvia @marcar
//fim se
escreve "opção inválida"
desvia @opções
@cima
soma $contador 1
subtrai $casa 10
se $casa < 13
bipa
soma $casa 10
fim se
se $casa = 21
bipa
seja $casa 31
fim se
se $casa = 22
bipa
seja $casa 32
fim se
se $casa = 26
bipa
seja $casa 36
fim se
se $casa = 27
bipa
seja $casa 37
fim se
desvia @fala
@esquerda
soma $contador 1
subtrai $casa 1
se $casa = 12
bipa
seja $casa 13
fim se
se $casa = 22
bipa
seja $casa 23
fim se
se $casa = 30
bipa
seja $casa 31
fim se
se $casa = 40
bipa
seja $casa 41
fim se
se $casa = 50
bipa
seja $casa 51
fim se
se $casa = 62
bipa
seja $casa 63
fim se
se $casa = 72
bipa
seja $casa 73
fim se
desvia @fala
@direita
soma $contador 1
soma $casa 1
se $casa = 16
bipa
seja $casa 15
fim se
se $casa = 26
bipa
seja $casa 25
fim se
se $casa = 38
bipa
seja $casa 37
fim se
se $casa = 48
bipa
seja $casa 47
fim se
se $casa = 58
bipa
seja $casa 57
fim se
se $casa = 66
bipa
seja $casa 65
fim se
se $casa = 76
bipa
seja $casa 75
fim se
desvia @fala
@baixo
soma $contador 1
soma $casa 10
se $casa > 75
bipa
subtrai $casa 10
fim se
se $casa = 61
bipa
seja $casa 51
fim se
se $casa = 62
bipa
seja $casa 52
fim se
se $casa = 66
bipa
seja $casa 56
fim se
se $casa = 67
bipa
seja $casa 57
fim se
@fala
escreve $casa
se $contador > 2 seja $controle ""
se $casa = 13 escreve $13
se $casa = 14 escreve $14
se $casa = 15 escreve $15
se $casa = 23 escreve $23
se $casa = 24 escreve $24
se $casa = 25 escreve $25
se $casa = 31 escreve $31
se $casa = 32 escreve $32
se $casa = 33 escreve $33
se $casa = 34 escreve $34
se $casa = 35 escreve $35
se $casa = 36 escreve $36
se $casa = 37 escreve $37
se $casa = 41 escreve $41
se $casa = 42 escreve $42
se $casa = 43 escreve $43
se $casa = 44 escreve $44
se $casa = 45 escreve $45
se $casa = 46 escreve $46
se $casa = 47 escreve $47
se $casa = 51 escreve $51
se $casa = 52 escreve $52
se $casa = 53 escreve $53
se $casa = 54 escreve $54
se $casa = 55 escreve $55
se $casa = 56 escreve $56
se $casa = 57 escreve $57
se $casa = 63 escreve $63
se $casa = 64 escreve $64
se $casa = 65 escreve $65
se $casa = 73 escreve $73
se $casa = 74 escreve $74
se $casa = 75 escreve $75
desvia @opções
@marcar
se $casa = 13 seja $conferidor $13
se $casa = 14 seja $conferidor $14
se $casa = 15 seja $conferidor $15
se $casa = 23 seja $conferidor $23
se $casa = 24 seja $conferidor $24
se $casa = 25 seja $conferidor $25
se $casa = 31 seja $conferidor $31
se $casa = 32 seja $conferidor $32
se $casa = 33 seja $conferidor $33
se $casa = 34 seja $conferidor $34
se $casa = 35 seja $conferidor $35
se $casa = 36 seja $conferidor $36
se $casa = 37 seja $conferidor $37
se $casa = 41 seja $conferidor $41
se $casa = 42 seja $conferidor $42
se $casa = 43 seja $conferidor $43
se $casa = 44 seja $conferidor $44
se $casa = 45 seja $conferidor $45
se $casa = 46 seja $conferidor $46
se $casa = 47 seja $conferidor $47
se $casa = 51 seja $conferidor $51
se $casa = 52 seja $conferidor $52
se $casa = 53 seja $conferidor $53
se $casa = 54 seja $conferidor $54
se $casa = 55 seja $conferidor $55
se $casa = 56 seja $conferidor $56
se $casa = 57 seja $conferidor $57
se $casa = 63 seja $conferidor $63
se $casa = 64 seja $conferidor $64
se $casa = 65 seja $conferidor $65
se $casa = 73 seja $conferidor $73
se $casa = 74 seja $conferidor $74
se $casa = 75 seja $conferidor $75
se $indice = "t" desvia @trocando
se $conferidor = "vasio"
escreve "Não há peça aqui para marcar."
desvia @opções
fim se
escreve "marcado"
seja $marcado $casa
seja $contador 0
seja $controle "x"
desvia @opções
@trocando
se $conferidor = "."
escreve "Esta casa já está ocupada."
desvia @opções
fim se
se $controle = "x"
se $contador = 2 desvia @trocar
fim se
escreve "Distância inadequada para troca."
desvia @opções
@trocar
seja $trocado $casa
se $marcado = 13 seja $13 "vasio"
se $marcado = 14 seja $14 "vasio"
se $marcado = 15 seja $15 "vasio"
se $marcado = 23 seja $23 "vasio"
se $marcado = 24 seja $24 "vasio"
se $marcado = 25 seja $25 "vasio"
se $marcado = 31 seja $31 "vasio"
se $marcado = 32 seja $32 "vasio"
se $marcado = 33 seja $33 "vasio"
se $marcado = 34 seja $34 "vasio"
se $marcado = 35 seja $35 "vasio"
se $marcado = 36 seja $36 "vasio"
se $marcado = 37 seja $37 "vasio"
se $marcado = 41 seja $41 "vasio"
se $marcado = 42 seja $42 "vasio"
se $marcado = 43 seja $43 "vasio"
se $marcado = 44 seja $44 "vasio"
se $marcado = 45 seja $45 "vasio"
se $marcado = 46 seja $46 "vasio"
se $marcado = 47 seja $47 "vasio"
se $marcado = 51 seja $51 "vasio"
se $marcado = 52 seja $52 "vasio"
se $marcado = 53 seja $53 "vasio"
se $marcado = 54 seja $54 "vasio"
se $marcado = 55 seja $55 "vasio"
se $marcado = 56 seja $56 "vasio"
se $marcado = 57 seja $57 "vasio"
se $marcado = 63 seja $63 "vasio"
se $marcado = 64 seja $64 "vasio"
se $marcado = 65 seja $65 "vasio"
se $marcado = 73 seja $73 "vasio"
se $marcado = 74 seja $74 "vasio"
se $marcado = 75 seja $75 "vasio"
se $trocado = 13 seja $13 "."
se $trocado = 14 seja $14 "."
se $trocado = 15 seja $15 "."
se $trocado = 23 seja $23 "."
se $trocado = 24 seja $24 "."
se $trocado = 25 seja $25 "."
se $trocado = 31 seja $31 "."
se $trocado = 32 seja $32 "."
se $trocado = 33 seja $33 "."
se $trocado = 34 seja $34 "."
se $trocado = 35 seja $35 "."
se $trocado = 36 seja $36 "."
se $trocado = 37 seja $37 "."
se $trocado = 41 seja $41 "."
se $trocado = 42 seja $42 "."
se $trocado = 43 seja $43 "."
se $trocado = 44 seja $44 "."
se $trocado = 45 seja $45 "."
se $trocado = 46 seja $46 "."
se $trocado = 47 seja $47 "."
se $trocado = 51 seja $51 "."
se $trocado = 52 seja $52 "."
se $trocado = 53 seja $53 "."
se $trocado = 54 seja $54 "."
se $trocado = 55 seja $55 "."
se $trocado = 56 seja $56 "."
se $trocado = 57 seja $57 "."
se $trocado = 63 seja $63 "."
se $trocado = 64 seja $64 "."
se $trocado = 65 seja $65 "."
se $trocado = 73 seja $73 "."
se $trocado = 74 seja $74 "."
se $trocado= 75 seja $75 "."
se $marcado = 13
se $trocado = 15 seja $conferente $14
se $conferente = "vasio" desvia @mensagem
se $trocado = 15 seja $14 "vasio"
se $trocado = 33 seja $conferente $23
se $conferente = "vasio" desvia @mensagem
se $trocado = 33 seja $23 "vasio"
fim se
se $marcado = 15
se $trocado = 13 seja $conferente $14
se $conferente = "vasio" desvia @mensagem
se $trocado = 13 seja $14 "vasio"
se $trocado = 35 seja $conferente $25
se $conferente = "vasio" desvia @mensagem
se $trocado = 35 seja $25 "vasio"
fim se
se $marcado = 23
se $trocado = 25 seja $conferente $24
se $conferente = "vasio" desvia @mensagem
se $trocado = 25 seja $24 "vasio"
se $trocado = 43 seja $conferente $33
se $conferente = "vasio" desvia @mensagem
se $trocado = 43 seja $33 "vasio"
fim se
se $marcado = 25
se $trocado = 23 seja $conferente $24
se $conferente = "vasio" desvia @mensagem
se $trocado = 23 seja $24 "vasio"
se $trocado = 45 seja $conferente $35
se $conferente = "vasio" desvia @mensagem
se $trocado = 45 seja $35 "vasio"
fim se
se $marcado = 31
se $trocado = 33 seja $conferente $32
se $conferente = "vasio" desvia @mensagem
se $trocado = 33 seja $32 "vasio"
se $trocado = 51 seja $conferente $41
se $conferente = "vasio" desvia @mensagem
se $trocado = 51 seja $41 "vasio"
fim se
se $marcado = 32
se $trocado = 34 seja $conferente $33
se $conferente = "vasio" desvia @mensagem
se $trocado = 34 seja $33 "vasio"
se $trocado = 52 seja $conferente $42
se $conferente = "vasio" desvia @mensagem
se $trocado = 52 seja $42 "vasio"
fim se
se $marcado = 36
se $trocado = 34 seja $conferente $35
se $conferente = "vasio" desvia @mensagem
se $trocado = 34 seja $35 "vasio"
se $trocado = 56 seja $conferente $46
se $conferente = "vasio" desvia @mensagem
se $trocado = 56 seja $46 "vasio"
fim se
se $marcado = 37
se $trocado = 35 seja $conferente $36
se $conferente = "vasio" desvia @mensagem
se $trocado = 35 seja $36 "vasio"
se $trocado = 57 seja $conferente $47
se $conferente = "vasio" desvia @mensagem
se $trocado = 57 seja $47 "vasio"
fim se
se $marcado = 51
se $trocado = 31 seja $conferente $41
se $conferente = "vasio" desvia @mensagem
se $trocado = 31 seja $41 "vasio"
se $trocado = 53 seja $conferente $52
se $conferente = "vasio" desvia @mensagem
se $trocado = 53 seja $52 "vasio"
fim se
se $marcado = 52
se $trocado = 32 seja $conferente $42
se $conferente = "vasio" desvia @mensagem
se $trocado = 32 seja $42 "vasio"
se $trocado = 54 seja $conferente $53
se $conferente = "vasio" desvia @mensagem
se $trocado = 54 seja $53 "vasio"
fim se
se $marcado = 56
se $trocado = 36 seja $conferente $46
se $conferente = "vasio" desvia @mensagem
se $trocado = 36 seja $46 "vasio"
se $trocado = 54 seja $conferente $55
se $conferente = "vasio" desvia @mensagem
se $trocado = 54 seja $55 "vasio"
fim se
se $marcado = 57
se $trocado = 37 seja $conferente $47
se $conferente = "vasio" desvia @mensagem
se $trocado = 37 seja $47 "vasio"
se $trocado = 55 seja $conferente $56
se $conferente = "vasio" desvia @mensagem
se $trocado = 55 seja $56 "vasio"
fim se
se $marcado = 63
se $trocado = 43 seja $conferente $53
se $conferente = "vasio" desvia @mensagem
se $trocado = 43 seja $53 "vasio"
se $trocado = 65 seja $conferente $64
se $conferente = "vasio" desvia @mensagem
se $trocado = 65 seja $64 "vasio"
fim se
se $marcado = 65
se $trocado = 45 seja $conferente $55
se $conferente = "vasio" desvia @mensagem
se $trocado = 45 seja $55 "vasio"
se $trocado = 63 seja $conferente $64
se $conferente = "vasio" desvia @mensagem
se $trocado = 63 seja $64 "vasio"
fim se
se $marcado = 73
se $trocado = 53 seja $conferente $63
se $conferente = "vasio" desvia @mensagem
se $trocado = 53 seja $63 "vasio"
se $trocado = 75 seja $conferente $74
se $conferente = "vasio" desvia @mensagem
se $trocado = 75 seja $74 "vasio"
fim se
se $marcado = 75
se $trocado = 55 seja $conferente $65
se $conferente = "vasio" desvia @mensagem
se $trocado = 55 seja $65 "vasio"
se $trocado = 73 seja $conferente $74
se $conferente = "vasio" desvia @mensagem
se $trocado = 73 seja $74 "vasio"
fim se
se $marcado = 14
se $trocado = 34 seja $conferente $24
se $conferente = "vasio" desvia @mensagem
seja $24 "vasio"
fim se
se $marcado = 24
se $trocado = 44 seja $conferente $34
se $conferente = "vasio" desvia @mensagem
 seja $34 "vasio"
fim se
se $marcado = 41
se $trocado = 43 seja $conferente $42
se $conferente = "vasio" desvia @mensagem
seja $42 "vasio"
fim se
se $marcado = 42
se $trocado = 44 seja $conferente $43
se $conferente = "vasio" desvia @mensagem
seja $43 "vasio"
fim se
se $marcado = 46
se $trocado = 44 seja $conferente $45
se $conferente = "vasio" desvia @mensagem
seja $45 "vasio"
fim se
se $marcado = 47
se $trocado = 45 seja $conferente $46
se $conferente = "vasio" desvia @mensagem
seja $46 "vasio"
fim se
se $marcado = 64
se $trocado = 44 seja $conferente $54
se $conferente = "vasio" desvia @mensagem
seja $54 "vasio"
fim se
se $marcado = 74
se $trocado = 54 seja $conferente $64
se $conferente = "vasio" desvia @mensagem
seja $64 "vasio"
fim se
se $marcado = 33
se $trocado = 31 seja $conferente $32
se $conferente = "vasio" desvia @mensagem
se $trocado = 31 seja $32 "vasio"
se $trocado = 35 seja $conferente $34
se $conferente = "vasio" desvia @mensagem
se $trocado = 35 seja $34 "vasio"
se $trocado = 13 seja $conferente $23
se $conferente = "vasio" desvia @mensagem
se $trocado = 13 seja $23 "vasio"
se $trocado = 53 seja $conferente $43
se $conferente = "vasio" desvia @mensagem
se $trocado = 53 seja $43 "vasio"
fim se
se $marcado = 34
se $trocado = 32 seja $conferente $33
se $conferente = "vasio" desvia @mensagem
se $trocado = 32 seja $33 "vasio"
se $trocado = 36 seja $conferente $35
se $conferente = "vasio" desvia @mensagem
se $trocado = 36 seja $35 "vasio"
se $trocado = 14 seja $conferente $24
se $conferente = "vasio" desvia @mensagem
se $trocado = 14 seja $24 "vasio"
se $trocado = 54 seja $conferente $44
se $conferente = "vasio" desvia @mensagem
se $trocado = 54 seja $44 "vasio"
fim se
se $marcado = 35
se $trocado = 33 seja $conferente $34
se $conferente = "vasio" desvia @mensagem
se $trocado = 33 seja $34 "vasio"
se $trocado = 37 seja $conferente $36
se $conferente = "vasio" desvia @mensagem
se $trocado = 37 seja $36 "vasio"
se $trocado = 15 seja $conferente $25
se $conferente = "vasio" desvia @mensagem
se $trocado = 15 seja $25 "vasio"
se $trocado = 55 seja $conferente $45
se $conferente = "vasio" desvia @mensagem
se $trocado = 55 seja $45 "vasio"
fim se
se $marcado = 43
se $trocado = 41 seja $conferente $42
se $conferente = "vasio" desvia @mensagem
se $trocado = 41 seja $42 "vasio"
se $trocado = 45 seja $conferente $44
se $conferente = "vasio" desvia @mensagem
se $trocado = 45 seja $44 "vasio"
se $trocado = 23 seja $conferente $33
se $conferente = "vasio" desvia @mensagem
se $trocado = 23 seja $33 "vasio"
se $trocado = 63 seja $conferente $53
se $conferente = "vasio" desvia @mensagem
se $trocado = 63 seja $53 "vasio"
fim se
se $marcado = 44
se $trocado = 42 seja $conferente $43
se $conferente = "vasio" desvia @mensagem
se $trocado = 42 seja $43 "vasio"
se $trocado = 46 seja $conferente $45
se $conferente = "vasio" desvia @mensagem
se $trocado = 46 seja $45 "vasio"
se $trocado = 24 seja $conferente $34
se $conferente = "vasio" desvia @mensagem
se $trocado = 24 seja $34 "vasio"
se $trocado = 64 seja $conferente $54
se $conferente = "vasio" desvia @mensagem
se $trocado = 64 seja $54 "vasio"
fim se
se $marcado = 45
se $trocado = 43 seja $conferente $44
se $conferente = "vasio" desvia @mensagem
se $trocado = 43 seja $44 "vasio"
se $trocado = 47 seja $conferente $46
se $conferente = "vasio" desvia @mensagem
se $trocado = 47 seja $46 "vasio"
se $trocado = 25 seja $conferente $35
se $conferente = "vasio" desvia @mensagem
se $trocado = 25 seja $35 "vasio"
se $trocado = 65 seja $conferente $55
se $conferente = "vasio" desvia @mensagem
se $trocado = 65 seja $55 "vasio"
fim se
se $marcado = 53
se $trocado = 51 seja $conferente $52
se $conferente = "vasio" desvia @mensagem
se $trocado = 51 seja $52 "vasio"
se $trocado = 55 seja $conferente $54
se $conferente = "vasio" desvia @mensagem
se $troxcado = 55 seja $54 "vasio"
se $trocado = 33 seja $conferente $43
se $conferente = "vasio" desvia @mensagem
se $trocado = 33 seja $43 "vasio"
se $trocado = 73 seja $conferente $63
se $conferente = "vasio" desvia @mensagem
se $trocado = 73 seja $63 "vasio"
fim se
se $marcado = 54
se $trocado = 52 seja $conferente $53
se $conferente = "vasio" desvia @mensagem
se $trocado = 52 seja $53 "vasio"
se $trocado = 56 seja $conferente $55
se $conferente = "vasio" desvia @mensagem
se $trocado = 56 seja $55 "vasio"
se $trocado = 34 seja $conferente $44
se $conferente = "vasio" desvia @mensagem
se $trocado = 34 seja $44 "vasio"
se $trocado = 74 seja $conferente $64
se $conferente = "vasio" desvia @mensagem
se $trocado = 74 seja $64 "vasio"
fim se
se $marcado = 55
se $trocado = 53 seja $conferente $54
se $conferente = "vasio" desvia @mensagem
se $trocado = 53 seja $54 "vasio"
se $trocado = 57 seja $conferente $56
se $conferente = "vasio" desvia @mensagem
se $trocado = 57 seja $56 "vasio"
se $trocado = 35 seja $conferente $45
se $conferente = "vasio" desvia @mensagem
se $trocado = 35 seja $45 "vasio"
se $trocado = 75 seja $conferente $65
se $conferente = "vasio" desvia @mensagem
se $trocado = 75 seja $65 "vasio"
fim se
escreve "trocado"
desvia @fim
@mensagem
escreve "Não posso trocar."
desvia @opções
@fim
seja $soma 0
se $13 = "." soma $soma 1
se $14 = "." soma $soma 1
se $15 = "." soma $soma 1
se $23 = "." soma $soma 1
se $24 = "." soma $soma 1
se $25 = "." soma $soma 1
se $31 = "." soma $soma 1
se $32 = "." soma $soma 1
se $33 = "." soma $soma 1
se $34 = "." soma $soma 1
se $35 = "." soma $soma 1
se $36 = "." soma $soma 1
se $37 = "." soma $soma 1
se $41 = "." soma $soma 1
se $42 = "." soma $soma 1
se $43 = "." soma $soma 1
se $44 = "." soma $soma 1
se $45 = "." soma $soma 1
se $46 = "." soma $soma 1
se $47 = "." soma $soma 1
se $51 = "." soma $soma 1
se $52 = "." soma $soma 1
se $53 = "." soma $soma 1
se $54 = "." soma $soma 1
se $55 = "." soma $soma 1
se $56 = "." soma $soma 1
se $57 = "." soma $soma 1
se $63 = "." soma $soma 1
se $64 = "." soma $soma 1
se $65 = "." soma $soma 1
se $73 = "." soma $soma 1
se $74 = "." soma $soma 1
se $75 = "." soma $soma 1
se $soma > 1desvia @opções
escreve "parabéns você terminou o jogo resta1"
aciona "alt+f4"
@ajuda
abre #1 "c:\winvox\scripts\jogos\resta 1.txt"
@ler
le #1 t
checa $checagem
se $checagem <> 0 desvia @fechar
escreve t
desvia @ler
@fechar
fecha #1
desvia @opções
@final
cor 14
fundo 1
tela limpa
escreve ""
toca "c:\winvox\som\dosvox\dvtchau.wav"
toca "c:\winvox\som\somtags\filedone.wav"
termina mudo
