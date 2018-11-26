* mostra os subdiretórios de uma pasta
* Autor: Antonio e Junior
* Em 13/11/2000
*Modificado por: Cleverson Casarin Uliana; em 10 de Março de 2005

busca d DIR
escreve "Estou no diretório "
escreve d

escreve "informe o diretório"
lê n
dir troca n

escreve "Listagem dos subdiretórios"
busca a DIR "*.*"
@loop
    se a = "" desvia @fimDosArquivos
    escreve a
    busca a PROXIMO
    desvia @loop

@fimDosArquivos
