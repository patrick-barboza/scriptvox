* Mini pegador de arquivo html
* Autor: Antonio e Junior
* Em 9/11/2000

escreve "Informe o nome do servidor de http"
le f
internet inicia
conecta #1 f 80
escreve "Conexão realizada"

escreve "Qual a uri"
le u
seja x "GET "
concatena x u
concatena x " HTTP/1.0"
escreve #1 x
escreve #1 ""

@loop
    seja t 10
    chama @esperaInternet
    se t = 0 desvia @fim

    le #1 i
    checa e
    se e <> 0 desvia @fim
    escreve i
    desvia @loop

@fim
fecha #1
internet termina

le
termina

**********

@esperaInternet
    observa #1 e
    se e <> 0 retorna
    soma t -1
    se t = 0 retorna
    espera 1
    desvia @esperaInternet
