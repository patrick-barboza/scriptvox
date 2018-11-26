* Script para correção de prova remota
* Autor: José Antonio Borges

escreve "Script para correção de prova remota"
escreve

escreve "Qual o arquivo de gabarito?"
le g

se g = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Qual o arquivo a gravar?"
le a

se a = ""
    escreve "Desistiu"
    desvia @fim
fim se

remove a &
abre #2 a &

escreve "Qual a conta"
le c

se c = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Qual a senha"
le s

se s = ""
    escreve "Desistiu"
    desvia @fim
fim se

chama @conecta
chama @corrige
chama @fechaInternet

fecha #2
escreve "Tecle enter para terminar"
le
@fim
termina mudo

********************************

@conecta

internet inicia
conecta #1 "intervox.nce.ufrj.br" 110
le #1 m

seja m "user "
concatena m c
escreve #1 m
le #1 m

seja m "pass "
concatena m s
escreve #1 m
le #1 m

seja m "stat"
escreve #1 m
le #1 m

copia m m 5 99
seja x pos " " m
subtrai x 1
copia t m 1 x
escreve "Total de mensagens: " &
escreve t

retorna

********************************

@corrige
    repete i t
        seja m "top "
        concatena m i
        concatena m " 50"
        escreve #1 m

        chama @pulaCabec
        chama @pulaCabec
        chama @pegaNomes

        se n <> "" chama @corrigeProva
        chama @ignoraResto

        se n = "" chama @removeProvaInvalida

    fim repete
    retorna

@pulaCabec
    seja m = "a"
    enquanto m <> ""
        le #1 m
    fim enquanto
    retorna

@ignoraResto
    seja m = "a"
    enquanto m <> "."
        le #1 m
    fim enquanto
    retorna

********************************

@pegaNomes
    le #1 m
    le #1 n
    seja n trim n
    seja n maiusc n

    se n = "" retorna

    le #1 m
    le #1 e
    seja e trim e

*    le #1 m
*    le #1 x
*    seja x trim x

    retorna

********************************

@corrigeProva
    escreve #2 n
    escreve #2 e
    escreve #2 x

    seja p 0
    seja q 0
    abre #3 g

@proxQuest
    le #3 v
    checa e
    se e <> 0 desvia @acabou
    se v = "" desvia @proxQuest

    soma q 1

    le #1 m
    le #1 m

    seja m trim m
    seja m maiusc m
    seja v maiusc v
    se v <> m
        escreve #2 q &
        escreve #2 " " &
        escreve #2 m
    senao
        soma p 1
    fim se

    desvia @proxQuest

@acabou
    fecha #3

    escreve #2 p
    escreve n
    escreve p
    retorna

********************************

@removeProvaInvalida
    seja m "dele "
    concatena m i
    escreve #1 m
    le #1 m
    retorna

********************************

@fechaInternet
escreve #1 "rset"
escreve #1 "quit"
le #1 m

fecha #1
internet termina
retorna
