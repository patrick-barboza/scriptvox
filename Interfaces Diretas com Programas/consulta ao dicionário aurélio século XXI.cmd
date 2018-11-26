*Consulta no dicionário Aurélio século 21
*Autor: Bernard
*Aperfeiçoamento: Neno Albernaz
*Aperfeiçoado em 02/12/2001

escreve "Dicionário Aurélio"

@inicio
cor 14
fundo 1
tela limpa
escreve "Digite o termo a consultar"
le p
se p=""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Aguarde"
executa "C:\Arquiv~1\Aurlio~1\AeXXI.exe" &
seja s 5
chama @esperaSegundos
digita p
seja s 1
chama @esperaSegundos
aciona "ctrl+a"
chama @esperaSegundos
aciona "ctrl+c"
chama @esperaSegundos
janela fecha " XXI"

escreve "Após fechar o Edivox tecle enter"
executa "c:\winvox\edivox.exe /L termo.tmp"&
chama @esperaSegundos
aciona "ctrl+v"
aciona "ctrl+pageup"
aciona "F9"
digita "F"&
digita "T"&

le
escreve "Deseja consultar outro verbete "
le r&
se r = "#27"
    desvia @fim
fim se
se r = "n"
    desvia @fim
fim se
desvia @inicio
@fim
termina mudo

@esperaSegundos
    seja i 1
    @loopEspera
        espera 1
*        bipa
        toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
        soma i 1
    se i <=s  desvia @loopEspera
retorna
