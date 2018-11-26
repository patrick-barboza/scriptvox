* Pega uma linha de informação de um servidor remoto
* Autor: Antonio e Junior
* Em 9/11/2000

escreve "Informe o nome do servidor a acessar"
le s

escreve "Informe a porta TCP/IP (21=FTP, 25=SMTP, 110=POP3)"
le p

internet inicia
conecta #1 s p
escreve "Conexão realizada"
le #1 i
escreve i

escreve #1 "HELP"

@pegaProxLinha
    seja t 5
    chama @esperaInternet
    se t = 0 desvia @fim

    le #1 i
    checa e
    se e <> 0 desvia @fim
    escreve i

    desvia @pegaProxLinha

@fim
fecha #1
internet termina
termina

**********

@esperaInternet
    observa #1 e
    se e <> 0 retorna

    soma t -1
    se t = 0 retorna

    espera 1
    desvia @esperaInternet
