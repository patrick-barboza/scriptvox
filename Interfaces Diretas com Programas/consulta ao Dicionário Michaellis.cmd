* Script para o Dicionário Michaelis - UOL
* Autor: Renato Costa
* Em 25/07/2002

cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis"
seja d "C:\Dic\WDIC\WDIC.EXE"
seja e "c:\winvox\edivox dic.tmp"

@inicio
escreve ""
escreve "Escolha o Dicionário:"
escreve "1  Português-Português"
escreve "2  Português-Inglês"
escreve "3  Inglês-Português"
escreve "4  Português-Espanhol"
escreve "5  Espanhol-Português"
escreve "6  Informática"
escreve "7  Sinônimos e antônimos"
le n&
escreve ""
se n = "1" desvia @portugues
se n = "2" desvia @portugues-ingles
se n = "3" desvia @ingles-portugues
se n = "4" desvia @portugues-espanhol
se n = "5" desvia @espanhol-portugues
se n = "6" desvia @info
se n = "7" desvia @sinon-anton
se n ="#27" desvia @fim
desvia @inicio

@portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Melhoramentos"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "home"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@ler
cor 15
fundo 4
tela limpa
escreve ""
escreve "Após fechar o Edivox aperte ENTER"&
espera 1
executa e&
espera 2
aciona "ctrl+enter"
aciona "ctrl+v"
aciona "ctrl+pageup"
aciona "ctrl+enter"
aciona "F9"
digita "ft"&
le
desvia @opcoes

@portugues-ingles
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Português-Inglês"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "home"
aciona "right"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@ingles-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Michaelis Inglês-Português"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "end"
aciona "left"
aciona "left"
aciona "left"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@espanhol-portugues
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Espanhol-Português"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "end"
aciona "left"
aciona "left"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@portugues-espanhol
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Português-Espanhol"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "home"
aciona "right"
aciona "right"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@info
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário de Informática"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "home"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@sinon-anton
cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário de Sinônimos e Antônimos"
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
aciona "home"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
aciona "right"
espera 1
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@opcoes
cor 14
fundo 1
tela limpa
escreve ""
escreve "Você deseja:"
escreve "c - Consultar outro verbete"
escreve "m - mudar dicionário
escreve "s - sair? "&
le o&
se o == "s" desvia @fim
se o == "m" desvia @inicio
se o == "c" desvia @outroverbete
se o <> "smc" desvia @opcoes

@outroverbete
cor 14
fundo 1
tela limpa
escreve ""
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
bipa
escreve v
bipa
executa d&
espera 5
digita v&
espera 1
aciona "alt+e"
aciona "s"
espera 1
aciona "ctrl+c"
aciona "ctrl+t"
desvia @ler

@fim
cor 14
fundo 1
tela limpa
escreve ""
escreve "Até a próxima!"
termina mudo
