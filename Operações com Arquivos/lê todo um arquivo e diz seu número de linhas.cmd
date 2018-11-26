* Lista um arquivo
* Autor: Antonio e Junior
* Em 9/11/2000

* Descrição das variáveis
* n nome do arquivo
* e indica erro ou fim de arquivo
* t texto lido
* l número de linhas

escreve "Informe o nome do arquivo"
le n
abre #1 n

seja l 0
@paraTodos
    le #1 t
    checa e
    se e <> 0 desvia @acabou

    escreve t

    soma l 1
    desvia @paraTodos

@acabou
fecha #1

escreve "Foram lidas " &
escreve l &
escreve " linhas do arquivo " &
escreve n
