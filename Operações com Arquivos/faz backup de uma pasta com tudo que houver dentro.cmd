cor 14
fundo 1
tela limpa

seja c "command /c xcopy "

escreve "Qual o nome do diretório origem: "
le a

se a = ""
escreve "Desistiu"
termina mudo
fim se

escreve "Qual o nome do diretório destino: "
le o

se o = ""
termina mudo
fim se

seja p "/d /f /h /s >backup.tmp"

concatena c a
concatena c " "
concatena c o
concatena c " "
concatena c p

cor 4
escreve "Aguarde que irei efetuar o backup"
bipa

executa c &
termina mudo
