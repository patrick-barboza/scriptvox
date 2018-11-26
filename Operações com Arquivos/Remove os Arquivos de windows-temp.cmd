* Remove todos os arquivos tempor rios de \windows\temp
* Autor: Marcelo Pildich Guimarães
* Em 04/09/2003

escreve "Vou selecionar o diretorio \windows\temp"
dir troca "\windows\temp"

seja c 0

escreve "Apagando os arquivos TMP..."
busca a "*.tmp"
chama @apaga

escreve "Apagando os arquivos HTM..."
busca a "*.htm"
chama @apaga

escreve "Apagando os arquivos TXT..."
busca a "*.txt"
chama @apaga

escreve "Total de arquivos removidos: "&
escreve c
termina

* -------

@apaga
    se a = "" retorna
    bipa
    remove a &
    soma c 1
    busca a PROXIMO
    desvia @apaga
