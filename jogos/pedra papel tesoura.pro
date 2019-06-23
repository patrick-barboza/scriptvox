* JOGO PEDRA, PAPEL OU TESOURA
* Autor: Olivia Jogavox

randomiza
seja y 5
seja z 5
escreve "Este é o jogo PEDRA, PAPEL OU TESOURA."
escreve
escreve "Digite seu nome:"
le n

escreve "Muito bem, " n

@pergunta
escreve
escreve "Você sabe jogar?"
le p&
se p = "#27" termina
se p = "s" desvia @jogar

desvia @ajuda

***************************
@jogar

escreve "Placar " y " a " z
escreve "Opção, " n "?"
le o&
escreve mudo o

se o = "#0#59"
@ajuda
        escreve "O jogo usa 3 objetos: 1 - pedra; 2 - papel; 3 - tesoura."
        escreve "A pedra quebra a tesoura e é embrulhada pelo papel."
        escreve "O papel embrulha a pedra e é cortado pela tesoura."
        escreve "A tesoura corta o papel e é quebrada pela pedra."
        escreve "Você escolhe um objeto e o computador escolhe um também."
        escreve "Se os objetos forem iguais há um empate."
        escreve "Se forem diferentes um perde e o outro ganha,"
        escreve "de acordo com a explicação inicial."
        escreve
        escreve "COMANDOS: 1- pedra, 2- papel, 3- tesoura;"
        escreve "p - pontuação; f1 - ajuda; ESC - fim."
        desvia @jogar
fim se

seja r rand 3

se o = "p"
        escreve n&
        escreve y
        escreve "COMPUTADOR"
        escreve z
        desvia @jogar
fim se

se o = "#27" termina
se o = "1" ou o = "2" ou o = "3" desvia @conferir
escreve "opção inválida"
desvia @jogar

***************************
@conferir

se r = 0 seja b "pedra"
se r = 1 seja b "papel"
se r = 2 seja b "tesoura"
se o = "1" seja a "pedra"
se o = "2" seja a "papel"
se o = "3" seja a "tesoura"

*seja v rand 2
*se v = 0
*        escreve "eu joguei "&
*        escreve b
*        escreve "você jogou "&
*        escreve a
*senao se v = 1
*        escreve "você jogou "&
*        escreve a
*        escreve "eu joguei "&
*        escreve b
*fim se
escreve a " " b

se a = b
        seja w rand 5
        se w = 0 escreve "nem você nem eu"
        se w = 1 escreve "nem eu nem você"
        se w = 2 escreve "empatamos"
        se w = 3 escreve "nós empatamos"
        se w = 4 escreve "tudo igual nessa"
        desvia @jogar
fim se

se a = "pedra"
        se b = "papel" desvia @computador
        se b = "tesoura" desvia @humano
fim se

se a = "papel"
        se b = "tesoura" desvia @computador
        se b = "pedra" desvia @humano
fim se

se a = "tesoura"
        se b = "pedra" desvia @computador
        se b = "papel" desvia @humano
fim se

***************************
@computador

        soma z 1
        subtrai y 1
        se y <> 0 desvia @jogar

        bipa
        bipa
        bipa
        seja c rand 13
        se c = 0 escreve "eu ganhei!"
        se c = 1 escreve "você perdeu!"
        se c = 2 escreve "você não está com nada!"
        se c = 3 escreve "que jogada de mestre!"
        se c = 4 escreve "jogou muito mal"
        se c = 5 escreve "acho que você não sabe jogar!"
        se c = 6 escreve "melhor sorte na próxima"
        se c = 7 escreve "acho que você está com azar hoje"
        se c = 8 escreve "ganhei, aprendeu como é que se joga?"
        se c = 9 escreve "eu sou um gênio!"
        se c = 10 escreve "eu sou demais!"
        se c = 11 escreve "eu sou o máximo!"
        se c = 12 escreve "eu jogo muito!"
        termina

***************************
@humano

        soma y 1
        subtrai z 1
        se z <> 0 desvia @jogar
        
        bipa
        bipa
        bipa
        seja h rand 13
        se h = 0 escreve "eu perdi!"
        se h = 1 escreve "você ganhou!"
        se h = 2 escreve "você venceu!"
        se h = 3 escreve "parabéns, você ganhou!"
        se h = 4 escreve "parabéns, você venceu!"
        se h = 5 escreve "você fez uma ótima jogada!"
        se h = 6 escreve "por essa eu não esperava"
        se h = 7 escreve "eu estava distraído"
        se h = 8 escreve "joguei mal"
        se h = 9 escreve "jogada de sorte"
        se h = 10 escreve "sorte de principiante"
        se h = 11 escreve "acho que você está aprendendo a jogar"
        se h = 12 escreve "você só pode estar roubando"
        termina
