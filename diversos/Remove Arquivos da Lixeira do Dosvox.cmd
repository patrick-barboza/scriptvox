* Remove todos os arquivos da lixeira dosvox
* Autor: Marilza e Tamara
* Em 24/01/2003

escreve "Vou selecionar o diretorio \lixeira"
dir troca "\lixeira"

seja c 0

escreve "Apagando os arquivos..."
busca a "*.*"
@loop
    se a = "" desvia @fimDosArquivos
bipa
    remove a &
    soma c 1
    busca a PROXIMO
    desvia @loop

@fimDosArquivos
escreve "Total de arquivos removidos da lixeira: "&
escreve c
termina
