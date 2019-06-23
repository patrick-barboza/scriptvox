* Ver se um arquivo possui as mesmas linhas que o outro
* Autor: Tiago Melo Casal
* Em: 30/04/2003



Escreve "Verifica se dois arquivos possui as mesmas linhas"
Escreve

@Início
Seja c 25
Seja l 0
Seja r "C:\$ResuVrf.$$$"
Seja y 0
Escreve "Digite o nome do arquivo matriz"
Lê m
Se m="" Desvia @Desistiu
Escreve "Digite o nome do arquivo que será posto em prova:"
Lê p
Se p <> "" Desvia @ContaAsLinhas
@Desistiu
Escreve "Desistiu. Tchau."
Termina Mudo

@ContaAsLinhas
abre #1 p
@QuantasLinhas
    lê #1 w
    checa h
    se h <> 0 Fecha #1
    se h <> 0 desvia @AbreArquivos
Soma y 1
Desvia @QuantasLinhas

@AbreArquivos
Remove r &
Abre #1 p
Abre #2 m
Abre #3 r &
Escreve #3 "Arquivos verificados:"
Escreve #3 p
Escreve #3 m

@Verifica
Soma l 1
Se l >= c
Bipa 1
Soma c 25
Fim Se
Observa Teclado z
Se z <> 0
Lê &
Escreve l &
Escreve " de " &
Escreve y &
Escreve " Linhas"
Fim Se
Lê #1 e
Checa h
Se h <> 0 Desvia @Fim
Repete j l
Lê #2 s
Checa h
Se h <> 0 Desvia @NãoEncontrada
Fim Repete
Se Não s = e Desvia @ContinuaVerificação
Fecha #2
Abre #2 m
Desvia @Verifica
@ContinuaVerificação
Lê #2 s
Checa h
Se h <> 0 Desvia @NãoEncontrada
Se Não s = e Desvia @ContinuaVerificação
@NãoEncontrada
Escreve #3 "Linha " &
Escreve #3 l &
Escreve #3 " não encontrada"
Fecha #2
Abre #2 m
Desvia @Verifica
@Fim
Fecha #1
Fecha #2
Fecha #3
Escreve "Concluído."
Escreve
Escreve "Deseja comparar mais arquivos?"
Lê b &
Se b <> "s" Escreve "Tchau"
Se b <> "s" Termina Mudo
Desvia @Início
