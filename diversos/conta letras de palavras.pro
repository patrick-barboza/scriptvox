* Conta letras de diversas palavras
* Autor: Antonio e Junior
* Em 27/7/2001
* Reescrito para o scripvox 6.4 por Patrick Barboza
* Em 12/11/2018

apresenta ()
pegainformações ()

função apresenta ()
    escreve "Tecle palavras, a última será fim"
fim função

função pegainformações ()
    le t
    contaletras (t)
fim função

função contaletras (texto)
    l := tamanho texto
    escreve "possui " &
    escreve l &
    escreve " letras"
    se texto = "fim" termina mudo
    pegainformações ()
fim função
