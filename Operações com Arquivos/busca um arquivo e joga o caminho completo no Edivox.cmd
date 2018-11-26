cor 14
fundo 1
tela limpa

seja c "command /c dir/s /b \"

escreve "Qual o nome do arquivo a procurar: "
le a

se a = ""
termina mudo
fim se

concatena c a
concatena c "> \procura.tmp"

cor 4
escreve "Aguarde que irei procurar por "
bipa
escreve a
bipa

executa c &
chama @esperaComCleck

abre #1 "\procura.tmp"
    le #1 l
    checa x
se x <> 0
escreve "Arquivo não encontrado"
termina mudo
fim se
fecha #1

executa "c:\winvox\edivox.exe \procura.tmp"
termina mudo

*Procedimentos
@esperaComCleck
espera 1
captura TÍTULO t
seja x t
enquanto t = x
    bipa 1
    espera 1
    captura TÍTULO x
fim enquanto
retorna
