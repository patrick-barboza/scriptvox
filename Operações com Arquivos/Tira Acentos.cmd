***
* Programa que retira acentos
* Adaptador: Glauco Ferius
* Em 18/8/2001

escreve "Removedor de acentos"
escreve "Informe o nome do arquivo a remover"
le a

abre #1 a
remove "c:\$$$.$$$" &
abre #2 "c:\$$$.$$$" &

@loop
    le #1 l
    checa s
    se s <> 0 desvia @acabou

    chama @trocaTudo
    escreve #2 l

    desvia @loop

@acabou
fecha #1
fecha #2

abre #2 "c:\$$$.$$$"
remove a &
abre #1 a &

@loop2
    le #2 l
    checa s
    se s <> 0 desvia @acabou2
    escreve #1 l
    desvia @loop2
@acabou2

fecha #1
fecha #2

remove "c:\$$$.$$$" &
escreve "Acentos foram removidos"
termina mudo

******************************************

@trocaTudo
substitui l "á" "a"
substitui l "¢" "o"
substitui l "£" "u"
substitui l "¤" "n"
substitui l "¦" "a."
substitui l "»" "o."
substitui l "À" "A"
substitui l "Á" "A"
substitui l "Â" "A"
substitui l "Ã" "A"
substitui l "Ä" "A"
substitui l "ã" "a"
substitui l "Ç" "C"
substitui l "È" "E"
substitui l "É" "E"
substitui l "Ê" "E"
substitui l "Ì" "I"
substitui l "Í" "I"
substitui l "Î" "I"
substitui l "Ï" "I"
substitui l "Ñ" "N"
substitui l "Ò" "O"
substitui l "Ó" "O"
substitui l "Ô" "O"
substitui l "Õ" "O"
substitui l "Í" "I"
substitui l "Ù" "U"
substitui l "Ú" "U"
substitui l "Û" "U"
substitui l "Ü" "U"
substitui l "à" "à"
substitui l "á" "a"
substitui l "â" "a"
substitui l "ã" "a"
substitui l "ä" "a"
substitui l "ç" "c"
substitui l "è" "e"
substitui l "é" "e"
substitui l "ê" "e"
substitui l "ë" "e"
substitui l "ì" "i"
substitui l "í" "i"
substitui l "î" "i"
substitui l "ï" "i"
substitui l "ñ" "n"
substitui l "ò" "o"
substitui l "ó" "o"
substitui l "ô" "o"
substitui l "õ" "o"
substitui l "ö" "o"
substitui l "ù" "u"
substitui l "ú" "u"
substitui l "û" "u"
substitui l "ü" "u"
retorna
