* Programas juntos (limpador e trocador
* Remodificado por: Tiago Melo Casal
* Em: 26/02/2002



* Programa trocador de letras estranhas
* Autor: Antonio Borges
* Em 12/8/2001


escreve "Trocador de letras estranhas e juntador de linhas"
escreve
@novaTentativa
escreve "Informe o nome do arquivo a trocar"
lê a
se a="" escreve "Desistiu"
se a="" termina mudo
escreve "Informe o nome do arquivo que saira limpo (diferente do anterior)"
lê b
se b="" escreve "Desistiu"
se b="" termina mudo

abre #1 a
remove "c:\$$$.$$$" &
abre #2 "C:\$$$.$$$" &

@loop1
    lê #1 l
    checa s
   se s <> 0 desvia @acabou1

    chama @trocaTudo
    escreve #2 l

    desvia @loop1

@acabou1
fecha #1
fecha #2
remove b &
replica "C:\$$$.$$$" b


*** Rotinas do Programa Juntador
* Programa regenerador de linhas grandes do Edivox para o Word
* Autor: Antonio Borges
* Em 13/8/2001


abre #1 b
remove "C:\$$$.$$$" &
abre #2 "C:\$$$.$$$" &

seja z ""
seja n 0
@loop2
    lê #1 l
    checa s
    se s <> 0 desvia @acabou2

    se n <> 0 chama @juntaLinhas
    se l <> "" escreve #2 l &

    seja z l
    soma n 1
    desvia @loop2

@acabou2
    escreve #2
    fecha #1
    fecha #2

* Rotina geral de fim de programa

replica "C:\$$$.$$$" b

escreve "Operação concluída"
escreve
escreve "Deseja continuar a trocar caracteres estranhos e juntar linhas"
escreve "de outro arquivo?"
@pergunta
lê a &
se a="#0#66" chama @f8
se a="#0#66" desvia @pergunta
se a="#0#101" chama @Controlf8
se a="#0#101" desvia @pergunta
se a="s" desvia @novaTentativa


@termina
escreve "Fim"
termina mudo


***** Rotina para troca de sinais especiais e  brancos entre os textos

@trocaTudo
substitui l "  " " "
substitui l " )" ")"
substitui l " ," ","
substitui l " ." "."
substitui l " :" ":"
substitui l " ;" ";"
substitui l "&#8216" "("
substitui l "&#8217" ")"
substitui l "&Aacute;" "Á"
substitui l "&aacute;" "á"
substitui l "&acirc;" "â"
substitui l "&Acirc;" "Â"
substitui l "&agrave;" "à"
substitui l "&Agrave;" "À"
substitui l "&atilde;" "ã"
substitui l "&Atilde;" "Ã"
substitui l "&Ccedil;" "Ç"
substitui l "&ccedil;" "ç"
substitui l "&eacute;" "é"
substitui l "&Eacute;" "É"
substitui l "&ecirc;" "ê"
substitui l "&Ecirc;" "Ê"
substitui l "&iacute;" "í"
substitui l "&Iacute;" "Í"
substitui l "&nbsp" "-"
substitui l "&oacute;" "ó"
substitui l "&Oacute;" "Ó"
substitui l "&ocirc;" "ô"
substitui l "&Ocirc;" "Ô"
substitui l "&otilde;" "õ"
substitui l "&Otilde;" "Õ"
substitui l "&uacute;" "ú"
substitui l "&Uacute;" "Ú"
substitui l "&utrema;" "ü"
substitui l "&Utrema;" "Ü"
substitui l "( " "("
substitui l "=20" "
substitui l "=21" "!"
substitui l "=23" "#"
substitui l "=24" "$"
substitui l "=25" "%"
substitui l "=26" "&"
substitui l "=27" "'"
substitui l "=28" "("
substitui l "=29" ")"
substitui l "=2A" "*"
substitui l "=2B" "+"
substitui l "=2C" ","
substitui l "=2D" "-"
substitui l "=2E" "."
substitui l "=2F" "/"
substitui l "=30" "0"
substitui l "=31" "1"
substitui l "=32" "2"
substitui l "=33" "3"
substitui l "=34" "4"
substitui l "=35" "5"
substitui l "=36" "6"
substitui l "=37" "7"
substitui l "=38" "8"
substitui l "=39" "9"
substitui l "=3A" ":"
substitui l "=3B" ";"
substitui l "=3C" "<"
substitui l "=3D" "="
substitui l "=3E" ">"
substitui l "=3F" "?"
substitui l "=40" "@"
substitui l "=41" "A"
substitui l "=42" "B"
substitui l "=43" "C"
substitui l "=44" "D"
substitui l "=45" "E"
substitui l "=46" "F"
substitui l "=47" "G"
substitui l "=48" "H"
substitui l "=49" "I"
substitui l "=4A" "J"
substitui l "=4B" "K"
substitui l "=4C" "L"
substitui l "=4D" "M"
substitui l "=4E" "N"
substitui l "=4F" "O"
substitui l "=50" "P"
substitui l "=51" "Q"
substitui l "=52" "R"
substitui l "=53" "S"
substitui l "=54" "T"
substitui l "=55" "U"
substitui l "=56" "V"
substitui l "=57" "W"
substitui l "=58" "X"
substitui l "=59" "Y"
substitui l "=5A" "Z"
substitui l "=5B" "["
substitui l "=5C" "\"
substitui l "=5D" "]"
substitui l "=5E" "^"
substitui l "=5F" "_"
substitui l "=60" "`"
substitui l "=61" "a"
substitui l "=62" "b"
substitui l "=63" "c"
substitui l "=64" "d"
substitui l "=65" "e"
substitui l "=66" "f"
substitui l "=67" "g"
substitui l "=68" "h"
substitui l "=69" "i"
substitui l "=6A" "j"
substitui l "=6B" "k"
substitui l "=6C" "l"
substitui l "=6D" "m"
substitui l "=6E" "n"
substitui l "=6F" "o"
substitui l "=70" "p"
substitui l "=71" "q"
substitui l "=72" "r"
substitui l "=73" "s"
substitui l "=74" "t"
substitui l "=75" "u"
substitui l "=76" "v"
substitui l "=77" "w"
substitui l "=78" "x"
substitui l "=79" "y"
substitui l "=7A" "z"
substitui l "=7B" "{"
substitui l "=7C" "|"
substitui l "=7D" "}"
substitui l "=7E" "~"
substitui l "=7F" ""
substitui l "=80" "€"
substitui l "=80C7O" "ÇÃO"
substitui l "=81" ""
substitui l "=82" "‚"
substitui l "=83" "ƒ"
substitui l "=84" "„"
substitui l "=85" "…"
substitui l "=86" "†"
substitui l "=87" "‡"
substitui l "=88" "ˆ"
substitui l "=89" "‰"
substitui l "=8A" "Š"
substitui l "=8B" "‹"
substitui l "=8C" "Œ"
substitui l "=8D" ""
substitui l "=8E" ""
substitui l "=8F" ""
substitui l "=90" ""
substitui l "=91" "‘"
substitui l "=92" "’"
substitui l "=93" "“"
substitui l "=94" "”"
substitui l "=95" "•"
substitui l "=96" "–"
substitui l "=97" "—"
substitui l "=98" "˜"
substitui l "=99" "™"
substitui l "=9A" "š"
substitui l "=9B" "›"
substitui l "=9C" "œ"
substitui l "=9D" ""
substitui l "=9E" ""
substitui l "=9F" "Ÿ"
substitui l "=A0" " "
substitui l "=A1" "¡"
substitui l "=A2" "¢"
substitui l "=A3" "£"
substitui l "=A4" "¤"
substitui l "=A5" "¥"
substitui l "=A6" "¦"
substitui l "=A7" "§"
substitui l "=A8" "¨"
substitui l "=A9" "©"
substitui l "=AA" "ª"
substitui l "=AB" "«"
substitui l "=AC" "¬"
substitui l "=AD" "­"
substitui l "=AE" "®"
substitui l "=AF" "¯"
substitui l "=B0" "°"
substitui l "=B1" "±"
substitui l "=B2" "²"
substitui l "=B3" "³"
substitui l "=B4" "´"
substitui l "=B5" "µ"
substitui l "=B6" "¶"
substitui l "=B7" "·"
substitui l "=B8" "¸"
substitui l "=B9" "¹"
substitui l "=BA" "º"
substitui l "=BB" "»"
substitui l "=BC" "¼"
substitui l "=BD" "½"
substitui l "=BE" "¾"
substitui l "=BF" "¿"
substitui l "=C0" "À"
substitui l "=C1" "Á"
substitui l "=C2" "Â"
substitui l "=C3" "Ã"
substitui l "=C4" "Ä"
substitui l "=C5" "Å"
substitui l "=C6" "Æ"
substitui l "=C7" "Ç"
substitui l "=C8" "È"
substitui l "=C9" "É"
substitui l "=CA" "Ê"
substitui l "=CB" "Ë"
substitui l "=CC" "Ì"
substitui l "=CD" "Í"
substitui l "=CE" "Î"
substitui l "=CF" "Ï"
substitui l "=D0" "Ğ"
substitui l "=D1" "Ñ"
substitui l "=D2" "Ò"
substitui l "=D3" "Ó"
substitui l "=D4" "Ô"
substitui l "=D5" "Õ"
substitui l "=D6" "Ö"
substitui l "=D7" "×"
substitui l "=D8" "Ø"
substitui l "=D9" "Ù"
substitui l "=DA" "Ú"
substitui l "=DB" "Û"
substitui l "=DC" "Ü"
substitui l "=DD" "İ"
substitui l "=DE" "Ş"
substitui l "=DF" "ß"
substitui l "=E0" "à"
substitui l "=E1" "á"
substitui l "=E2" "â"
substitui l "=E3" "ã"
substitui l "=E4" "ä"
substitui l "=E5" "å"
substitui l "=E6" "æ"
substitui l "=E7" "ç"
substitui l "=E8" "è"
substitui l "=E9" "é"
substitui l "=EA" "ê"
substitui l "=EB" "ë"
substitui l "=EC" "ì"
substitui l "=ED" "í"
substitui l "=EE" "î"
substitui l "=EF" "ï"
substitui l "=F0" "ğ"
substitui l "=F1" "ñ"
substitui l "=F2" "ò"
substitui l "=F3" "ó"
substitui l "=F4" "ô"
substitui l "=F5" "õ"
substitui l "=F6" "ö"
substitui l "=F7" "÷"
substitui l "=F8" "ø"
substitui l "=F9" "ù"
substitui l "=FA" "ú"
substitui l "=FB" "û"
substitui l "=FC" "ü"
substitui l "=FD" "ı"
substitui l "=FE" "ş"
substitui l "=FF" "ÿ"
substitui l "„" "ã"
substitui l "Á„" "çã"
substitui l "aao" "aão"
substitui l "bao" "bão"
substitui l "cao" "cão"
substitui l "çao" "ção"
substitui l "çào" "ção"
substitui l "çdo" "ção"
substitui l "çoes" "ções"
substitui l "‡s" "às"
substitui l "dao" "dão"
substitui l "dc" "de"
substitui l "does" "dões"
substitui l "È" "é"
substitui l "eao" "eão"
substitui l "eoes" "eões"
substitui l "fao" "fão"
substitui l "foes" "fões"
substitui l "gao " "gão "
substitui l "gao," "gão,"
substitui l "goes" "gões"
substitui l "hao " "hão "
substitui l "hao," "hão,"
substitui l "hoes" "hões"
substitui l "Ì" "í"
substitui l "¡" "í"
substitui l "‹" "Í"
substitui l "iao" "ião"
substitui l "ioes" "iões"
substitui l "jao" "jão"
substitui l "joao" "joão"
substitui l "Joao" "João"
substitui l "joes" "jões"
substitui l "lao " "lão "
substitui l "lao," "lão,"
substitui l "loes" "lões"
substitui l "mao " "mão "
substitui l "mao," "mão,"
substitui l "maos" "mãos"
substitui l "moes" "mões"
substitui l "nao" "não"
substitui l "ò" """
substitui l "pao " "pão "
substitui l "pao," "pão,"
substitui l "rao " "rão "
substitui l "rao," "rão,"
substitui l "roes" "rões"
substitui l "sao" "são"
substitui l "tao" "tão"
substitui l "toes" "tões"
substitui l "–" "-"
substitui l "Ù" "ô"
substitui l "Û" "ó"
substitui l "uao" "üão"
substitui l "vao" "vão"
substitui l "voes" "vões"
substitui l "ı" "ô"
substitui l "zao" "zão"
substitui l "zoes" "zões"
substitui l "~" "
substitui l "Æ" "ã"
substitui l "·" "á"
substitui l "¶" "ã"
substitui l "‘" "a"
substitui l "«" "Ç"
substitui l "Ÿ" "Ó"
substitui l "ğ." "."
retorna


*** rotina de junção de linhas ***

@juntaLinhas
    se n = 1 retorna

    se z="" desvia @pulaLinha
    se l="" desvia @pulaLinha

    copia x l 1 1
    se x=" " desvia @pulaLinha

    escreve #2 " " &
    retorna

@pulaLinha
    escreve #2
    retorna


*** Rotinas Hora e Data ***


@f8
seja s hora
copia h s 1 2
concatena h " horas e "
copia m s 4 5
concatena m "minutos"
concatena h m
escreve h
retorna

@Controlf8
seja d dia
seja t data
concatena d "  "
copia r t 1 2
concatena r " de "
concatena d r
copia m t 4 5
substitui m "01" "janeiro de "
substitui m "02" "fevereiro de "
substitui m "03" "março de "
substitui m "04" "abril de "
substitui m "05" "maio de "
substitui m "06" "junho de "
substitui m "07" "julho de "
substitui m "08" "agosto de "
substitui m "09" "setembro de "
substitui m "10" "outubro de "
substitui m "11" "novembro de "
substitui m "12" "dezembro de "
concatena d m
copia n t 7 10
concatena d n
escreve d
retorna
