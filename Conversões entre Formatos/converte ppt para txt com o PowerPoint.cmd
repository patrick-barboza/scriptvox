* Conversor de arquivo en ppt para txt
* Autor: Neno Albernaz
* Idéia: Antonio Borges
* Em 08/01/2002

***********************************************************************

* Descrição das variáveis
* n - nome do arquivo em ppt
* t - nome do arquivo em txt
* p - linha de execução do power point
* e - linha de execução do edivox
* k - guarda a posição do ponto da extenção do arquivo

***********************************************************************

escreve "Conversor de arquivo ppt para txt"
escreve "Digite o nome do arquivo com a extensão ppt"
le n
se n="" escreve "Desistiu"
se n="" desvia @fim
seja k pos "." n
se k <= 0 
    escreve "Nome de arquivo inválido"
    desvia @fim
fim se

copia t n 1 k
concatena t "txt"
escreve "Aguarde"
seja p "powerpnt "
concatena p n

executa p &
chama @esperaUmSegundo

aciona "alt+x"
chama @esperaUmSegundo
aciona "e"
chama @esperaUmSegundo
aciona "ctrl+t"
chama @esperaUmSegundo
aciona "ctrl+c"
chama @esperaUmSegundo
aciona "ALT+F4"

remove t &
seja e "\winvox\edivox.exe "
concatena e t
executa e &
chama @esperaUmSegundo
chama @esperaUmSegundo
aciona "ctrl+v"
chama @esperaUmSegundo
chama @esperaUmSegundo
aciona "ctrl+x"

@fim
termina mudo

@esperaUmSegundo
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
retorna
