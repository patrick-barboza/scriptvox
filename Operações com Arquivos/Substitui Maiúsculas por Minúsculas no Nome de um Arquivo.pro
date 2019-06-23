* Muda as letras de nome de arquivos de um diretório de maiúsculas para
* minúsculas
* Autor: Tiago Melo Casal
* Em: 10/05/2004



Busca o Dir "*.*"
Escreve "Digite o caminho do diretório, cujo os arquivos passarei seus"
Escreve "nomes de maiúsculas para minúsculas:"
Lê d
Se d="" Seja d o
Dir Troca d
Busca a "*.*"
@ProcuraArquivos
Se a="" Desvia @Termino
Seja t a
Chama @TrocaDeMaiúscPráMinúsc
Busca a Proximo
Desvia @ProcuraArquivos

@Termino
Escreve "Feito!"
Dir Troca o
Termina Mudo

@TrocaDeMaiúscPráMinúsc
Substitui t "A" "a"
Substitui t "Á" "á"
Substitui t "Â" "â"
Substitui t "Ã" "ã"
Substitui t "À" "à"
Substitui t "Ä" "ä"
Substitui t "B" "b"
Substitui t "C" "c"
Substitui t "Ç" "ç"
Substitui t "D" "d"
Substitui t "E" "e"
Substitui t "È" "è"
Substitui t "Ê" "ê"
Substitui t "Ë" "ë"
Substitui t "É" "é"
Substitui t "F" "f"
Substitui t "G" "g"
Substitui t "H" "h"
Substitui t "Ì" "ì"
Substitui t "I" "i"
Substitui t "Í" "í"
Substitui t "Ï" "ï"
Substitui t "Î" "î"
Substitui t "J" "j"
Substitui t "K" "k"
Substitui t "L" "l"
Substitui t "M" "m"
Substitui t "Ñ" "ñ"
Substitui t "N" "n"
Substitui t "Õ" "õ"
Substitui t "O" "o"
Substitui t "Ô" "ô"
Substitui t "Ö" "ö"
Substitui t "Ó" "ó"
Substitui t "Ò" "ò"
Substitui t "P" "p"
Substitui t "Q" "q"
Substitui t "R" "r"
Substitui t "S" "s"
Substitui t "T" "t"
Substitui t "Û" "û"
Substitui t "Ù" "ù"
Substitui t "Ü" "ü"
Substitui t "U" "u"
Substitui t "Ú" "ú"
Substitui t "V" "v"
Substitui t "W" "w"
Substitui t "X" "x"
Substitui t "Y" "y"
Substitui t "Ý" "ý"
Substitui t "Z" "z"
Substitui t "Æ" "æ"
Substitui t "Þ" "þ"
Substitui t "Ø" "ø"
Substitui t "¦" "¶"
Substitui t "¬" "¼"
Renomeia a t
Retorna
