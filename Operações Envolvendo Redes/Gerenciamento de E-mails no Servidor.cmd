* Cartas eletrônicas
* Autor: Tiago Melo Casal
* Em: 14/05/2004



Escreve "Cartas eletrônicas"
@QualASuaOpção
Escreve
Escreve "Qual a sua opção? " &
Lê o &
Se o="#27" Escreve "Tchau!"
Se o="#27" Termina Mudo
Se o="c" Desvia @Configuração
Se o="i" Desvia @DeletaCartasIndesejáveis
Se o="r" Desvia @TrásResumo
Se o="t" Desvia @DeletaTodasAsCartas
Escreve "Opção inválida. As opções são:"
Escreve "C - Configuração"
Escreve "I - Deleta cartas indesejáveis"
Escreve "R - Trás resumo"
Escreve "T - Deleta todas as cartas"
Escreve "Escape - Termina"
Desvia @QualASuaOpção
