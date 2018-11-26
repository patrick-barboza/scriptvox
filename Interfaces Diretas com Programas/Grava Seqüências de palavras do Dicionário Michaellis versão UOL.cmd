* Script para gravar sequencias de palavras dos Dicionários Michaelis - UOL
* Autor: Glauco Ferius Constantino de Oliveira
* Em 19/06/2003/Recife-PE

cor 14
fundo 1
tela limpa
escreve ""
escreve "Gravando uma sequência de  palavras de um dos dicionários Michaelis-UOL"
seja c "C:\Dic\WDIC\WDIC.EXE"
seja b "c:\WINDOWS\NOTEPAD.EXE"
seja e "c:\winvox\edivox"

@inicio
escreve ""
toca "c:\winvox\som\dosvox\dvopcao.wav"
*escreve "Escolha o Dicionário:"
escreve "1  Português-Português"
escreve "2  Português-Inglês"
escreve "3  Inglês-Português"
escreve "4  Português-Espanhol"
escreve "5  Espanhol-Português"
escreve "6  Informática"
escreve "7  Sinônimos e antônimos"
le m&
escreve ""
se m = "1" desvia @portugues
se m = "2" desvia @portugues-ingles
se m = "3" desvia @ingles-portugues
se m = "4" desvia @portugues-espanhol
se m = "5" desvia @espanhol-portugues
se m = "6" desvia @info
se m = "7" desvia @sinon-anton
desvia @inicio

@portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Melhoramentos"
@tentadenovo
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovo
senão
    chama @prossegue
fim se
@prossegue
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovo
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário Melhoramentos"
executa c&
espera 5
aciona "home"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checaum
senão
    chama @prosseguir
fim se
@checaum
se p = 1 desvia @ler

@prosseguir
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@portugues-ingles
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Português-Inglês"
@tentadenovopi
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovopi
senão
    chama @prosseguepi
fim se
@prosseguepi
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovopi
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário Michaelis Português-Inglês"
executa c&
espera 5
aciona "home"
espera 1
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checaumpi
senão
    chama @prosseguirpi
fim se
@checaumpi
se p = 1 desvia @ler

@prosseguirpi
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@ingles-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Inglês-Português"
@tentadenovoip
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovoip
senão
    chama @prossegueip
fim se
@prossegueip
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovoip
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário Michaelis Inglês-Português"
executa c&
espera 5
aciona "end"
aciona "left"
aciona "left"
aciona "left"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checaumip
senão
    chama @prosseguirip
fim se
@checaumip
se p = 1 desvia @ler

@prosseguirip
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@espanhol-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Espanhol-Português"
@tentadenovoep
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovoep
senão
    chama @prossegueep
fim se
@prossegueep
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovoep
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário Michaelis Espanhol-Português"
executa c&
espera 5
aciona "end"
aciona "left"
aciona "left"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checaumep
senão
    chama @prosseguirep
fim se
@checaumep
se p = 1 desvia @ler

@prosseguirep
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@portugues-espanhol
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Português-Espanhol"
@tentadenovope
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovope
senão
    chama @prosseguepe
fim se
@prosseguepe
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovope
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário Michaelis Português-Espanhol"
executa c&
espera 5
aciona "home"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checaumpe
senão
    chama @prosseguirpe
fim se
@checaumpe
se p = 1 desvia @ler

@prosseguirpe
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@info
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário de Informática"
@tentadenovoinf
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovoinf
senão
    chama @prossegueinf
fim se
@prossegueinf
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovoinf
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário de Informática"
executa c&
espera 5
aciona "home"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checauminf
senão
    chama @prosseguirinf
fim se
@checauminf
se p = 1 desvia @ler

@prosseguirinf
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@sinon-anton
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário de Sinônimos e Antônimos"
@tentadenovosa
busca d DIR
escreve "Qual o nome do arquivo, sem extensão"
le n
se n = "" desvia @fim
seja k pos "." n
se k > 0
    chama @tentadenovosa
senão
    chama @prosseguesa
fim se
@prosseguesa
concatena d "\"
concatena d n
concatena d ".txt"
concatena n ".txt"
escreve n

busca x d
se x <> ""
     escreve "Arquivo existente"
desvia @tentadenovosa
fim se

escreve "Quantas palavras gravo"
le p
se p = "" desvia @fim
se p = "0" desvia @fim

escreve "Gravo a partir de qual palavra? "&
le v
se v = "" desvia @fim

escreve "Gravo quantas palavras anteriores?"&
le q

escreve "Gravando à partir de"&
bipa
escreve v
bipa

seja j q
se q >= 0 soma j p
escreve "Total a gravar " j
fim se

toca "c:\winvox\som\clockvox\ckbip.wav"
toca "c:\winvox\som\clockvox\ckbip.wav"
escreve "Carregando o Dicionário de Sinônimos e Antônimos"
executa c&
espera 5
aciona "home"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
aciona "TAB"
espera 1
aciona "DOWN"
aciona "UP"
se q >= 0
repete i q
aciona "UP"
fim repete
espera 1
escreve "Gravando a 1"
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita d&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se q >= 0
*escreve "gravei 1"
se q = 0
chama @checaumsa
senão
    chama @prosseguirsa
fim se
@checaumsa
se p = 1 desvia @ler

@prosseguirsa
subtrai j 1
repete i j
seja k i
se p > 0
soma k 1

escreve "Gravando a " k
escreve "Copiando para área de transferência"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ALT+TAB"
espera 1
escreve "Trazendo da Área de transferência
executa d&
espera 8
aciona "ctrl+END"
aciona "ctrl+v"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+F4"
aciona "ENTER"
aciona "ALT+TAB"
    aciona "TAB"
espera 1
aciona "DOWN"
espera 1
aciona "ALT+TAB"
seja k i
se p > 0
soma k 1
*escreve "Gravei " k
fim repete
desvia @ler

@ler
cor 15
fundo 4
tela limpa
escreve ""
escreve "Após fechar o Edivox aperte ENTER"&
aciona "ALT+TAB"
aciona "CTRL+t"
espera 1
executa e&
espera 2
digita n
espera 1
aciona "F9"
digita "ft"&
le
desvia @opcoes

@opcoes
cor 14
fundo 1
tela limpa
escreve ""
escreve "Você deseja:"
escreve "g - Gravar outra sequência"
escreve "m - mudar dicionário"
escreve "s - sair? "&
le o&
se o == "s" desvia @fim
se o == "m" desvia @inicio
se o == "g" desvia @outroverbete
se o <> "smg" desvia @opcoes

@outroverbete
se m = "1" desvia @portugues
se m = "2" desvia @portugues-ingles
se m = "3" desvia @ingles-portugues
se m = "4" desvia @portugues-espanhol
se m = "5" desvia @espanhol-portugues
se m = "6" desvia @info
se m = "7" desvia @sinon-anton
desvia @ler

@fim
cor 14
fundo 1
tela limpa
escreve ""
toca "c:\winvox\som\dosvox\dvtchau.wav"
toca "c:\winvox\som\somtags\filedone.wav"
termina mudo
