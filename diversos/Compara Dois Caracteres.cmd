* Compara dois caracteres se são iguais
* Autor: Tiago Melo Casal
* Em: 08/05/2004



Escreve "Compara caracteres"
@Início
Escreve "Digite o primeiro caractere: " &
Lê p &
@SegundoCaractere
Escreve "Digite o segundo caractere: " &
Lê s &
Se p = s
Escreve "O caractere " p &
Escreve " é igual ao caractere " s
Senão
Escreve "O caractere " p &
Escreve " é diferente do caractere " s
Fim Se
Escreve "Deseja continuar? " &
Lê c &
Se c <> "s" Termina Mudo
Se p = s Desvia @Início
Desvia @SegundoCaractere
