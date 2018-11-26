* Remove de um servidor remoto as cartas com determinados remetentes
* ou com tamanho grande
* Autor: Antonio e Junior
* Em 26/11/2000
*
* Principais variaveis:
*  a - arquivo que contem o nome dos indesejados
*  m - máximo tamanho da carta
*  x - usada para envio de informações para a internet
*  i - linha lida da internet
*  p - palavra extraida desta linha
*  n - número de cartas do servidor
*  r - número da carta atualmente recebida
*  d - quando valer 1 pode deletar esta carta
*  q - quantas cartas foram removidas
*
**************************************************

escreve "Informe o nome do arquivo que contém os e-mails indesejados"
le a

escreve "Informe o tamanho máximo das cartas que não serão apagadas"
le m
se m = "" seja m "999999999"

chama @login
chama @descobreNumCartas

seja q 0
seja r 1
@trataUmaCarta
     seja d 0
     chama @analisaTamanhoDaCarta
     se d = 0 chama @analisaTopoDaCarta
     se d = 1 chama @deletaCarta
     soma r 1
     se r <= n desvia @trataUmaCarta

chama @logout

escreve "Número de cartas apagadas   " &
escreve q
escreve "fim de processamento"
le
termina

**************************************************
*  rotina que executa o login no servidor remoto
**************************************************
@login

escreve "Informe o nome do servidor POP3 a acessar"
le s

internet inicia
conecta #1 s 110
escreve "Conexão realizada"
le #1 i
escreve mudo i

escreve "Informe sua conta"
le c

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
*   rotina que analisa o tamanho de uma carta
****************************************************
@analisaTamanhoDaCarta

seja x "list "
concatena x r
escreve #1 x
le #1 i
escreve mudo i

seja x i
chama @extraiPalavra
chama @extraiPalavra
chama @extraiPalavra

se p > m seja d 1
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

**************************************************
*  rotina que verifica se a pessoa e' indesejada
*  Para isso busca a linha que contém From:
**************************************************
@analisaTopoDaCarta

seja x "top "
concatena x r
concatena x " 0"
escreve #1 x
bipa 1

@leTopo
     le #1 i
     se i = "." retorna
     seja i maiusc i
     se i =* "FROM:" chama @testaIndesejavel
     desvia @leTopo

***

@testaIndesejavel
    escreve mudo i
    abre #2 a

@leArq
    le #2 l
    checa s
    se s <> 0 desvia @arqFim
    seja l maiusc l
    se não i *=* l desvia @leArq

    * se achou, marca para deletar e sai
    seja d 1

@arqFim
    fecha #2
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
