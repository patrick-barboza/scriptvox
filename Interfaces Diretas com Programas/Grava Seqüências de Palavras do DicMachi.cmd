* Script para gravar sequencias de palavras do dicionário DICMAXI - Dicionário Multimídia Michaelis
* Autor: Glauco Ferius Constantino de Oliveira
* Em 18/12/2003/Recife-PE

cor 14
fundo 1
tela limpa
escreve ""
escreve "Gravando uma sequência de  palavras de um dos dicionários DICMAXI - Dicionário Multimídia Michaelis"
seja d "C:\dts\WDIC\WDIC.EXE"
seja b "c:\WINDOWS\NOTEPAD.EXE"
seja e "c:\winvox\edivox"

@inicio
escreve ""
toca "c:\winvox\som\dosvox\dvopcao.wav"
*escreve "Escolha o Dicionário:"
escreve "a  Português-Português"
escreve "b  Inglês-Português"
escreve "c  Português-Inglês"
escreve "d  Francês-Português"
escreve "e  Português-Francês"
escreve "f  Espanhol-Português"
escreve "g  Português-Espanhol"
escreve "h  Italiano-Português"
escreve "i  Português-Italiano"
escreve "j  Alemão-Português"
escreve "k  Português-Alemão"
escreve "l  Informática"
escreve "m  Glossário - Informática (Português-Inglês)"
escreve "n  Executivo"
escreve "o  Glossário - Executivo"
escreve "p  Sinônimos e Antônimos"
escreve "q  Economia e Direito (Alemão-Português)"
escreve "r  Economia e Direito (Português-Alemão)"
le m&
escreve ""
se m = "a" desvia @portugues-portugues
se m = "b" desvia @ingles-portugues
se m = "c" desvia @portugues-ingles
se m = "d" desvia @frances-portugues
se m = "e" desvia @portugues-frances
se m = "f" desvia @espanhol-portugues
se m = "g" desvia @portugues-espanhol
se m = "h" desvia @italiano-portugues
se m = "i" desvia @portugues-italiano
se m = "j" desvia @alemao-portugues
se m = "k" desvia @portugues-alemao
se m = "l" desvia @informatica
se m = "m" desvia @glossario-informatica
se m = "n" desvia @executivo
se m = "o" desvia @glossario-executivo
se m = "p" desvia @sinonimos-antonimos
se m = "q" desvia @economia-direitoap
se m = "r" desvia @economia-direitopa
desvia @inicio

@portugues-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Melhoramentos Soft da Língua Portuguesa"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Melhoramentos Soft da Língua Portuguesa"
executa d&
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@ingles-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Inglês-Português"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Inglês-Português"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@portugues-ingles
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Português-Inglês"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Português-Inglês"
executa d&
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@frances-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Francês-Português"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Francês-Português"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@portugues-frances
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Português-Francês"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Português-Francês"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@Espanhol-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Espanhol-Português"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Espanhol-Português"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@portugues-Espanhol
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Português-Espanhol"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Português-Espanhol"
executa d&
espera 5
aciona "home"
espera 1
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@italiano-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Italiano-Português"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Italiano-Português"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@portugues-italiano
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Português-Italiano"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Português-Italiano"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@alemao-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Alemão-Português"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Alemão-Português"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@portugues-alemao
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Português-Alemão"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Português-Alemão"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@informatica
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Dicionário Prático de Informática"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Dicionário Prático de Informática"
executa d&
espera 5
aciona "home"
espera 1
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@glossario-informatica
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Glossário Michaelis Soft Informática (Port/Ingl)"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Glossário Michaelis Soft Informática (Port/Ingl)"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@Executivo
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Soft Executivo"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis Soft Executivo"
executa d&
espera 5
aciona "home"
espera 1
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
escreve "Carregando o Dicionário Michaelis Soft Executivo"
escreve "Carregando o Dicionário Glossário Michaelis Soft Executivo"
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@glossario-Executivo
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Glossário Michaelis Soft Executivo"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Glossário Michaelis Soft Executivo"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@sinonimos-antonimos
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Minidicionário de Sinônimos e Antônimos"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Minidicionário de Sinônimos e Antônimos"
executa d&
espera 5
aciona "home"
espera 1
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler
 

@economia-direitoap
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis tech Economia e Direito (Alemão-Português)"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis tech Economia e Direito (Alemão-Português)"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
fim repete
desvia @ler

@economia-direitopa
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis tech Economia e Direito (Português-Alemão)"
@tentadenovo
escreve "Digite o caminho completo de um arquivo sem extensão"
le n
se n = "" desvia @fim
concatena n ".txt"

busca x n
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

escreve "Carregando o Dicionário Michaelis tech Economia e Direito (Português-Alemão)"
executa d&
espera 5
aciona "home"
espera 1
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
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
escreve "Copiando para área de transferência
aciona "ALT+e"
aciona "s"
espera 1
aciona "ctrl+c"
escreve "Carregando o Bloco de Notas
aciona "CTRL+ESC"
espera 3
aciona "x"
espera 3
executa b&
espera 8
escreve "Trazendo da Área de transferência
aciona "ctrl+v"
*aciona "CTRL+END"
aciona "ENTER"
aciona "ENTER"
aciona "ALT+a"
espera 3
aciona "s"
espera 2
digita n&
espera 2
aciona "ENTER"
espera 1
aciona "ALT+F4"
se p = 1 desvia @ler

se p > 1 soma p -1

se q >= 0
repete i q
se p > 0 soma p 1
fim repete

escreve "Gravando as próximas"
repete i p
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
executa n&
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
se m = "a" desvia @portugues-portugues
se m = "b" desvia @ingles-portugues
se m = "c" desvia @portugues-ingles
se m = "d" desvia @frances-portugues
se m = "e" desvia @portugues-frances
se m = "f" desvia @Espanhol-portugues
se m = "g" desvia @portugues-Espanhol
se m = "h" desvia @italiano-portugues
se m = "i" desvia @portugues-italiano
se m = "j" desvia @alemao-portugues
se m = "k" desvia @portugues-alemao
se m = "l" desvia @informatica
se m = "m" desvia @glossario-informatica
se m = "n" desvia @Executivo
se m = "o" desvia @glossario-Executivo
se m = "p" desvia @sinonimos-antonimos
se m = "q" desvia @Economia-Direitoap
se m = "r" desvia @Economia-Direitopa
desvia @ler

@fim
cor 14
fundo 1
tela limpa
escreve ""
toca "c:\winvox\som\dosvox\dvtchau.wav"
termina mudo
