* Script para o Dicionário Houaiss
* Autor: Marcos Victor
* Em 25/04/2004

cor 14
fundo 1
tela limpa
escreve ""
escreve "Dicionário Houaiss"
seja d "C:\Arquiv~1\houaiss\houaiss.EXE"
seja e "c:\winvox\edivox dic.tmp"

@inicio
escreve "Qual o verbete? "&
le v

se v = ""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Procurando por "&
escreve v
executa "C:\arquiv~1\Houaiss\Houaiss\Houaiss.exe"&
espera 15
digita v&
espera 1
aciona "ctrl+t"
clica 300 300
aciona "ctrl+a"
espera 1
aciona "ctrl+c"
espera 5

aciona "alt+a"
aciona "r"
espera 5

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
escreve "Gostaria de consultar outro verbete?"
le z&
se z = "s" desvia @inicio

@fim
termina mudo
