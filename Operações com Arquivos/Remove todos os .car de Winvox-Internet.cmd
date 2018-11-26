*Remove todas as cartas .CAR do diretório \winvox\internet
*Autor: Marcelo Pildich Guimarães
*Em 20/03/2003

escreve "Vou selecionar o diretorio \winvox\internet"
dir troca "\winvox\internet"

seja c 0

escreve "Apagando os arquivos..."
busca a "*.CAR"
@loop
    se a = "" desvia @fimDosArquivos
bipa
    remove a &
    soma c 1
    busca a PROXIMO
    desvia @loop

@fimDosArquivos
escreve "Total de arquivos removidos: "&
escreve c
termina
