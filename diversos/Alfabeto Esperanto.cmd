* Toca uma MP3 referente a letra do Esperanto teclada (precisa do
* Kurso3 www.cursodeesperanto.com.br)
* Autor: Tiago Melo Casal
* Em: 08/05/2004



Seja v "ABCDEFGHIJKLMNOPRSTUVZabcdefghijklmnoprstuvzÆØ¦¬ÞÝæø¶¼þý"
Escreve "Alfabeto Esperanto"
Escreve "Tecle as letras para ouvir a pronúncia em Esperanto"
Escreve "Tecle Escape para terminar"
@Tecle
Seja a "C:\Arquivos de programas\Esperanto\Kurso3\sonoj\lec01\"
Lê Mudo l &
Se l="#27" Termina Mudo
Seja p Pos l v
Se p="0" Desvia @Tecle

Se l="a" Concatena a l
Se l="b" Concatena a l
Se l="c" Concatena a l
Se l="d" Concatena a l
Se l="e" Concatena a l
Se l="f" Concatena a l
Se l="g" Concatena a l
Se l="h" Concatena a l
Se l="i" Concatena a l
Se l="j" Concatena a l
Se l="k" Concatena a l
Se l="l" Concatena a l
Se l="m" Concatena a l
Se l="n" Concatena a l
Se l="o" Concatena a l
Se l="p" Concatena a l
Se l="r" Concatena a l
Se l="s" Concatena a l
Se l="t" Concatena a l
Se l="u" Concatena a l
Se l="v" Concatena a l
Se l="z" Concatena a l
Se l="¦" Concatena a "hx"
Se l="¬" Concatena a "jx"
Se l="æ" Concatena a "cx"
Se l="ø" Concatena a "gx"
Se l="¶" Concatena a "hx"
Se l="¼" Concatena a "jx"
Se l="þ" Concatena a "sx"
Se l="ý" Concatena a "ux"

Concatena a ".mp3"
Seja t "Toca "
Concatena t """
Concatena t a
Concatena t """
Concatena a " &"
Cmd t
Desvia @Tecle
