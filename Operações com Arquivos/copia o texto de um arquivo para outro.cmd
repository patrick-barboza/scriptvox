* Copia de um arquivo para outro
* Autor: Antonio e Junior
* Em 9/11/2000

* Descrição das variáveis
* a nome do arquivo antigo
* n nome do arquivo novo
* e indica erro ou fim de arquivo
* t texto lido
* l número de linhas

escreve "Informe o nome do arquivo a copiar"
le a
abre #1 a

escreve "Informe o nome do novo arquivo"
le n
remove n &
abre #2 n &

seja l 0
@paraTodos
    le #1 t
    checa #1 e
    se e <> 0 desvia @acabou

    escreve #2 t

    soma l 1
    desvia @paraTodos

@acabou

fecha #1
fecha #2

escreve "Foram lidas " &
escreve l &
escreve " linhas do arquivo " &
escreve a
