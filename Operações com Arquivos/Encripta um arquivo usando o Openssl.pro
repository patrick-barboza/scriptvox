* Criptografador usando openssl
* Autor: Antonio Borges
* Em agosto/2010
escreve "Qual o nome do arquivo de entrada? "
le a
escreve "Qual o nome do arquivo de saída? "
le b
escreve "Qual a senha? "
le senha s
escreve "C - codificar ou D - decodificar? "
le o &
o := maiusc (o)
se o = "C"
x := "openssl enc -aes-256-cbc -salt"
senão
    x := "openssl enc -d -aes-256-cbc"
fim se
x := x + " -in "
x := x + a
x := x + " -out "
x := x + b
x := x + " -pass pass:"
x := x + s
executa x
termina "Operação terminada"
