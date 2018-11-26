* Ativa comando para compilação em Pascal
* Autor: Bernard
* Em 27/11/2000

escreve "Qual o nome do arquivo fonte : "
le f
seja c "command /c \bp7\bin\bpc -cw -b -uc:\winvox\tradutor "
concatena c f
concatena c "> \bp7\out.lst"
executa c
chama @checaCompilacao
termina

@checaCompilacao
abre #1 "\bp7\out.lst"
* le o arquivo guardando sempre as tres ultimas linhas
@loop
    seja a b
    seja b c
    seja c l
    le #1 l
    checa s
    se s = 0 desvia @loop

seja c trim c
se c <> "^" desvia @compilouOK
escreve "Houve um erro de compilação na linha a seguir"
espera 1
escreve b
espera 1
escreve "Diagnóstico e local do erro"
espera 1
escreve a
retorna

@compilouOK
escreve "Compilou OK"
retorna