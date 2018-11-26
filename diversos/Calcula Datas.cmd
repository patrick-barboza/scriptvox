* Calcula datas
* Autor: Tiago Melo Casal
* Em: 18/09/2003



Seja a "     Caucula datas"
Escreve a

*** Início ***

@DigiteData
Seja b "2"
Seja c "01"
Tela Limpa
Escreve Mudo a
Escreve
Escreve "   Digite a data no formato dd/mm/aaaa"
Lê d
Se d="" Chama @Desiste
Se d="" Desvia @DigiteData
Seja e Trim d
Seja h e
Seja i Tamanho h
Se i <> 10 Escreve "Data inválida"
Se i <> 10 Desvia @DigiteData
Chama @CopiaData
Seja d k
Seja e "01"
Seja h m
Seja i Tamanho h
Chama @CopiaData
Seja f k
Seja g "2001"
Seja h m
Se h<g Desvia @AnoMenor
Se h=g Desvia @AnoIgual
Se h>g Desvia @AnoMaior

*** Acha o dia da semana ***

@AnoMenor

@AnoIgual

@AnoMaior
Subtrai h g
Enquanto h >= 4
Soma b 5
Se b > 7 Subtrai b 7
Subtrai h 4
Fim Enquanto
Se h=3 Soma b 3
Se h=2 Soma b 2
Se h=1 Soma b 1
Se b > 7 Subtrai b 7

*** Substitui número por dia da semana correspondente ***

Substitui b "1" "Domingo"
Substitui b "2" "Segunda-feira"
Substitui b "3" "Terça-feira"
Substitui b "4" "Quarta-feira"
Substitui b "5" "Quinta-feira"
Substitui b "6" "Sexta-feira"
Substitui b "7" "Sabado"

Escreve b
Desvia @Termina

*** Separa em variáveis números antes da barra e depois ***

@CopiaData
Seja j Pos "/" h
Se j <= "1" Escreve "Data inválida"
Se j <= "1" Desvia @DigiteData
Subtrai j 1
Copia k h 1 j
Seja l j
Soma l 2
Copia m h l i
Retorna

*** Termina ***

@Desiste
Escreve "Deseja enserrar o script?"
Lê x &
Se x <> "s" Retorna
@Termina
Escreve "Tchau!"
Termina Mudo
