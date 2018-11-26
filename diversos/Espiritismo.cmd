* Script que sintetiza aleatoriamente uma mensagem
* Autor: Tiago Melo Casal
* Em: 16/03/2004

* Variáveis:
* a - Endereço do arquivo
* c - Checagem se o comando anterior foi executado
* l - Linha lida do arquivo
* m - Mensagem
* r - Sorteio
* v w x y z - Uso variado



* Nome incompleto do arquivo de mensagens
Seja a "C:\Winvox\Scripts\Espiritismo.c"

* Sorteio de um número para completar o nome do arquivo de mensagens
Randomiza
Seja r Rand 1
* Nome do arquivo com dois algarismos, necessário para completar
Seja w Tamanho r
Se w=1 Concatena a "0"
Concatena a r
* Abre o arquivo de mensagens
Abre #1 a
Se r=0 Desvia @0

* Mensagens dos 4 evangelhos canônicos
@0
* Sorteia qual dos 4 evangelhos
Randomiza
Seja r Rand 4
Se r=0
Seja x "Mateus-Capítulo-"
Seja y " (Evangelho segundo Mateus - Capítulo "
Seja z " - Versículo "
Senão
Se r=1
Seja x "Marcos-Capítulo-"
Seja y " (Evangelho segundo Marcos - Capítulo "
Seja z " - Versículo "
Senão
Se r=2
Seja x "Lucas-Capítulo-"
Seja y " (Evangelho segundo Lucas - Capítulo "
Seja z " - Versículo "
Senão
Se r=3
Seja x "João-Capítulo-"
Seja y " (Evangelho segundo João - Capítulo "
Seja z " - Versículo "
Fim Se
* Sorteia qual capítulo
Seja w r
Randomiza
Se w=0 Seja r Rand 28
Se w=1 Seja r Rand 16
Se w=2 Seja r Rand 24
Se w=3 Seja r Rand 21
Soma r 1
Concatena x r
Concatena y r
Concatena y z
* Encontra o capítulo e copia para uma variável
Lê #1 l
Checa c
Se c <> 0 Escreve "Erro no arquivo de mensagens " a
Se c <> 0 Escreve "Finalizando..."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Enquanto Não l =* x
    Lê #1 l
    Checa c
Se c <> 0 Escreve "Erro no arquivo de mensagens " a
Se c <> 0 Escreve "Finalizando..."
Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Fim Enquanto
    Lê #1 l
    Checa c
Se c <> 0 Escreve "Houve algum erro no processamento do arquivo."
    Se c <> 0 Fecha #1
Se c <> 0 Termina Mudo
Seja w l
Enquanto Não l=""
Concatena w " "
Concatena w l
    Lê #1 l
    Checa c
    Se c <> 0 Fecha #1
    Se c <> 0 Desvia @Extrai
Fim Enquanto
Fecha #1
* Sorteia versículo
@Extrai
Randomiza
Se x =* "Mateus" Seja r Rand 75
Se x =* "Marcos" Seja r Rand 72
Se x =* "Lucas" Seja r Rand 80
Se x =* "João" Seja r Rand 71
Soma r 1
* Extrai para a variável o versículo e sintetiza
Seja v Pos r w
Se v=0 Desvia @Extrai
Seja x Tamanho r
Se x=2 Soma v 1
Soma v 2
Soma r 1
Seja z Pos r w
Se z > 0
Subtrai z 2
Copia t w v z
Subtrai r 1
Concatena t y
Concatena t r
Concatena t ".)"
Desvia @Sintetiza
Fim Se
Seja z Tamanho w
Copia t w v z
Subtrai r 1
Concatena t y
Concatena t r
Concatena t ".)"
Desvia @Sintetiza

@Sintetiza
Escreve t
Termina Mudo
