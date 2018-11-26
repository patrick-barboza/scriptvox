* Remove os arquivos \windows\temp\*.*
* \windows\cookies\*.txt
* Autor: Antonio e Junior
* Em 13/11/2000
* Auterado por: TIAGO MELO CASAL
* Em 28/06/2001


escreve "Apagando..."

seja c 0

dir troca "C:\windows\temp"
busca a "~web*.*"
escreve mudo "Apagando C:\windows\temp\~web*.*"
chama @loop
dir troca "C:\windows\temp"
busca a "*.*"
escreve mudo "Apagando \windows\temp\*.*"
chama @loop
dir troca "C:\windows\cookies"
busca a "*.*"
escreve mudo "Apagando C:\windows\cookies\*.*"
chama @loop
dir troca "C:\lixeira"
busca a "*.*"
escreve mudo "Apagando C:\lixeira\*.*"
chama @loop

escreve "Total de arquivos removidos: "&
escreve c
termina mudo

@loop
    se a = "" retorna
    escreve mudo a
    remove a &
    soma c 1
    busca a PROXIMO
    desvia @loop
