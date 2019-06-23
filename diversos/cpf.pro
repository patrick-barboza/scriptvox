*Script para verificação de CPF.
*Criado por:
*Eduardo Júlio


@inici
tela limpa
fundo 1
cor 14
Escreve "Este script serve para verificar a autenticidade de um número"
Escreve "de CPF com base nos nove primeiros dígitos."

@inii
seja a 0
seja b 0
seja c 0
seja d 0
seja e 0
seja f 0
seja g 0
seja h 0
seja i 0
seja l 0
seja m 0
seja n 0
seja k 0
seja y 0
seja q 0
seja o 0


escreve "Digite os nove primeiros números do CPF a Ser verificado."



Escreve "Primeiro:"
le a&
escreve "Segundo:"
le b&
escreve "Terceiro:"
le c&
escreve "Quarto:"
le d&
escreve "Quinto:"
le e&
escreve "Sexto:"
le f&
escreve "Sétimo:"
le g&
escreve "Oitavo:"
le h&
escreve "Nono:"
le i&

SOMA M A
SOMA M B
SOMA M C
SOMA M D
SOMA M E
SOMA M F
SOMA M G
SOMA M H
SOMA M I



MULTIPLICA a 10
MULTIPLICA b 9
MULTIPLICA c 8
MULTIPLICA d 7
MULTIPLICA e  6
MULTIPLICA f 5
MULTIPLICA g 4
MULTIPLICA h 3
MULTIPLICA i 2


SOMA M A
SOMA M B
SOMA M C
SOMA M D
SOMA M E
SOMA M F
SOMA M G
SOMA M H
SOMA M I

SOMA A B
SOMA A C
SOMA A D
SOMA A E
SOMA A F
SOMA A G
SOMA A H
SOMA A I


SOMA K A
DIVIDE A 11
MULTIPLICA A 11
SUBTRAI K A

SE K = 1 DESVIA @MEUM
SE K = 0 DESVIA @MEUM
SE K > 1 DESVIA @MAUM

@MEUM
SEJA L 0
DESVIA @CONT

@MAUM
SEJA L 11
SUBTRAI L K
DESVIA @CONT

@CONT
SOMA Q L
MULTIPLICA L 2
SOMA M L
SOMA O M
DIVIDE M 11
MULTIPLICA M 11
SUBTRAI O M
SE O = 1  DESVIA @MEDOIS
SE O = 0 DESVIA @MEDOIS
SE O > 1 DESVIA @MAIORUM

@MEDOIS
SEJA O 0
dESVIA @TERM

@MAIORUM
SEJA P 11
SUBTRAI P O
SEJA O 0
SOMA O P
DESVIA @TERM

@TERM
Escreve "Para que este CPF seja válido,"
Escreve "O décimo dígito tem de ser"
ESCREVE Q
Escreve "E o décimo primeiro:"
ESCREVE O
@qfim
Escreve "Deseja verificar outro número?"
le y&

se y = "s" desvia @inii
se y = "n" desvia @fim
se y = "" Desvia @qfim
se y <> "" Desvia @qfim
@fim
Escreve "Ok. Até a próxima."

