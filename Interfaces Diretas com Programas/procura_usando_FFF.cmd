*   Procura um arquivo
*   Readaptado por Neno Henrique da Cunha Albernaz
*   Em 10 de fevereiro de 2006
*   Colocar obrigatoriamente o fff.exe no diret�rio c:\windows.

cor 14
fundo 1
tela limpa

seja c "fff "

escreve "Qual o nome do arquivo a procurar: "
le a

se a = ""
termina mudo
fim se

concatena c a
concatena c "> c:\winvox\lixeira\procura.tmp"

cor 4
escreve "Aguarde que irei procurar por "
bipa
escreve a
bipa

executa c &
chama @esperaComCleck

abre #1 "c:\winvox\lixeira\procura.tmp"
    le #1 l
    checa x
se x <> 0
escreve "Arquivo n�o encontrado"
termina mudo
fim se
fecha #1

executa "c:\winvox\edivox.exe /L c:\winvox\lixeira\procura.tmp"
termina mudo

*Procedimentos
@esperaComCleck
espera 1
captura T�TULO t
seja x t
enquanto t = x
    bipa 1
    espera 1
    captura T�TULO x
fim enquanto
retorna