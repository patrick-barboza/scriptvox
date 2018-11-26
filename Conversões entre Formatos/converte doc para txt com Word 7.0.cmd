* Converte um arquivo documento do word em texto puro
* Utiliza Word 7.0
* Juliano dos Santos

escreve "Conversor de documentos do word para texto"
* Põe o texto entre aspas na tela, falando-o.
espera 1
* Dá um pequeno intervalo (um segundo), para ficar mais compreensível
escreve "Digite o nome do arquivo:"
*o usuário poderá digitar, se for precisso, um caminho longo, pois terá
* uma linha completa na tela.
le n
* Lê o valor digitado para a variável n
se n="" desvia @fim
* Se a variável n estiver vazia (o usuário teclou enter), o script tem
* fim.
escreve "Chamando o Word 7.0"
seja w "winword "
* Atribui o valor "winword " à variável w
concatena w n
* adiciona a variável N à direita da variável w
* Fica a linha completa para o winword...
executa w &
* Chama o word
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
* Dá um intervalo, para que a janela do word seja ativada

escreve "convertendo para txt"
aciona "alt+a"
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
digita "c"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
aciona "alt+r"
aciona "alt+down"
aciona "down"
aciona "down"
aciona "down"
aciona "down"
aciona "alt+s"
* São comandos que robotizam a tarefa que seria feita manualmente no
* word

toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
espera 1
* um tempo para que o arquivo seja gravado no formato txt...

aciona "ctrl+f4"
*Fecha o arquivo texto.
aciona "s"
toca "\WINVOX\SOM\CLOCKVOX\CKTEC.wav"
*Caso o word abra alguma janela de pergunta

aciona "alt+f4"
* Fecha o word

desvia @fim

@fim
escreve "Ok, fim do script"
termina
