* Script que sintetiza aleatoriamente uma mensagem
* Autor: Tiago Melo Casal
* Em: 16/03 | 24/07 / de 2004

* Variáveis:
* a - Endereço do arquivo
* c - Checagem se o comando anterior foi executado
* l - Linha lida do arquivo
* m - Mensagem
* n - Número de mensagens
* r - Contagem de repetições
* s - Mensagem sorteada
* v  x  z - Uso variado



* Nome do arquivo de mensagens
Seja a "C:\Winvox\Scripts\Mensagem.msg"
* A organização do arquivo de mensagem:
* Um campo "*(Númerodemensagens: N)", onde "N" deve ter obrigatoriamente
* o número de quantas mensagens tem no arquivo. As mensagens tem que
* estarem após a linha com o número de mensagens.
* As mensagens são indentificadas com um número, "*#N", ("N" é o número
* da mensagem), e a mensagem logo após, separada por um espaço, ou
* abaixo.

* Abre o arquivo de mensagens
Abre #1 a

* Coloca na variável N o número de mensagens
Enquanto Não l *=* "*(Númerodemensagens: "
Lê #1 l
Checa c
Se c <> 0 Escreve "Arquivo de mensagens " a &
Se c <> 0 Escreve " com erro, não encontrei o número das mensagens."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Fim Enquanto
Seja v Pos ": " l
Soma v 2
Seja x pos ")" l
Se x=0 Escreve "Falta ) na linha indicadora da quantidade de mensagens"
Se x=0 Fecha #1
Se x=0 Termina Mudo
Subtrai x 1
Copia n l v x
Se n < 1 "Não há mensagens no arquivo " a &
Se n < 1 Escreve " ou a indicação do número de mensagens, está " &
Se n < 1 Escreve "inválida."
Se n < 1 Fecha #1
Se n < 1 Termina Mudo

* Sorteia uma mensagem
Randomiza
Seja s Rand n
Soma s 1

* Procura a mensagem sorteada e joga na variável M
Seja x "*#"
Concatena x n
Enquanto Não l *=* x
Lê #1 l
Checa c
Se c <> 0 Escreve " Mensagem " n &
Se c <> 0 Escreve " não encontrada. Ou não existe, ou existe mais está"&
Se c <> 0 Escreve " sem referência, ou número de mensagens não confere."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Fim Enquanto
Seja y Tamanho l
Seja z Tamanho x
Se y > z Desvia @YMaiorQueZ
Lê #1 l
Checa c
Se c <> 0 Escreve "Erro. Fim do arquivo, mensagem " n &
Se c <> 0 Escreve " sem texto."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Seja x "*#"
Se l =* x Escreve "Não encontrei o texto da mensagem " n &
Se l =* x Fecha #1
Se l =* x Termina Mudo
Seja m l
Desvia @Continua
@YMaiorQueZ
Seja y Pos x l
Soma y z
Concatena x " "
Seja z Pos x l
Se z > 0 Soma y 1
Seja z Tamanho l
Copia m l y z

* Se a mensagem tiver continuação, coloca a continuação, em M
@Continua
Lê #1 l
Checa c
Se c <> 0 Desvia @Sintetiza
Seja x "*#"
Enquanto Não l *=* x
Concatena m " "
Concatena m l
Lê #1 l
Checa c
Se c <> 0 Desvia @Sintetiza
Fim Enquanto
Seja y Pos x l
Se y < 1 Desvia @Sintetiza
Subtrai y 1
Copia x l 1 y
Seja y Tamanho x
Seja z ""
Repete r y
Concatena z " "
Fim Repete
Se x=z Desvia @Sintetiza
Copia z x y y
Enquanto z=" "
Subtrai y 1
Copia z x y y
Fim Enquanto
Copia z x 1 y
Concatena m " "
Se x <> z
Concatena m z
Senão
Concatena m x
Fim Se

* Imprime a mensagem na tela e sintetiza
@Sintetiza
Escreve m
Fecha #1
Termina Mudo
