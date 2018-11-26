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
le o
seja o maiusc o
se o = "C"
    seja x "openssl enc -aes-256-cbc -salt"
senão
    seja x "openssl enc -d -aes-256-cbc"
fim se
concatena x " -in "
concatena x a
concatena x " -out "
concatena x b
concatena x " -pass pass:"
concatena x s
executa x
escreve "Operação terminada"
termina
