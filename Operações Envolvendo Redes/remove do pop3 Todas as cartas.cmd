* Remove de um servidor remoto todas as cartas
* Autor: Neno Albernaz
* Em 28/12/2006
*
* Principais variaveis:
*  x - usada para envio de informações para a internet
*  n - número de cartas do servidor
*  r - número da carta atualmente recebida
*  q - quantas cartas foram removidas
*
**************************************************

escreve "Esse programa apaga todas as cartas do servidor."
escreve "Deseja continuar?"
le o&
se o <> "s"
    escreve "Desistiu..."
    termina mudo
fim se

chama @login
chama @descobreNumCartas
se n = "0"
    escreve "Não existe cartas no servidor"
    termina
fim se

seja q 0
seja r 1
@trataUmaCarta
chama @deletaCarta
     soma r 1
     se r <= n desvia @trataUmaCarta
escreve "Aguarde ..."
chama @logout

escreve "Número de cartas apagadas   " &
escreve q
escreve "fim de processamento"
termina

**************************************************
*  rotina que executa o login no servidor remoto
**************************************************
@login

escreve "Informe o nome do servidor POP3 a acessar"
le s
se s = ""
    escreve "Desistiu..."
    termina mudo
fim se

internet inicia
conecta #1 s 110
escreve "Conexão realizada"
le #1 i
escreve mudo i

escreve "Informe sua conta"
le c
se c = ""
    escreve "Desistiu..."
    termina mudo
fim se

seja x "user "
concatena x c
escreve #1 x
le #1 i
escreve mudo i

se i =* "+" desvia @ok1
escreve "Conta errada"
desvia @fim

@ok1
escreve "Informe sua senha"
le s
se s = ""
    escreve "Desistiu..."
    termina mudo
fim se

seja x "pass "
concatena x s
escreve #1 x
le #1 i
escreve mudo i

se i =* "+" desvia @ok2
escreve "Senha errada"
desvia @fim

@ok2
retorna

****************************************************
*   rotina que descobre o número de cartas
****************************************************
@descobreNumCartas

escreve #1 "stat"
le #1 i
escreve mudo i

seja x i
chama @extraiPalavra
chama @extraiPalavra
seja n p
escreve "Número de cartas no servidor   " &
escreve n
retorna

****************************************************
*   rotina que executa a finalização
****************************************************
@logout

escreve #1 "quit"
le #1 i
escreve mudo i

fecha #1
internet termina
retorna

*******************************
*  rotina que deleta uma carta
*******************************
@deletaCarta

seja x "dele "
concatena x r
escreve #1 x
bipa

le #1 i
escreve mudo i

soma q 1
retorna

*********************************************************
* rotina que tira a primeira palavra de x jogando-a em p
*********************************************************
@extraiPalavra

seja x trim x
seja p x
seja k pos " " x
se k <= 0 retorna
soma k -1
copia p x 1 k
soma k 2
copia x x k 999
retorna
