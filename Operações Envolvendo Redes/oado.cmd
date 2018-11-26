* Pega cartas de um certo servidor usando pop3
* e joga em \winvox\e-mail
* Autor: Antonio e Junior
* Em 27/7/2001

randomiza
escreve "Pegador de cartas via POP3"

escreve "Qual o servidor?"
le m
se m = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Qual a conta?"
le u
escreve "Qual a senha?"
le senha p

internet INICIA
conecta #1 ssl m 995

repete v 10
    espera 1
    observa #1 s
    se s <> "0" desvia @chegoualgo
    escreve "esperando mais um segundo"
fim repete

escreve "Servidor está mudo, vou-me desconectar"
desvia @fim

@chegoualgo
    le #1 x
    escreve x
    escreve #1 "USER " u
    le #1 x
    escreve mudo x
    escreve #1 "PASS " p
    le #1 x
    escreve x

    escreve "quantas cartas quer trazer"
    le c
    repete n c     
        chama @pegaCarta
        escreve n
        
        seja x "DELE "
        concatena x n 
        escreve #1 x
    fim repete

    escreve #1 "QUIT"
    le #1 x
    escreve x

@fim
   escreve "ok"
   fecha #1
   internet TERMINA
   termina

@pegaCarta
   seja a "c:\winvox\e-mail\"
   seja t rand 30000
   concatena a t
   concatena a n
   concatena a ".CAR"
   
   seja x "RETR "
   concatena x n 
   escreve #1 x

   le #1 x
   copia x x 1 1
   se x = "-" retorna 

   abre #2 a & 

@loop1
   le #1 x
   escreve mudo x
   escreve #2 x
   se x <> "." desvia @loop1

   fecha #2
   retorna 
