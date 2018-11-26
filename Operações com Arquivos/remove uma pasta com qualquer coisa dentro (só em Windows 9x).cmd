seja c "command /c deltree -y "

escreve "Qual o nome do diretório a apagar? "
le d
se d = ""
    escreve "Desistiu"
    termina mudo
fim se

cor 4
escreve "Irei apagar "
bipa
escreve d
bipa

se d = "c:\" termina
se d = "c:" termina
se d = "c" termina
se d = "C:\" termina
se d = "C:" termina
se d = "C" termina

escreve "Para aceitar precione ENTER"
escreve "Para desistir precione ALT + F4"
le

dir troca "c:\"
concatena c d
executa c

escreve "A operação foi realizada com sucesso"

termina mudo
