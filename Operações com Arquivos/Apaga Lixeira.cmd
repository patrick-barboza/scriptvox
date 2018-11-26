cor 14
fundo 1
tela limpa

seja c 0
dir troca "c:\winvox\lixeira"
busca a "*.*"

se a = ""
    escreve "Lixeira vazia"
    termina mudo
fim se

chama @loopConta

escreve "Confirma a exclusão de "&
escreve c&
se c = 1
    escreve " arquivo "
Senão
    escreve " arquivos "
fim se
escreve "da lixeira?"&
le o&
seja o MAIUSC o
se o <> "S"
    escreve "Desistiu"&
    termina mudo
fim se

seja c 0
busca a "*.*"
chama @loopApaga

escreve "Total de arquivos removidos: "&
escreve c
termina mudo

@loopConta
    se a = "" retorna
    soma c 1
    busca a PROXIMO
    desvia @loopConta

@loopApaga
    se a = "" retorna
    escreve mudo a
    remove a &
    soma c 1
    busca a PROXIMO
    desvia @loopApaga
