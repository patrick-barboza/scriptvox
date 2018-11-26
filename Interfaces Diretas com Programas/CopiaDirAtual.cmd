*           Copia todo conteúdo do diretório de trabalho atual.
*           Só sobrescreve o de mesmo nome se o arquivo for mais novo.
*           Autor: Neno Henrique Albernaz
*           Em20de maio de 2007

cor 14
fundo 1
tela limpa

escreve "Vou copiar tudo do diretório "
bipa
busca i DIR
escreve i
bipa

escreve "Qual o nome do diretório destino: "
le d
se d = ""
    escreve "Desistiu"
    termina mudo
fim se

*seja c "command /c xcopy "
seja c "xcopy "
concatena c i
concatena c "\*.* "
concatena c d
concatena c " /d /s /e /c /q /h /i /k /y"

cor 4
escreve "Aguarde"
bipa

executa c &
termina mudo
