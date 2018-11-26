* Script para partida de jogo de xadrez remoto
* Autor: José Antonio Borges
* Em 01/09/2001

* Variáveis
* p - tempo gasto pelas pretas (servidor)
* b - tempo gasto pelas brancas (cliente)
* q - quem joga agora (B ou P)
* c - cor das pedras deste computador
* a - jogo está em atividade
* o - origem da mensagem sendo processada
* r - linha lida da rede
* t - linha lida do teclado
* x - comando a interpretar
* u - último tempo lido
* h - tempo obtido neste momento
* k - tempo decorrido na última jogada
* v - contador de vezes
* l - último comando do adversário

*--------------------
* Rotina de controle:
*--------------------

    internet inicia
    escreve "Relógio comunicador para xadrez por internet"
    espera 1
    escreve
    escreve "Comandos"
    escreve "/F      fim do jogo"
    escreve "/T      para perguntar o tempo"
    escreve "/texto  envia mensagem fora do jogo"
    escreve "//      repete o último comando do adversário"
    escreve

    espera 1
    chama @limpaTec
    escreve "Escolha B para brancas ou P para pretas"
    le c &
    seja c maiusc c
    escreve mudo c

    chama @obtemIpLocal

    espera 1
    escreve
    escreve "Escolha uma porta para o jogo (sugiro 2222)"
    le n
    se n = "" seja n 2222

    * zera relógios
    seja b 0
    seja p 0
    seja q "Ninguém"
    seja l ""

    * processamento
    se c = "B"
        chama @processaCliente
    senão
        chama @processaServidor
        chama @cancelaJogo
    fim se

    * espera eventuais mensagens finais e termina
    chama @esperaMensagensFinais

    le
    fecha #1
    internet termina
    termina mudo

*------------------------------
* Funções do servidor (pretas):
*------------------------------

@processaServidor
    escreve "Qual o tempo máximo dos jogadores em segundos?"
    le m
    multiplica m 100

    escreve "Esperando conexão"
    serve #1 n
    escreve "Partida iniciada.  Brancas jogam."

    seja u tempo

    seja a 1
    enquanto a = 1
        chama @acumulaRelogio

        * processa dado vindo do teclado
        observa teclado t
        se t = 0 desvia @testaRede

        le t
        copia x t 1 1
        seja o "P"
        se x = "/"
            seja x t
            chama @interpretaComandos
        senão
            escreve #1 t
            seja q = "B"
        fim se

@testaRede
        * processa dado vindo da rede
        observa #1 r
        se r = 0 desvia @maisUmLoop

        le #1 r
        se r = "" desvia @maisUmLoop

        copia x r 1 1
        seja o "B"
        se x <> "/"
            seja q = "P"
            escreve r
            seja l r
        senão
            seja x r
            chama @interpretaComandos
        fim se

@maisUmLoop
    fim enquanto

    retorna

*------------------------------------------
* interpreta comandos (servidor ou cliente)
*------------------------------------------

@interpretaComandos
    seja x maiusc x

    se x = "/T"
        * Nota: Chama relogio duas vezes para não trocar de jogador ativo
        chama @acumulaRelogio

        seja x "Tempo: brancas "
        seja y b
        divide y 100
        concatena x y
        concatena x " pretas "
        seja y p
        divide y 100
        concatena x y

        se o = "B" escreve #1 x
        se o = "P" escreve x

        retorna

    senão
    se x = "//"
        se o = "B" escreve #1 l
        se o = "P" escreve l

    senão
    se x = "/F"
        escreve #1 x
        seja a 0

    senão
        escreve x
    fim se

    retorna

*------------------
* acumula o relógio
*------------------

@acumulaRelogio
    seja h tempo
    seja k h
    subtrai k u
    seja u h

    se q = "B" soma b k
    se q = "P" soma p k
    se b > m  seja a = 0
    se p > m  seja a = 0

    retorna

*------------------------
* espera mensagens finais
*------------------------

@esperaMensagensFinais

    repete v 5
        espera 1
        observa #1 r
        se r <> 0
            le r
            escreve r
        fim se
        espera 1
    fim repete

    retorna

*-----------------------------------
* cancela jogo e informa tempo final
*-----------------------------------

@cancelaJogo

    seja x "Fim da partida"
    escreve #1 x
    escreve x

    seja x "Tempo das brancas: "
    divide b 100
    concatena x b
    escreve #1 x
    escreve x

    seja x "Tempo das pretas: "
    divide p 100
    concatena x p
    escreve #1 x
    escreve x

    retorna

*------------------------------
* Funções do cliente (brancas):
*------------------------------

@processaCliente
    escreve "Informe o endereço IP do seu parceiro"
    le i
    conecta #1 i n
    escreve "Partida iniciada.  Brancas jogam."

    seja a 1
    enquanto a = 1

        * processa dado vindo do teclado
        observa teclado t
        se t <> 0
            le t
            escreve #1 t
        fim se

        * processa dado vindo da rede
        observa #1 r
        se r = 0 desvia @prox

        le #1 r
        se r =  "/F"
            seja a 0
        senão
            escreve r
            seja l r
        fim se

@prox
    fim enquanto
    retorna

*---------------
* Obtém IP local  (faz uma conexão boba com a intervox)
*---------------

@obtemIpLocal
    escreve
    escreve "Abrindo comunicações"
    conecta #1 "146.164.3.4" 80
    escreve "Seu endereço é " &
    ip local #1 l
    chama @limpaTec
    escreve l
    fecha #1
    retorna

*---------------
* limpa teclado
*---------------

@limpaTec
    seja t 1
    enquanto t <> 0
        observa teclado t
        se t <> 0 le mudo t &
    fim enquanto
    retorna
