* Converte arquivo ppt para jpg
* Autor: Neno Henrique Albernaz
* em 10/01/2002

escreve "Conversor de arquivo ppt para jpg"
escreve "Digite o nome do arquivo com a extensão ppt"
le n
se n=""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Aguarde"
seja p "powerpnt "
concatena p n
executa p &
chama @esperaUmSegundo

aciona "f12"
chama @esperaUmSegundo
aciona "alt+r"
chama @esperaUmSegundo
aciona "f"
chama @esperaUmSegundo
aciona "alt+s"
    chama @esperaUmSegundo
aciona "alt+s"

seja t 50
seja k 1
@loop0
    chama @esperaUmSegundo
    soma k 1
se k<=t desvia @loop0

aciona "enter"
    chama @esperaUmSegundo
aciona "ALT+F4"
@fim
termina mudo

@esperaUmSegundo
espera 1
bipa 1
retorna
